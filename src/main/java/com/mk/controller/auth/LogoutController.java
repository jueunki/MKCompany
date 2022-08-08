package com.mk.controller.auth;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mk.controller.SubController;

public class LogoutController implements SubController{

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {
		
		HttpSession session = req.getSession();
		session.invalidate();
		
		try {
			req.setAttribute("MSG", "로그아웃 되었습니다.");
			req.getRequestDispatcher("/index.do").forward(req, resp);
			
		}catch (Exception e) {
			 
			e.printStackTrace();
		}
		
	}

}
