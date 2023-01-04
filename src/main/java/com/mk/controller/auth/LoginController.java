package com.mk.controller.auth;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mk.controller.SubController;
import com.mk.dto.MemberDTO;
import com.mk.service.MemberService;

public class LoginController implements SubController {

	MemberService service = MemberService.getInstance();

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {
		System.out.println("LoginController로 진입!");
		// 파라미터 받기
		String id = req.getParameter("id");
		String pwd = req.getParameter("pwd");

		try {
			// 입력값 검증
			if (id == null || pwd == null) {
				resp.sendRedirect("/index.do");
			}

			// 서비스 실행
			// MemberService -> dao -> 해당 id 의 pw를 꺼내오기
			MemberDTO dto = service.MemberSearch(id);
			if (dto != null) {

				// if(pwd.equals(dto.getPwd()))
				if (service.passwordEncoder.checkpw(pwd, dto.getPwd())) {
					// 패스워드 일치

					// 세션에 특정옵션 부여(예를 들면 계정의 grade를 저장한다거나~)
					HttpSession session = req.getSession();
					session.setAttribute("grade", dto.getGrade());
					session.setAttribute("id", dto.getId());
					session.setMaxInactiveInterval(60 * 15);

					// View로 이동
					
					
					
					
					resp.sendRedirect("/main.jsp");

				} else {
					// 패스워드 불일치
					req.setAttribute("MSG", "패스워드가 일치하지 않습니다..");
					req.getRequestDispatcher("/index.do").forward(req, resp);
				}
			} else {
				// 아이디 조회 실패..해당 아이디가 없습니다.
				req.setAttribute("MSG", "일치하는 아이디가 없습니다..");
				req.getRequestDispatcher("/index.do").forward(req, resp);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}
