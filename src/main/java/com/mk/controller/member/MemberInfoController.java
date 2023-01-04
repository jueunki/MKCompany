package com.mk.controller.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mk.controller.SubController;
import com.mk.dto.MemberDTO;
import com.mk.service.MemberService;

public class MemberInfoController implements SubController{

MemberService service = MemberService.getInstance();
	
	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {
		
		
		//view로이동
		try {
			
			//session 객체에서 id 꺼내옴
			HttpSession session = req.getSession();
			String id = (String)session.getAttribute("id");
			//service를 이용해서 접속중인 사용자의 정보를 가져옴 
			MemberDTO dto =  service.MemberSearch(id);
			
			//request에 dto 저장
			req.setAttribute("dto", dto);
			
			req.getRequestDispatcher("/WEB-INF/member/myinfo.jsp")
			.forward(req, resp);
		}catch(Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
	
		}
		
	}

}
