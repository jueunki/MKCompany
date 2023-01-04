package com.mk.test;

import org.junit.Test;

import com.mk.dao.BoardDAO;
import com.mk.dto.BoardDTO;

public class DaoTest {

//	@Test
//	public void test() {
//		//
//		MemberDTO dto = new MemberDTO();
//		dto.setEmail("example@example.com");
//		dto.setPwd("1234");
//		dto.setAddr1("대구광역시 달서구 000");
//		dto.setAddr2("00아파트 000동 0000호");
//		
//		MemberDAO dao = MemberDAO.getInstance();
//		boolean result = dao.insert(dto);
//		if(result)
//			System.out.println("INSERT 성공");
//		else
//			System.out.println("INSERT 실패");
//	}
	
//	@Test
//	public void Test2() {
//		//MemberDAO's Select(email)
//		MemberDAO dao = MemberDAO.getInstance();
//		MemberDTO dto  = dao.Select("jwg1323@outlook.kr");
//		System.out.println("결과 : "  + dto.toString());
//		
//	}
	
//	@Test
//	public void Test3() {
//		MemberDTO dto = new MemberDTO();
//		dto.setEmail("test1@naver.com");
//		dto.setPwd("0987");
//		dto.setAddr1("서울특별시");
//		dto.setAddr2("00구 00동");
//		
//		MemberDAO dao = MemberDAO.getInstance();
//		dao.Update(dto);	
//	}
	

	
//	@Test
//	public void Test4()
//	{
//		BoardDAO dao = BoardDAO.getInstance();
//		
//		List<BoardDTO> list =dao.Select(5, 20);
//		
//		//list.forEach(dto -> System.out.println(dto));
//		for(int i=0;i<list.size();i++)
//		{
//			System.out.println(list.get(i));	
//		}
//		
//		
//	}
	
//	@Test
//	public void Test5()
//	{
//		BoardDAO dao = BoardDAO.getInstance();
//		int result = dao.getTotalCount();
//		System.out.println("게시물 건수 : " + result);
//		
//		
//	}
	
//	@Test
//	public void Test6()
//	{
//		BoardDAO dao = BoardDAO.getInstance();
//		BoardDTO dto = new BoardDTO();
//		dto.setTitle("NEWTITLE");
//		dto.setContent("NEWCONTENT");
//		dto.setWriter("NEWWRITER");
//		dto.setPwd("112233");
//		dto.setIp("192.168.10.1");
//		
//		dao.Insert(dto);
//		
//	}
	
	@Test
	public void Test7()
	{
		BoardDAO dao = BoardDAO.getInstance();
		BoardDTO dto = dao.Select(500);
		System.out.println(dto);
	}


}





