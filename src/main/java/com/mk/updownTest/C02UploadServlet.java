package com.mk.updownTest;

import java.io.IOException;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@WebServlet("/upload2")
@MultipartConfig
(
		fileSizeThreshold=1024*1024*10,		//10Mb
		maxFileSize=1024*1024*50,			//50Mb
		maxRequestSize=1024*1024*100		//100Mb
)
public class C02UploadServlet extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
			
		 //Multipart로 전달되는 모든 Part를 받아서 반복처리로 확인	
		 for(Part part : req.getParts())
		 {
				System.out.println("Part name : " + part.getName());
				System.out.println("File Size : " + part.getSize()+" byte");
				System.out.println("Header : " + part.getHeaderNames());
				System.out.println("content-disposition : "+ part.getHeader("content-disposition"));
				System.out.println("FILENAME : " + getFileName(part));
				System.out.println("-----------------------------");
		 }
		
			 
		
		 String id = UUID.randomUUID().toString();
		 System.out.println("ID : " + id);
		 
		
//		//파일명 추출(업로드 위한)
//		String contentDisp=part.getHeader("content-disposition");
//		String[] arr = contentDisp.split(";"); // 배열화 
//		System.out.println("arr[2] : " + arr[2]);
//		System.out.println("FILENAME : " + arr[2].substring(11,arr[2].length()-1));
		
		
		//파일추출 함수 만들기(getFileName)
//		String Filename=getFileName(part);
//		System.out.println("FILENAME : " + Filename);
		
	}
	
	private String getFileName(Part part)
	{
		String contentDisp=part.getHeader("content-disposition");
		String[] arr = contentDisp.split(";"); // 배열화 
		
		String Filename=arr[2].substring(11,arr[2].length()-1);
		
		return Filename;
	}
	
	
}
