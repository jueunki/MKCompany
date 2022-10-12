package com.mk.controller.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mk.controller.SubController;
import com.mk.dto.MemberDTO;
import com.mk.service.BoardService;

public class MemberInfoController implements SubController{

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {
		
		//view로 이동
		try {
		
			//session 객체에서 email 꺼내옴
			HttpSession session = req.getSession();
			String email = (String)session.getAttribute("email");
		
			//service를 이용해서 접속중인 사용자의 정보를 가져옴
			MemberDTO dto = BoardService.MemberSearch(email);
		
			//request에 dto 저장
			req.setAttribute("dto", dto);
			
			req.getRequestDispatcher("/WEB-INF/Joinus.jsp").forward(req, resp);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
