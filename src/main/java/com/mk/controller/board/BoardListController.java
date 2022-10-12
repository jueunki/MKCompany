package com.mk.controller.board;

import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mk.controller.SubController;
import com.mk.dto.BoardDTO;
import com.mk.service.BoardService;

public class BoardListController implements SubController{

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {
		try {
			String tmpstart = req.getParameter("start");
			String tmpend = req.getParameter("end");
			String nowPage = req.getParameter("nowPage");
			int start = 0;
			int end = 0;	//초기값 설정
			if(tmpstart==null || tmpend==null)
			{
				start = 1;
				end = 10;
			}
			else
			{
				start = Integer.parseInt(tmpstart);
				end = Integer.parseInt(tmpend);
			}
			List<BoardDTO> list = BoardService.getBoardList(start, end);
			int tcnt = BoardService.getTotalCnt();
			 
			req.setAttribute("list", list);
			req.setAttribute("tcnt", tcnt);
			
			Cookie init = new Cookie("init","true");
			resp.addCookie(init);
			
			req.getRequestDispatcher("/WEB-INF/board/list.jsp?nowPage="+nowPage).forward(req, resp);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

}
