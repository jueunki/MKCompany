package com.mk.controller.board;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mk.controller.SubController;
import com.mk.dto.BoardDTO;
import com.mk.service.BoardService;

public class BoardDeleteController implements SubController{

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {
		
		//파라미터
		String pwd = req.getParameter("pwd");
		String nowPage = req.getParameter("nowPage");
		
		System.out.println("PWD : " + pwd);
		
		//읽고있는 게시물 꺼내기
		HttpSession session = req.getSession();
		BoardDTO dto = (BoardDTO)session.getAttribute("dto");
		
		//입력값
		if(dto.getPwd().equals(pwd))//패스워드 일치여부
		{
			BoardService.BoardRemove(dto);
		} 
		
		//view
		try {
			int numPerPage=10;
			int np = Integer.parseInt(nowPage);
			int start = (np*numPerPage)-numPerPage+1;
			int end = (np*numPerPage);
			req.getRequestDispatcher("/Board/list.do?nowPage="+nowPage+"&start="+start+"&end="+end).forward(req, resp);
			
		} catch (ServletException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
	}

}
