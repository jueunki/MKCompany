package com.mk.controller.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mk.controller.SubController;
import com.mk.dto.MemberDTO;
import com.mk.service.BoardService;

public class MemberJoinController implements SubController{

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {
		System.out.println("=====MemberJoin Controller=====");
		
		String flag = req.getParameter("flag");
		try {
			if(flag==null) //Login.jsp -> 회원가입버튼 누름!
			{
				
				req.getRequestDispatcher("/WEB-INF/join.jsp").forward(req, resp);
				 
				return ;
			}
			else
			{
				//파라미터 받기
				String userid = req.getParameter("userid");
				String pwd = req.getParameter("pwd");
				String repwd = req.getParameter("repwd");
				String name = req.getParameter("name");
				String nickname = req.getParameter("nickname");
				String email = req.getParameter("email");
				System.out.println(userid+","+pwd+","+repwd+","+name+","+nickname+","+email);
				
				//서비스 실행
				MemberDTO dto = new MemberDTO();
				dto.setId(userid);
				dto.setPwd(pwd);
				dto.setRepwd(repwd);
				dto.setName(name);
				dto.setNickname(nickname);
				dto.setEmail(email);
				boolean result = BoardService.MemberInsert(dto);
				//view로 이동
				resp.sendRedirect("/index.do");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}