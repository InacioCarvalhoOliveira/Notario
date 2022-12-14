<%@page import="java.sql.ResultSet"%>
<%@page import="database.DBQuery"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Locale"%>
<%@page import="java.io.File"%>
<%@page import="org.apache.tomcat.util.http.fileupload.FileItem"%>
<%@page import="java.nio.file.Paths"%>
<%@page import="java.nio.file.Files"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	
	DBQuery st = new DBQuery();
	
	String email = request.getParameter("email");
	String foto = request.getParameter("geeks");
	String rsemail = null;
	
	String upd = "UPDATE usuarios SET ";
	String upd_linesField = "foto='"+foto+"'";
	String upd_columsField = "WHERE email='"+email+"';";
	
	ResultSet rs = st.query("select * from usuarios  where email='" + email + "'");
	try
	{
		while(rs.next())
		{
			 rsemail = request.getParameter("email");
		}
		if (email==rsemail)
		{
		    st.execute(upd.concat(upd_linesField).concat(upd_columsField));		
		    out.print("atualizada");
		    out.print(upd.concat(upd_linesField).concat(upd_columsField));
			
		}
		else{out.print("false");}	
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}
			
		

%>