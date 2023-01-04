package com.mk.controller.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mk.controller.SubController;
import com.mk.dto.MemberDTO;
import com.mk.service.MemberService;

public class MemberJoinController implements SubController{

private MemberService service = MemberService.getInstance();
	
	
	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {
	
		System.out.println("=====MemberJoin Controller======");
		String flag = req.getParameter("flag");
		try {	
		if(flag==null) //Login.jsp->회원가입버튼 누름
		{
			req.getRequestDispatcher("/WEB-INF/Join.jsp").forward(req, resp);
		}
		else
		{
			
			resp.sendRedirect("/index.do");
			 
		}
		
		}catch(Exception e) {e.printStackTrace();}
	}


		
	}


