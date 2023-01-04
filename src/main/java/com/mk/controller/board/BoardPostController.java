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

	BoardService service = BoardService.getInstance();
	
	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {
		
		String flag = req.getParameter("flag");
		try {
			
			if(flag==null) //list.jsp에서 글쓰기 버튼을 누른 경우
			{
				req.getRequestDispatcher("/WEB-INF/board/post.jsp").forward(req, resp);
			}
			else 		//post.jsp에서 등록할 내용을 기입하고 글쓰기 버튼 누른 경우 
			{
				
				// 1 파라미터
				//title,content,pwd,writer,ip,(filename,filesize)..
				String title = req.getParameter("title");
				String content = req.getParameter("content");
				String pwd = req.getParameter("pwd");
				String ip = req.getRemoteAddr();
				HttpSession session = req.getSession();
				String writer = (String)session.getAttribute("email");		
				
				// 2 입력값
				if(title==null||content==null||pwd==null||ip==null)
				{
					req.getRequestDispatcher("/WEB-INF/board/post.jsp").forward(req, resp);
					return ;
				}
				
				// 3 서비스실행
				BoardDTO dto = new BoardDTO();
				dto.setTitle(title);
				dto.setContent(content);
				dto.setPwd(pwd);
				dto.setIp(ip);
				dto.setWriter(writer);
				
				//추가(정리8일차-Upload) 파일 part 전달
				ArrayList<Part> parts=(ArrayList<Part>) req.getParts();
				boolean result=false;
				long size = parts.get(3).getSize();
				 
				if(size==0) //파일전달이 안된경우
					result = service.PostBoard(dto);
				else			//파일이포함되어 있는경우
					result = service.PostBoard(dto,parts);
				
				// 4 View
				if(result) {
//
					resp.sendRedirect("/Board/list.do");
					return ;
				}
				else {
					req.getRequestDispatcher("/WEB-INF/board/post.jsp").forward(req, resp);
					return ;
				}
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		} 
		
	}

}

