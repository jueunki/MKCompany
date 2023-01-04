package com.mk.controller.member;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mk.controller.SubController;
import com.mk.dto.MemberDTO;
import com.mk.service.MemberService;

public class MemberJoinusController implements SubController{

	private MemberService service = MemberService.getInstance();
	
	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp)
	{
		
		
		
		System.out.println("=====MemberJoinus Controller====");
		
		String flag = req.getParameter("flag");
		try {	

			
	
			if(flag==null) //Login.jsp->회원가입버튼 누름
		{
			req.getRequestDispatcher("/WEB-INF/Joinus.jsp").forward(req, resp);
		}
		else 
		{
			//1 파라미터 받기
			String id = req.getParameter("id");
			String pwd = req.getParameter("pwd");
			String name = req.getParameter("name");
			String nickname = req.getParameter("nickname");
			String email = req.getParameter("email");
			System.out.println(id+","+pwd+","+name+","+nickname+","+email);
			
			//2 입력값 검증
			
			//3 서비스 실행
			MemberDTO dto = new MemberDTO();
			dto.setId(id);
			dto.setPwd(pwd);
			dto.setName(name);
			dto.setNickname(nickname);
			dto.setEmail(email);
			boolean result = service.MemberInsert(dto);
			
			
			//4 View 이동
			if(result)
				resp.sendRedirect("/main.do?msg="+URLEncoder.encode("회원가입성공!"));
			else
				resp.sendRedirect("/Joinus.do?msg="+URLEncoder.encode("회원가입실패!"));
			
		}
		
		}catch(Exception e) {e.printStackTrace();}
	}


		
	}


