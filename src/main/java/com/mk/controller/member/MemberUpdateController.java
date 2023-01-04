package com.mk.controller.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mk.controller.SubController;
import com.mk.dto.MemberDTO;
import com.mk.service.MemberService;

public class MemberUpdateController implements SubController{

MemberService service = MemberService.getInstance();
	
	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {
	
		String flag = req.getParameter("flag");
		
		try {
				
			if(flag==null) //myinfo.jsp 에서 요청받음
			{
				req.getRequestDispatcher("/WEB-INF/member/password.jsp").forward(req, resp);
			}
			else //password.jsp에서 요청받음
			{
				
				//패스워드 검증 일치하다면 정보수정처리
				String pwd=req.getParameter("pwd");
				
				HttpSession session = req.getSession();
				String id = (String)session.getAttribute("id");
				MemberDTO dto = service.MemberSearch(id);
				
				if(service.passwordEncoder.checkpw(pwd, dto.getPwd()))
				{
					//패스워드가 일치한 경우
					//->수정된 값 파라미터 받기
					String Pwd = req.getParameter("pwd");
					String repwd = req.getParameter("repwd");
					
					System.out.println("Pwd : " + Pwd);
					System.out.println("Repwd : " + repwd);
					
					dto.setPwd(Pwd);
					dto.setRepwd(repwd);
					
					String newpwd = req.getParameter("newpwd");
					
					newpwd =  service.passwordEncoder.hashpw(newpwd, service.passwordEncoder.gensalt());
					
					dto.setPwd(newpwd);
					
					//->dto단위로 담아서 service 함수로  전달
					service.MemberUpdate(dto);
					
					 
					//view 이동
					req.setAttribute("dto", dto);
					req.getRequestDispatcher("/WEB-INF/member/myinfo.jsp").forward(req, resp);
					return ;
				}
				else
				{
					//불일치한 경우 
					req.setAttribute("MSG", "패스워드가 일치하지않습니다");
					req.getRequestDispatcher("/WEB-INF/member/password.jsp").forward(req, resp);
					return ;
				}
				
			}
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
		
		
	}

}
