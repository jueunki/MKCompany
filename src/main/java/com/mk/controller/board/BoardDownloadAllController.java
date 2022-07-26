package com.mk.controller.board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mk.controller.SubController;
import com.mk.dto.BoardDTO;
import com.mk.service.BoardService;

public class BoardDownloadAllController implements SubController{

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {
		
		//읽고있는 게시물 꺼내기
		HttpSession session = req.getSession();
		BoardDTO dto = (BoardDTO)session.getAttribute("dto");
		
		//서비스 실행(ZIP압축 다운 메서드)
		boolean result = BoardService.downloadAllZIP(dto,resp);
	}

}
