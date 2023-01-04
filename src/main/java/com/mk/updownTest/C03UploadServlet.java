package com.mk.updownTest;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@WebServlet("/upload3")
@MultipartConfig
(
		fileSizeThreshold=1024*1024*10,		//10Mb
		maxFileSize=1024*1024*50,			//50Mb
		maxRequestSize=1024*1024*100		//100Mb
)
public class C03UploadServlet extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
			
		
   		 // 하위폴더명 생성(UUID)
		 String subdir = UUID.randomUUID().toString();
		
		 //업로드 경로 생성
		 File upload = new File("C://upload/"+subdir);
		 
		 //하위폴더 생성
		 if(!upload.exists())
			 upload.mkdirs();
		 
		 //Multipart로 전달되는 모든 Part를 받아서 반복처리로 확인	
		 for(Part part : req.getParts())
		 {
			 String FileName=getFileName(part); //파일이름 가져오기
			 part.write("C://upload/"+subdir+"/"+FileName); //파일업로드
			 
		 }
		
	}
	
	private String getFileName(Part part)
	{
		String contentDisp=part.getHeader("content-disposition");
		String[] arr = contentDisp.split(";"); // 배열화 
		
		String Filename=arr[2].substring(11,arr[2].length()-1);
		
		return Filename;
	}
	
	
}
