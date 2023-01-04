package com.mk.filter;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

public class authfilter implements Filter {

	//Key : URL , Value : Grade
		Map<String,Integer> pageGradeMap = new HashMap();
		 
		
		@Override
		public void init(FilterConfig filterConfig) throws ServletException {
			
			pageGradeMap.put("/Board/list.do", 0); //모두 이용가능
			pageGradeMap.put("/Board/post.do", 1); //일반 계정권한 이상 
			
			pageGradeMap.put("/Notice/list.do", 0); //모두 이용가능
			pageGradeMap.put("/Notice/post.do", 2); //관리자 등급에서만 사용
		}

		@Override
		public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain)
				throws IOException, ServletException {
			
			//Request 전 처리
			System.out.println("========== Filter 처리(Request 전)!!!!==========");
			req.setCharacterEncoding("UTF-8");
			resp.setContentType("text/html; charset=UTF-8");
			
			 
				//servlet request -> Http Request 다운캐스팅
				HttpServletRequest request = (HttpServletRequest)req;
				
				//세션을 통해서 grade 가져오기
				HttpSession session = request.getSession();
				int usergrade = 0; //기본 권한 0
				if(session.getAttribute("grade")!=null) //처음접속이 아닐경우 
						usergrade=(Integer)session.getAttribute("grade");
				
				
				//System.out.println("UserGrade : " + usergrade);
				
				//Pagegrade 확인
				String URL = request.getRequestURI();
				//System.out.println("Filter's URL : " + URL);
				int pagegrade=0; //기본권한
				if(pageGradeMap.get(URL)!=null)
					pagegrade=pageGradeMap.get(URL);
				//System.out.println("PageGrade : " + pagegrade);
				
				//user - page 권한 설정
				//guest 계정의 권한 제한
				if(usergrade==0 && pagegrade>=1)
					throw new ServletException("로그인이 필요한 페이지입니다.");
				//admin이 아닌 계정의 권한 제한
				if(usergrade<2 && pagegrade==2)
					throw new ServletException("페이지에 접근할 권한이 없습니다.");

			
			chain.doFilter(req,resp);
			//Response 전 처리
			
			System.out.println("========== Filter 처리(Response 전)!!!!==========");
			
			
			 
		}
		

	}
