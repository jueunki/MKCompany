package com.mk.controller;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class FrontController extends HttpServlet{
	
	
	HashMap <String,SubController> list = null;
	
	@Override
	public void init() throws ServletException {
		list = new HashMap();
		
		//메인
		list.put("/main.do", new MainController());
		
		//인증관련
		list.put("/Login.do", new LoginController());
		//게시판 관련
		
		//회원관련
		
		//공지사항
	}
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setContentType("text/html; charset=UTF-8");
		
		String url = req.getRequestURI();	//URI : 자원을 찾기위한 규칙!
		System.out.println("URL : " + url);
		SubController sub = list.get(url);
		if(sub!=null)
			sub.execute(req, resp);
		
		
		
		
	}

	
	
	

}
