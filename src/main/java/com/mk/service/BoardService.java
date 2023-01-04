package com.mk.service;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.net.URLEncoder;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.UUID;
import java.util.zip.ZipEntry;
import java.util.zip.ZipOutputStream;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.mk.service.BoardService;
import com.mk.dao.BoardDAO;
import com.mk.dto.BoardDTO;
import com.mk.dto.MemberDTO;
import com.mk.dto.ReplyDTO;

public class BoardService {

	private static BoardDAO dao = BoardDAO.getInstance();
	private static String UploadPath="C://upload/"; //File.seperator
	
	//싱글톤 패턴
	private static BoardService instance=null;
	public static Object passwordEncoder;
	public static BoardService getInstance() {
		if(instance==null)
			instance = new BoardService();
		return instance;
	}
	private BoardService() {}
	
	
	public List<BoardDTO> getBoardList(int start,int end)
	{
		
		return dao.Select(start, end);
	}
	
	public int getTotalCnt() {
		return dao.getTotalCount();
	}
	
	public boolean PostBoard(BoardDTO dto)
	{
		return dao.Insert(dto);
	}
	
	//파일포함 글쓰기 서비스
	public boolean PostBoard(BoardDTO dto,ArrayList<Part> parts)
	{
		//업로드 처리
		//1) 하위폴더명(Email/2022-07-14/파일쌓이기~)
		//2) 기본업로드Path+하위폴더명
		String email=dto.getWriter();
		Date now = new Date(); 
		//날짜포맷변경하기 : https://junghn.tistory.com/entry/JAVA-%EC%9E%90%EB%B0%94-%EB%82%A0%EC%A7%9C-%ED%8F%AC%EB%A7%B7-%EB%B3%80%EA%B2%BD-%EB%B0%A9%EB%B2%95SimpleDateFormat-yyyyMMdd
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd"); 
		String date = simpleDateFormat.format(now); 
		
		//게시물 번호받기
		String no = String.valueOf(dao.getLastNo());
		
		String subPath=email+"/"+date+"/"+no;
		
		//3) File클래스 경로 잡고
		File RealPath= new File(UploadPath+subPath);
		
		//4) 하위폴더 생성
		if(!RealPath.exists())
			RealPath.mkdirs();
		
		
		//파일명 저장위한 StringBuffer 추가
		StringBuffer totalFilename = new StringBuffer();
		//파일사이즈 저장위한 StringBuffer 추가
		StringBuffer totalFilesize = new StringBuffer();
		
		
		//5) Parts의 각 Part 를 write()
		System.out.println("Parts : "+ parts.size());
		for(Part part : parts)
		{
			if(part.getName().equals("files"))
			{
				String FileName=getFileName(part); //파일이름 가져오기

	
				
				//파일명 ,확장자명 구분하기
				
				 
				int start=FileName.lastIndexOf(".");		//확장자구하기 위한 시작idx
				int end=FileName.length();					//확장자구하기 위한 끝idx
				String ext=FileName.substring(start,end);	//파일명잘라내기(확장자만)
				FileName = FileName.substring(0,start);	//파일명잘라내기(확장자제외)
				
				//파일명 + _UUID + 확장자
				FileName=FileName+"_"+UUID.randomUUID().toString()+ext;
				
				//DTO저장위한 파일명 buffer에추가
				totalFilename.append(FileName+";");
				//DTO저장위한 파일사이즈 buffer에추가				 
				totalFilesize.append(String.valueOf(part.getSize())+";");
				
				
				
				 try {
					part.write(RealPath+"/"+FileName); //파일업로드
				} catch (IOException e) {	 
					e.printStackTrace();
				}
			}
		}
		
		//Dto에 총파일명과 총파일사이즈를 저장
		dto.setFilename(totalFilename.toString());
		dto.setFilesize(totalFilesize.toString());
		
		//Dao 파일명전달 
		return dao.Insert(dto);
	}
	
	//파일명추출(PostBoard(dto,parts)가 사용)
	private String getFileName(Part part)
	{
		String contentDisp=part.getHeader("content-disposition");
		System.out.println(contentDisp);
		String[] arr = contentDisp.split(";"); // 배열화 		
		String Filename=arr[2].substring(11,arr[2].length()-1);	
		return Filename;
	}
	
	
	//게시물 하나 가져오기
	public BoardDTO getBoardDTO(int no)
	{
		return dao.Select(no);
	}
	
	
	//단일파일 다운로드
	public boolean download
	(		String filename,
			HttpServletRequest req,
			HttpServletResponse resp
	)
	{	
		//파일명,	//등록날짜 //이메일계정 가져오기
		HttpSession session = req.getSession();
		BoardDTO dto = (BoardDTO)session.getAttribute("dto");
		
		String email = dto.getWriter();
		String regdate = dto.getRegdate();
		String no = String.valueOf(dto.getNo());
		regdate = regdate.substring(0,10);
		
		 
		//1 경로설정
		String downdir="c://upload";	
		String filepath= downdir+"/"+email+"/"+regdate+"/"+no+"/"+filename;
		 
		//2 헤더설정
		resp.setContentType("application/octet-stream");


		//3 문자셋 설정
		try {
			
			filename=URLEncoder.encode(filename,"utf-8").replaceAll("\\+", "%20");
			resp.setHeader("Content-Disposition", "attachment; fileName="+filename);
		
			
			//04스트림형성(다운로드 처리)
			FileInputStream fin = new FileInputStream(filepath);
			ServletOutputStream bout=resp.getOutputStream();
			
			int read=0;
			byte[] buff = new byte[4096];
			while(true)
			{
				read=fin.read(buff,0,buff.length);		 
				if(read==-1)	 
					break;		 		
				bout.write(buff,0,read);	 
			}
			bout.flush();	
			bout.close();	
			fin.close();
			
			return true;
		
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	
		return false;
	}
	
	//ZIP으로 압축 다운로드
	public boolean downloadAllZIP(BoardDTO dto,HttpServletResponse resp)
	{
		String id = UUID.randomUUID().toString();
		//압축파일 경로
		String zipFileName="C://Users/Administrator/Downloads/ALL_"+id+".zip";
		
		
		//파일명,	//등록날짜 //이메일계정 가져오기
		String email = dto.getWriter();
		String regdate = dto.getRegdate();
		String no = String.valueOf(dto.getNo());
		regdate = regdate.substring(0,10);
		
		 
		//1 경로설정
		String downdir="c://upload";	
		String subpath= downdir+"/"+email+"/"+regdate+"/"+no+"/";
		
		//2 파일이름 리스트
		String filelist[] = dto.getFilename().split(";");

		 
		//3 헤더설정
	
		resp.setContentType("application/zip");
		resp.setHeader("Content-Disposition", "attachment; filename=ALL_"+id+".zip");
		

		try {
			//프로그램 -> 파일방향 ZIPStream 생성 
			ZipOutputStream zout = new ZipOutputStream(new FileOutputStream(zipFileName));
			
			for(int i=0;i<filelist.length;i++)
			{
				//파일->프로그램 inStream 생성
				FileInputStream fin = new FileInputStream(subpath+filelist[i]);
				
				//ZipEntry 생성,zout에 전달
				ZipEntry ent = new ZipEntry(filelist[i]);
				zout.putNextEntry(ent);
				
				int read=0;
				byte buff[] = new byte[4096];
				while(true)
				{
					read=fin.read(buff,0,buff.length);
					if(read==-1)
						break;
					zout.write(buff,0,read);
					
				}
				zout.closeEntry(); //엔트리 단위 종료
				fin.close();	//파일 input 스트림 종료
				
			}
			zout.flush();
			zout.close();	//zipoutput스트림 종료
			
		
			
			
			return true;
		
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	
		return false;

	}
	
	
	
	public void CountUp(int no) {
		dao.CountUp(no);
	}

	
	public static boolean UpdateBoard(BoardDTO dto) {
		return dao.Update(dto);
	}
	
	
	public boolean BoardRemove(BoardDTO dto) {
		
		//첨부파일 경로 확인 
		if(dto.getFilename()!=null)
		{
			String email = dto.getWriter();
			String regdate = dto.getRegdate();
			regdate = regdate.substring(0,10);
			String no = String.valueOf(dto.getNo());
			
			String dirpath = UploadPath+email+"/"+regdate+"/"+no;
			//첨부파일 폴더 경로
			File dir = new File(dirpath);
			//폴더 경로로 부터 파일리스트 가져오기
			File [] filelist = dir.listFiles();
			//첨부파일 모두 삭제
			for(File filename : filelist)
			{
				filename.delete();
			}
			//첨부파일 폴더 삭제 
			dir.delete();
		}
		
		return dao.Delete(dto);
	}
	
	//댓글달기
	public boolean replypost(ReplyDTO rdto) {
		return dao.replypost(rdto);
	}
	
	//댓글가져오기
	public ArrayList<ReplyDTO> getReplylist(int bno){
		return dao.getReplylist(bno);
	}
	
	public int getTotalReplyCnt(int bno) {
		return dao.getTotalReplyCnt(bno);
	}
	public static MemberDTO MemberSearch(String email) {
		// TODO Auto-generated method stub
		return null;
	}
	public static boolean MemberInsert(MemberDTO dto) {
		// TODO Auto-generated method stub
		return false;
	} 
	
}


