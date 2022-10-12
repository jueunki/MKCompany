package com.mk.controller.board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mk.controller.SubController;
import com.mk.dto.BoardDTO;
import com.mk.dto.ReplyDTO;
import com.mk.service.BoardService;

public class BoardReplypostController implements SubController{

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {
		
		//파라미터 받기
		String comment = req.getParameter("comment");
		String nowPage = req.getParameter("nowPage");
		System.out.println(comment + " " + nowPage);
		
		HttpSession session = req.getSession();
		BoardDTO dto = (BoardDTO)session.getAttribute("dto");//읽고있는 게시물
		String email = (String)session.getAttribute("email");//접속중인 email
		
		ReplyDTO rdto = new ReplyDTO();
		rdto.setBno(dto.getNo());
		rdto.setWriter(email);
		rdto.setContent(comment);
		
		//service 실행
		BoardService.replypost(rdto);
	}

}
