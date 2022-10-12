package com.mk.controller.board;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mk.controller.SubController;
import com.mk.dto.BoardDTO;
import com.mk.service.BoardService;

public class BoardReadController implements SubController{

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {
		
		//파라미터
		String no = req.getParameter("no");
		String nowPage = req.getParameter("nowPage");
		
		
		//서비스실행
		int num = Integer.parseInt(no);
		
		
		//init쿠키꺼내기
		Cookie[] cookies = req.getCookies(); //모든 쿠키받기
		for(int i=0;i<cookies.length;i++)
		{
			if(cookies[i].getName().equals("init"))
			{
				cookies[i].setMaxAge(0); //쿠키제거
				resp.addCookie(cookies[i]); //response에 쿠키제거를 적용
				BoardService.CountUp(num); //조회수 증가
				break; //반복문 벗어나기
			}
		}
		
		//게시물 받기
		BoardDTO dto = BoardService.getBoardDTO(num);
		
		//session에 읽고있는 게시물 저장(수정,삭제로 이동시 현재 읽는 게시물을 확인하기 용이하다.)
		HttpSession session = req.getSession();
		session.setAttribute("dto", dto);
		
		//뷰로이동
		try {
			req.setAttribute("dto", dto);
			req.setAttribute("nowPage", nowPage);
			req.getRequestDispatcher("/WEB-INF/board/read.jsp").forward(req, resp);
			
		} catch (ServletException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		
		
	}

	}
	
}
