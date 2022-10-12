package com.mk.controller.board;

import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mk.controller.SubController;
import com.mk.dto.BoardDTO;
import com.mk.dto.ReplyDTO;
import com.mk.service.BoardService;

public class BoardReplylistController implements SubController{

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {
		
		HttpSession session = req.getSession();
		BoardDTO dto = (BoardDTO)session.getAttribute("dto");
		
		ArrayList<ReplyDTO> list = BoardService.getReplylist(dto.getNo());
		
		try {
			PrintWriter out = resp.getWriter();
			
			for(int i=0;i<list.size();i++) {
				
				//이걸 어디서 받아왔었지............
				out.println("<div class=\"from-control\">");
				out.println("<span style=font-size:0.5rem>"+list.get(i).getWriter()+"</span>&nbsp;&nbsp;");
				out.println("<span style=font-size:0.5rem>"+list.get(i).getRegdate()+"</span><br>");
				out.println("<span>"+list.get(i).getContent()+"</span>");
				out.println("</div>");
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

}