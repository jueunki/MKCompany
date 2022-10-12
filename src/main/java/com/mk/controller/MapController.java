package com.mk.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MapController implements SubController {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {
		
		try {
			req.getRequestDispatcher("/WEB-INF/map.jsp").forward(req, resp);
			
			 
		}catch (Exception e) {
			e.printStackTrace();
		}
	}

}
