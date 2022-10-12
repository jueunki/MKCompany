package com.mk.controller.board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mk.controller.SubController;
import com.mk.service.BoardService;

public class BoardDownloadController implements SubController{

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {
		
		//파라미터
		String filename = req.getParameter("filename");
		String flag = req.getParameter("flag"); //전체 다운받기용 확인!
		
		//서비스
		boolean result = false;
		result = BoardService.download(filename, req, resp);
	}

}
