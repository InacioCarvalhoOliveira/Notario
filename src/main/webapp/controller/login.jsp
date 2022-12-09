<%@page import="java.sql.ResultSet"%>
<%@page import="database.DBQuery"%>
<%@page import="java.sql.Connection"%>

<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% 

DBQuery st = new DBQuery();


String email = request.getParameter("email");
String senha = request.getParameter("senha");
String rsemail = null;
String rssenha = null;

ResultSet rs = st.query("select * from usuarios  where email='" + email + "' and senha='" + senha + "'");
try
{
	while(rs.next())
	{
		 rsemail = request.getParameter("email");
		 rssenha = request.getParameter("senha");
	}
	if (email.equals(rsemail) && senha.equals(rssenha))
	{
		out.print("true");
	}
	else{out.print("false");}	
}
catch(Exception e)
{
	e.printStackTrace();
}

%>
