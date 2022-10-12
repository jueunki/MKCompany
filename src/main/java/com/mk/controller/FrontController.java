package com.mk.controller;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mk.controller.auth.LoginController;
import com.mk.controller.auth.LogoutController;
import com.mk.controller.board.BoardDeleteController;
import com.mk.controller.board.BoardDownloadController;
import com.mk.controller.board.BoardListController;
import com.mk.controller.board.BoardPostController;
import com.mk.controller.board.BoardReadController;
import com.mk.controller.board.BoardReplycntController;
import com.mk.controller.board.BoardReplylistController;
import com.mk.controller.board.BoardReplypostController;
import com.mk.controller.board.BoardUpdateController;
import com.mk.controller.member.MemberInfoController;
import com.mk.controller.member.MemberJoinController;
import com.mk.controller.member.MemberUpdateController;
import com.mk.controller.notice.NoticeListController;
import com.mk.controller.notice.NoticePostController;

public class FrontController extends HttpServlet{
	
	
	HashMap <String,SubController> list = null;
	
	@Override
	public void init() throws ServletException {
		list = new HashMap();
		
		//메인
		 list.put("/main.do", new MainController());  
		//list.put("/index.do", new indexController()); 
		
		//오시는길 맵
		 list.put("/map.do", new MapController());
		 
		//인증관련
		list.put("/Login.do", new LoginController());
		list.put("/Logput.do", new LogoutController());
		
		//공지사항 게시판 관련
		list.put("/Board/Delete.do", new BoardDeleteController());
		list.put("/Board/DownloadAll.do", new BoardDownloadController());
		list.put("/Board/Download.do", new BoardDownloadController());
		list.put("/Board/list.do", new BoardListController());
		list.put("/Board/Post.do", new BoardPostController());
		list.put("/Board/Read.do", new BoardReadController());
		list.put("/Board/Replycnt.do", new BoardReplycntController());
		list.put("/Board/Replylist.do", new BoardReplylistController());
		list.put("/Board/Replypost.do", new BoardReplypostController());
		list.put("/Board/Update.do", new BoardUpdateController());
 
		//회원관련 
		list.put("/Join.do", new MemberJoinController());
		list.put("/Joinus.do", new MemberInfoController());
		list.put("/MemberUpdate.do", new MemberUpdateController());
		list.put("/info.do", new MemberInfoController());
		
		//공지사항
		list.put("/Notice/list.do", new NoticeListController());
		list.put("/Notice/post.do", new NoticePostController());
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
