package com.mk.service;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
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

import com.mk.dao.BoardDAO;
import com.mk.dto.BoardDTO;
import com.mk.dto.MemberDTO;
import com.mk.dto.ReplyDTO;

public class BoardService {
	
	private static BoardDAO dao = BoardDAO.getInstance();
	private static String UploadPath = "C://upload/"; //File.seperator
	
	//싱글톤 패턴
	private static BoardService instance = null;
	public static Object passwordEncoder;
	public static BoardService getInstance() {
		if(instance==null)
			instance = new BoardService();
		return instance;
	}
	private BoardService() {} //private으로 생성자를 만들어 외부에서의 생성을 막음!
	
	public static List<BoardDTO> getBoardList(int start, int end)
	{
		return dao.Select(start,end);
	}
	public static int getTotalCnt() {
		return dao.getTotalCount();
	}
	public static boolean PostBoard(BoardDTO dto)
	{
		return dao.Insert(dto);
	}
	//파일포함 글쓰기 service
	
	//불린(Boolean)은 참과 거짓을 의미하는 데이터 타입으로 bool이라고도 부른다. 불린은 정수나 문자와 같이 하나의 데이터 타입인데, 
	//참을 의미하는 true와 거짓을 의미하는 false 두 가지의 값을 가지고 있다.
	public boolean PostBoard(BoardDTO dto,ArrayList<Part> parts)
	{
		//  upload
		//1.하위폴더명(Email/2022-08-12/파일쌓이기)
		//2.기본업로드Path+하위폴더명
		String email=dto.getWriter();
		Date now = new Date();
		
		//날짜 포멧 변경
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-mm-dd");
		String date = simpleDateFormat.format(now);
		
		//게시물 번호받기
		String no = String.valueOf(dao.getLastNo());
		String subPath = email+"/"+date+"/"+no;
		
		//3.File class 경로를 잡고
		File RealPath = new File(UploadPath+subPath);
		
		//4.하위폴더를 생성한다
		if(!RealPath.exists())
			RealPath.mkdirs();
		
		//파일명을 저장하기 위한 StringBuffer를 추가
		StringBuffer totalFilename = new StringBuffer();
		
		//Filesize를 저장하기 위한 StringBuffer를 추가
		StringBuffer totalFilesize = new StringBuffer();
		
		//5.Parts의 각 Part를 write()한다.
		System.out.println("Parts : " + parts.size());
		for(Part part : parts)
		{
			if(part.getName().equals("files"))
			{
				String FileName = getFileName(part);//Filename가져오기
			
		//파일명과 확장자명을 구분해준다.
		int start = FileName.lastIndexOf(".");			//확장자를 구하기위한 시작 index
		int end = FileName.length();					//확장자를 구하기위한 끝 index
		String ext = FileName.substring(start, end);	//FileName 잘라내기 (확장자만!)
		FileName = FileName.substring(0, start);		//FileName 잘라내기 (확장자제외!)
				
		//파일명 + _UUID + 확장자
		FileName = FileName+"_"+UUID.randomUUID().toString()+ext;
				
		//DTO저장을 위해 파일명 Buffer에 추가한다.
		totalFilename.append(FileName+";");		
				
		//DTO저장을 위해 Filesize를 Buffer에 추가한다.
		totalFilesize.append(String.valueOf(part.getSize())+";");
		
		try {
			part.write(RealPath+"/"+FileName); //File upload!
		} catch (Exception e) {
			e.printStackTrace(); 
		}
		
		
			}
		}		
		//DTO에 총 파일명과 총파일 사이즈를 저장한다.
		dto.setFilename(totalFilename.toString());
		dto.setFilesize(totalFilesize.toString());
		
		//DAO 파일명을 전달하고
		return dao.Insert(dto);
	}
	
		//파일명을 추출한다(PostBoard(dto,parts)가 사용)
		private String getFileName(Part part)
		{
			String contentDisp = part.getHeader("content-disposition");
			System.out.println(contentDisp);
			String[] arr = contentDisp.split(";"); //배열화시키는작업!
			String Filename = arr[2].substring(11,arr[2].length()-1);
			return Filename;
		}
		
		//게시물을 하나 가져온다
		public static BoardDTO getBoardDTO(int no)
		{
			return dao.Select(no);
		}
		
		//단일파일 다운로드코드
		public static boolean download
		(
			String filename,
			HttpServletRequest req,
			HttpServletResponse resp
		)
		{
			
		//파일명, 등록날짜, 이메일 계정 가져오기.
		HttpSession session = req.getSession();
		BoardDTO dto = (BoardDTO)session.getAttribute("dto");
		
		String no = String.valueOf(dto.getNo());
		String regdate = dto.getRegdate();
		String email = dto.getWriter();
		regdate = regdate.substring(0,10);
		
		//1.경로설정
		String downdir = "c://upload";
		String filepath = downdir+"/"+email+"/"+regdate+"/"+no+"/"+filename;
		
		//2.헤더설정
		resp.setContentType("application/octet-stream");
		
		//3.문자셋설정
		try {
			filename = URLEncoder.encode(filename,"utf-8").replaceAll("\\", "%20");
			resp.setHeader("Content-Disposition", "attachment="+filename);
		
		//4.stream형성(다운로드 처리)
		FileInputStream fin = new FileInputStream(filepath);
		ServletOutputStream bout = resp.getOutputStream();
		
		int read = 0;
		byte[] buff = new byte[4096];
		while(true)
		{
			read = fin.read(buff,0,buff.length);
			if(read==-1)
				break;
			bout.write(buff,0,read);
		}
		bout.flush();
		bout.close();
		fin.close();
		
		return true;
		
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return false;
		
	}	
		//ZIP으로 압축하여 다운로드 하는 코드
		public static boolean downloadAllZIP(BoardDTO dto, HttpServletResponse resp)
		{
			String id = UUID.randomUUID().toString();
		
			//압축파일 경로
			String zipFileName = "c://Users/Adminstrator/Downloads/ALL_"+id+".zip";
			
			//파일명, 등록날짜, 이메일 계정 가져오기
			String email = dto.getWriter();
			String regdate = dto.getRegdate();
			String no = String.valueOf(dto.getNo());
			regdate = regdate.substring(0,10);
			
			//1.경로설정
			String downdir = "c://upload";
			String subpath = downdir+"/"+email+"/"+regdate+"/"+no+"/";
			
			//2.파일이름 리스트
			String filelist[] = dto.getFilename().split(";");
			
			//3.헤더설정
			resp.setContentType("application/zip");
			resp.setHeader("Content-Disposition", "attachment; filename=ALL_"+id+".zip");
			
			try {
				//프로그램 -> 파일 방향으로 ZIPStream생성!
				ZipOutputStream zout = new ZipOutputStream(new FileOutputStream(zipFileName));
				
				for(int i=0;i<filelist.length;i++)
				{
					//파일 -> 프로그램 방향으로 inStream생성!
					FileInputStream fin = new FileInputStream(subpath+filelist[i]);
					
					//ZIPEntry생성, zout에 전달!
					ZipEntry ent = new ZipEntry(filelist[i]);
					zout.putNextEntry(ent);
					
					int read = 0;
					byte buff[] = new byte[4096];
					while(true)
					{
						read = fin.read(buff,0,buff.length);
						if(read==-1)
							break;
						zout.write(buff,0,read);
					}
					zout.closeEntry();	//엔트리 단위를 종료
					fin.close();		//file input stream 종료
				}
				zout.flush();
				zout.close();	//zip output stream 종료 
			
			return true;
				
			} catch (Exception e) {
				e.printStackTrace();
			}
			return false;
			
			
			}
			public static void CountUp(int no) {
				dao.CountUp(no);
			}
			
			public boolean UpdateBoar(BoardDTO dto) {
				return dao.Update(dto);
			}
			
			public static boolean BoardRemove(BoardDTO dto) {
				//첨부파일 경로를 확인한다.
				if(dto.getFilename()!=null)
				{
					String email = dto.getWriter();
					String regdate = dto.getRegdate();
					regdate = regdate.substring(dto.getNo());
					
					String dirpath = UploadPath+email+"/"+regdate+"/";	// +no; 
					
					//첨부파일 폴더 경로
					File dir = new File(dirpath);
					
					//폴더 경로로 부터 파일리스트 가져오기
					File [] filelist = dir.listFiles();
					
					//첨부파일 모두 삭제
					for(File filename : filelist)
					{
						filename.delete();
					}
			
					//첨부파일 폴더삭제
					dir.delete();
				}
				return dao.Delete(dto);
			}
			
			//댓글달기
			public static boolean replypost(ReplyDTO rdto) {
				return dao.replypost(rdto);
			}
			
			//댓글 가져오기
			public static ArrayList<ReplyDTO> getReplylist(int bno){
				return dao.getReplylist(bno);
			}
			public static int getTotalReplyCnt(int bno) {
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
			public static void MemberUpdate(MemberDTO dto) {
				// TODO Auto-generated method stub
				
			}
			public static void UpdateBoard(BoardDTO dto) {
				// TODO Auto-generated method stub
				
			}
			
}	