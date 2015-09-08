package com.iwinner.web.servlet;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

/**
 * Servlet implementation class AuctionServlet
 */
public class AuctionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AuctionServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		execute(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		execute(request, response);
	}

	public void execute(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
		String uploadDirectory="D:/anji/";
		String title=request.getParameter("title");
		//String username=new ServletFileUpload(new DiskFileItemFactory()).parseRequest(request);
		System.out.println(title);
        try {
            List<FileItem> multiparts = new ServletFileUpload(new DiskFileItemFactory()).parseRequest(request);
           
            for(FileItem item : multiparts){
            	String fileITEMName= item.getString();
            	if(item.isFormField()){
            		 //String fieldName = item.getFieldName();
                     String fieldValue = item.getString();
                     if(item.getFieldName().equalsIgnoreCase("title")){
                    	 System.out.println("FieldValue is ::::>>>>"+fieldValue);	 
                     }
            	}
                if(!item.isFormField()){
                    String name = new File(item.getName()).getName();
                    item.write( new File(uploadDirectory + File.separator + name));
                    String fileName=uploadDirectory+name;
                    System.out.println("FileName is :::===>>>"+fileName);
                }
            }
           //File uploaded successfully
           request.setAttribute("message", "File Uploaded Successfully");
        } catch (Exception ex) {
           request.setAttribute("message", "File Upload Failed due to " + ex);
        }          
     

	}

}
