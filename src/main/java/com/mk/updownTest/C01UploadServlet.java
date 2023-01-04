package com.mk.updownTest;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@WebServlet("/upload1")
@MultipartConfig
(
		fileSizeThreshold=1024*1024*10,		//10Mb
		maxFileSize=1024*1024*50,			//50Mb
		maxRequestSize=1024*1024*100		//100Mb
)

//location : 업로드한 파일이 임시로 저장될 위치를 지정,절대경로만 가능
//기본값은 해당 자바가 실행되는 temp폴더
//maxFileSize : 업로드 가능한 파일의 최대 크기를 바이트 안위로 지정,-1은 제한없음(기본값)
//fileSizeThresHold : 업로드한 파일의 크기가 태그값보다 크면 location에 지정한 디렉토리에
//임시로 파일저장
public class C01UploadServlet extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
			 
		//request로 부터 파일정보(Part)를 가져옴 "test"는 폼에 지정된 name
		Part part=req.getPart("test");
			 
//		System.out.println("Part name : " + part.getName());
//		System.out.println("File Size : " + part.getSize()+" byte");
//		System.out.println("Header : " + part.getHeaderNames());
//		System.out.println("content-disposition : "+ part.getHeader("content-disposition"));
		
//		//파일명 추출(업로드 위한)
//		String contentDisp=part.getHeader("content-disposition");
//		String[] arr = contentDisp.split(";"); // 배열화 
//		System.out.println("arr[2] : " + arr[2]);
//		System.out.println("FILENAME : " + arr[2].substring(11,arr[2].length()-1));
		
		
		//파일추출 함수 만들기(getFileName)
		String Filename=getFileName(part);
		System.out.println("FILENAME : " + Filename);
		
	}
	
	private String getFileName(Part part)
	{
		String contentDisp=part.getHeader("content-disposition");
		String[] arr = contentDisp.split(";"); // 배열화 
		
		String Filename=arr[2].substring(11,arr[2].length()-1);
		
		return Filename;
	}
	
	
}
