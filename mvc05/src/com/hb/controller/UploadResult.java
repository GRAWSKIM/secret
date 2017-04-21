package com.hb.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.oreilly.servlet.multipart.FileRenamePolicy;

@WebServlet("/upload.hb")
public class UploadResult extends HttpServlet {
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		req.setCharacterEncoding("UTF-8");
		
//		String path="C:\\tmp\\www\\mvc05\\WebContent\\uploads";
//		String path="C:\\tmp\\www\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\mvc05\\uploads";
		String path=req.getRealPath("uploads");
		System.out.println(path);
//		MultipartRequest mr=new MultipartRequest(req, path);
		/*
		 * 1=byte
		 * 1024 =1kb
		 * 1024*1024 = 1mb
		 * 1024*1024*2 =2mb
		 * 1024*1024*50 =50mb
		 * 
		 */
		FileRenamePolicy policy=new DefaultFileRenamePolicy();
		MultipartRequest mr=new MultipartRequest(req,path,1024*1024*2,policy);
		
		String tmp=mr.getParameter("sub");
		String sub=new String(tmp.getBytes("8859_1"),"UTF-8");
		
		System.out.println("제목은 "+sub);
		
		/*
		 * 1.파일이름
		 * 2.파일경로
		 * 3.파일사이즈&똑같은 파일이름
		 * 
		*/
		ArrayList<String> names=new ArrayList<String>();
		ArrayList<String> orgins=new ArrayList<String>();
		Enumeration<String> fnames = mr.getFileNames();
		while(fnames.hasMoreElements()){
			String file=fnames.nextElement();
			String fname=mr.getFilesystemName(file);
			names.add(fname);
			String orgin=mr.getOriginalFileName(file);
			orgins.add(orgin);
		}
		req.setAttribute("fname", names);
		req.setAttribute("orgin", orgins);
		req.getRequestDispatcher("download.jsp").forward(req, resp);
		
	}
}



