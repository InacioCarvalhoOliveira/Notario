package com.ina.web;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;

/**
 * Servlet implementation class UploadImage
 */
@WebServlet(name = "UploadImage", urlPatterns = { "/uploadimage" })
@MultipartConfig(
		  fileSizeThreshold = 1024 * 1024 * 1, // 1 MB
		  maxFileSize = 1024 * 1024 * 10,      // 10 MB
		  maxRequestSize = 1024 * 1024 * 100   // 100 MB
		)
public class UploadImage extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	 public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		    /* Receive file uploaded to the Servlet from the HTML5 form */
		    Part filePart = request.getPart("file");
		    String fileName = filePart.getSubmittedFileName();
		    for (Part part : request.getParts()) {
		      part.write("eclipse-workspace\\Notario\\Notar\\src\\main\\webapp\\img\\UploadedFiles" + fileName);
		    }
		    response.getWriter().print("The file uploaded sucessfully.");
		  }

}
