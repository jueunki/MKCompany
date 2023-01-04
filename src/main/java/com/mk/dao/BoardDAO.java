package com.mk.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.mk.dto.BoardDTO;
import com.mk.dto.ReplyDTO;

public class BoardDAO {
	// DB Connection
	private String url = "jdbc:oracle:thin:@localhost:1521:xe";
	private String id = "admin";
	private String pw = "1234";

	private Connection conn = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;

	// singletone patten
	private static BoardDAO instance;

	public static BoardDAO getInstance() {
		if (instance == null);
		instance = new BoardDAO();
		return instance;
	}

	private BoardDAO() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn = DriverManager.getConnection(url, id, pw);
			System.out.println("DBConnection..");
		} catch (Exception e) {e.printStackTrace();}
	}

	// start Page, end Page 받아서 조회한다.
	public List<BoardDTO> Select(int start, int end)
	{
		
		ArrayList<BoardDTO> list = new ArrayList();
		BoardDTO dto = null;
		try {
			
			String sql=
			"select rn, no, title, content, writer, regdate,pwd,count,ip,filename,filesize"
			+ " from"
			+ "("
			+ "    select /*+ INDEX_DESC (tbl_board PK_NO) */"
			+ "    rownum rn, no, title, content, writer, regdate,pwd,count,ip,filename,filesize"
			+ "    from tbl_board where rownum<=?"
			+ ")"
			+ " where rn>=?";
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, end); //마지막 rownum
			pstmt.setInt(2, start); //시작 rownum
			rs=pstmt.executeQuery();
			
			while(rs.next())
			{
				dto=new BoardDTO();
				dto.setNo(rs.getInt("no"));
				dto.setTitle(rs.getString("title"));
				dto.setContent(rs.getString("content"));
				dto.setWriter(rs.getString("writer"));
				dto.setRegdate(rs.getString("regdate"));
				dto.setPwd(rs.getString("pwd"));
				dto.setIp(rs.getString("ip"));
				dto.setFilename(rs.getString("filename"));
				dto.setFilesize(rs.getString("filesize"));
				dto.setCount(rs.getInt("count"));
				list.add(dto);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally{
			try {rs.close();}catch(Exception e) {e.printStackTrace();}
			try {pstmt.close();}catch(Exception e) {e.printStackTrace();}
		}
		return list;
	}
	
	//모든 게시물 개수 조회
	public int getTotalCount()
	{
		int result=0;
		try {
			
			pstmt = conn.prepareStatement("select count(*) from tbl_board");
			rs =pstmt.executeQuery();
			rs.next();
			result = rs.getInt(1);
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally{
			try {rs.close();}catch(Exception e) {e.printStackTrace();}
			try {pstmt.close();}catch(Exception e) {e.printStackTrace();}
		}
		return result;
	}
	
	
	public boolean Insert(BoardDTO dto)
	{
		
		try {
		
			pstmt = conn.prepareStatement("insert into tbl_board values(tbl_board_seq.NEXTVAL,?,?,?,sysdate,?,0,?,?,?)");
			pstmt.setString(1, dto.getTitle());
			pstmt.setString(2, dto.getContent());
			pstmt.setString(3, dto.getWriter());
			pstmt.setString(4, dto.getPwd());
			pstmt.setString(5, dto.getIp());
			pstmt.setString(6, dto.getFilename());
			pstmt.setString(7, dto.getFilesize());
			
			
			int result = pstmt.executeUpdate();
			if(result>0)
				return true;
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally{
			
			try{pstmt.close();}catch(Exception e) {e.printStackTrace();}
			
		}
		return false;
		
	}
	
	
	public BoardDTO Select(int No)
	{
		
		BoardDTO dto = new BoardDTO();
		try {
		
			pstmt=conn.prepareStatement("select * from tbl_board where no=?");
			pstmt.setInt(1, No);
			rs = pstmt.executeQuery();
			if(rs.next())
			{
				dto.setWriter(rs.getString("writer"));
				dto.setContent(rs.getString("content"));
				dto.setTitle(rs.getString("title"));
				dto.setPwd(rs.getString("pwd"));
				dto.setNo(rs.getInt("no"));
				dto.setIp(rs.getString("ip"));
				dto.setFilename(rs.getString("filename"));
				dto.setFilesize(rs.getString("filesize"));
				dto.setCount(rs.getInt("count"));
				dto.setRegdate(rs.getString("regdate"));
			}
	
		}catch(Exception e) {
			e.printStackTrace();
		}finally{
			try {rs.close();}catch(Exception e) {e.printStackTrace();}
			try {pstmt.close();}catch(Exception e) {e.printStackTrace();}
		}
		return dto;
	}
	
	//마지막 No 확인 
	public int getLastNo()
	{
		try 
		{
			pstmt=conn.prepareStatement("select last_number from user_sequences where sequence_name='TBL_BOARD_SEQ'");
			rs = pstmt.executeQuery();
			rs.next();
			int no = rs.getInt(1); //no값
			
			return no;
		}catch(Exception e) {
				e.printStackTrace();
		}finally{
			try {rs.close();}catch(Exception e) {e.printStackTrace();}
			try {pstmt.close();}catch(Exception e) {e.printStackTrace();}
		}			
		return 0;
	}

	
	//카운트 증가 
	public void CountUp(int no)
	{
		try {
			
			pstmt = conn.prepareStatement("update tbl_board set count=count+1 where no=?");
			pstmt.setInt(1, no);
			pstmt.executeUpdate();
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally{
			try {pstmt.close();}catch(Exception e) {e.printStackTrace();}
		}
	}
	
	public boolean Update(BoardDTO dto)
	{
		
		try {
		
			pstmt = conn.prepareStatement("update tbl_board set title=?,content=? where no=?");
			pstmt.setString(1, dto.getTitle());
			pstmt.setString(2, dto.getContent());
			pstmt.setInt(3, dto.getNo());
			int result=pstmt.executeUpdate();
			if(result>0)
				return true;
		
		}catch(Exception e) {
			e.printStackTrace();
		}finally{
			try {pstmt.close();}catch(Exception e) {e.printStackTrace();}
		}
		return false;
		
	}
	
	
	
	public boolean Delete(BoardDTO dto)
	{
		
		try {
			//DB삭제
			pstmt = conn.prepareStatement("delete from tbl_board where no=?");
			pstmt.setInt(1,dto.getNo());
			int result = pstmt.executeUpdate();
			if(result>0)
				return true;
		}catch(Exception e) {
			e.printStackTrace();
		}finally{
			try {pstmt.close();}catch(Exception e) {e.printStackTrace();}
		}
		return false;
	}
	
	
	//댓글달기 
	public boolean replypost(ReplyDTO rdto) {
		try {
			
			pstmt = conn.prepareStatement("insert into tbl_reply values(REPLY_SEQ.NEXTVAL,?,?,?,sysdate)");
			pstmt.setInt(1, rdto.getBno());
			pstmt.setString(2, rdto.getWriter());
			pstmt.setString(3, rdto.getContent());
			int result=pstmt.executeUpdate();
			if(result>0)
				return true;
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally{
			try {pstmt.close();}catch(Exception e) {e.printStackTrace();}
		}
		return false;
		
	}
	
	//댓글가져오기
	public ArrayList<ReplyDTO> getReplylist(int bno){
		
		ArrayList<ReplyDTO> list = new ArrayList();
		ReplyDTO dto=null;
		try {
			pstmt = conn.prepareStatement("select * from tbl_reply where bno=? order by rno desc");
			pstmt.setInt(1, bno);
			rs=pstmt.executeQuery();
			while(rs.next())
			{
				dto = new ReplyDTO();
				dto.setRno(rs.getInt("rno"));
				dto.setBno(rs.getInt("bno"));
				dto.setContent(rs.getString("content"));
				dto.setWriter(rs.getString("writer"));
				dto.setRegdate(rs.getString("regdate"));
				list.add(dto);	
			}		
		}catch(Exception e) {
			e.printStackTrace();
		}finally{
			try {rs.close();}catch(Exception e) {e.printStackTrace();}
			try {pstmt.close();}catch(Exception e) {e.printStackTrace();}
		}
		return list;
	}
	//댓글 카운트
	public int getTotalReplyCnt(int bno) {
		
		int tcnt=0;
		try {
			
			pstmt = conn.prepareStatement("select count(*) from tbl_reply where bno=?");
			pstmt.setInt(1, bno);
			rs=pstmt.executeQuery();
			rs.next();
			tcnt=rs.getInt(1);
			
		
		}catch(Exception e) {
			e.printStackTrace();
		}finally{
			try {rs.close();}catch(Exception e) {e.printStackTrace();}
			try {pstmt.close();}catch(Exception e) {e.printStackTrace();}
		}
		return tcnt;		
	}
	
	
	
}
