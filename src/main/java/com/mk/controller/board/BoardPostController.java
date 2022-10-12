package com.mk.controller.board;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.mk.controller.SubController;
import com.mk.dto.BoardDTO;
import com.mk.service.BoardService;

public class BoardPostController implements SubController{

	public void execute(HttpServletRequest req, HttpServletResponse resp, BoardService BoardServive) {
		
		String flag = req.getParameter("flag");
		try {
			if(flag==null)
			{
				req.getRequestDispatcher("WEB-INF/board/post.jsp").forward(req, resp);
			}
			else
			{
				//파라미터 받기
				String title = req.getParameter("title");
				String content = req.getParameter("content");
				String pwd = req.getParameter("pwd");
				String ip = req.getRemoteAddr();
				HttpSession session = req.getSession();
				String writer = (String)session.getAttribute("email");
				
				//입력값
				if(title==null||content==null||pwd==null||ip==null)
				{
					req.getRequestDispatcher("/WEB-INF/board/post.jsp").forward(req, resp);
					return;
				}
				
				//서비스 실행
				BoardDTO dto = new BoardDTO();
				dto.setTitle(title);
				dto.setContent(content);
				dto.setPwd(pwd);
				dto.setIp(ip);
				dto.setWriter(writer);
				
			//Part가파일 part 전달
				ArrayList<Part> parts=(ArrayList<Part>) req.getParts();
				boolean result = false;
				long size = parts.get(3).getSize();
				
				if(size==0) //파일전달이 되지않은경우에
					result = BoardService.PostBoard(dto);
				else		//파일이 포함되어있는경우
					result = BoardServive.PostBoard(dto,parts);
				
				//view
				if(result) {
					resp.sendRedirect("/Board/list.do");
					return;
				}
				else {
					req.getRequestDispatcher("/WEB-INF/board/post.jsp").forward(req, resp);
					return;
				}
				
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {
		// TODO Auto-generated method stub
		
	}

}
