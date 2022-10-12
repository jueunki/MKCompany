package com.mk.controller.board;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mk.controller.SubController;
import com.mk.dto.BoardDTO;
import com.mk.service.BoardService;

public class BoardUpdateController implements SubController{

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {
		
		//변경요청 파라미터 받기
		String title = req.getParameter("title");
		String content = req.getParameter("content");
		String pwd = req.getParameter("pwd");
		String nowPage = req.getParameter("nowPage");
		
		//읽고있는 게시물 꺼내오기 (session)
		HttpSession session = req.getSession();
		BoardDTO dto = (BoardDTO)session.getAttribute("dto");
		
		if(dto.getPwd().equals(pwd))	//읽고있는 게시물들의 pwd와 변경요청시에 전달한 pwd가 일치했을때!			
		{
			//service함수 호출 -> DAO -> DB변경
			dto.setTitle(title);				//변경된 타이틀
			dto.setContent(content);			//변경된 컨텐츠
			BoardService.UpdateBoard(dto);			//업데이트 요청서비스
			session.setAttribute("dto", dto);	//세션객체에 읽고있는 게시물을 변경후 저장한다.			
			
			//Read.jsp로 이동(no,nowPage전달!)
			try {
				String MSG="Update Succese!";
				req.setAttribute("MSG", MSG);
				req.getRequestDispatcher("/Board/read.do?no="+dto.getNo()+"&nowPage="+nowPage).forward(req, resp);
	
			} catch (ServletException e) {
				e.printStackTrace();
			}catch (IOException e) {
				e.printStackTrace();
			}
		}
		else
		{
			//Read.jsp로 이동하며 MSG를 전달한다.
			try {
				String MSG = "Password Inconsistency!!";
				req.setAttribute("MSG", MSG);
				req.getRequestDispatcher("/Board/read.do?no="+dto.getNo()+"&nowPage="+nowPage).forward(req, resp);
			} catch (ServletException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		
	}

}
