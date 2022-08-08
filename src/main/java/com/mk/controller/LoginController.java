package com.mk.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mk.controller.SubController;

public class LoginController implements SubController{

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {
		
		try {
			req.getRequestDispatcher("/WEB-INF/Login.jsp").forward(req, resp);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	
}




/*
 * package com.mk.controller.auth;
 * 
 * import javax.servlet.http.HttpServletRequest; import
 * javax.servlet.http.HttpServletResponse; import
 * javax.servlet.http.HttpSession;
 * 
 * import com.mk.controller.SubController; import com.mk.dto.MemberDTO; import
 * com.mk.service.MemberService;
 * 
 * public class LoginController implements SubController{
 * 
 * MemberService service = MemberService.getInstance();
 * 
 * @Override public void execute(HttpServletRequest req, HttpServletResponse
 * resp) { System.out.println("LoginController로 진입!"); String email =
 * req.getParameter("email"); String pwd = req.getParameter("pwd");
 * 
 * try { if(email==null || pwd==null) {
 * resp.sendRedirect("/webapp/WEP-INF/Login.jsp"); }
 * 
 * //MemberService에서 dao로 해당 id의 pw를 꺼내오는 부분! MemberDTO dto =
 * service.MemberSearch(email); if(dto!=null) {
 * if(service.passwordEncoder.checkpw(pwd, dto.getPwd())) { //세션에 특정한 옵션을 부여했다.
 * HttpSession session = req.getSession(); session.setAttribute("grade",
 * dto.getGrade()); session.setAttribute("email", dto.getEmail());
 * session.setMaxInactiveInterval(60*15); //이게뭐였지 : 세션의 자동종료 유효시간만큼 접근하지 않게되면
 * 웹컨테이너에 의해 자동으로 종료되는것!!
 * 
 * //view로 이동하는것 resp.sendRedirect("/main.do"); } else { //패스워드가 불일치할때 설정하는 부분!
 * req.setAttribute("MSG", "password가 일치하지 않습니다!");
 * req.getRequestDispatcher("/webapp/WEP-INF/Login.jsp").forward(req, resp); } }
 * else { //아이디 조회에 실패하거나 없을때 설정하는 부분! req.setAttribute("MSG",
 * "일치하는 아이디가 없습니다!");
 * req.getRequestDispatcher("/webapp/WEP-INF/Login.jsp").forward(req, resp); }
 * 
 * 
 * 
 * 
 * }catch (Exception e) { e.printStackTrace(); }
 * 
 * } }
 */
