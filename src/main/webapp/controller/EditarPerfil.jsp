<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="org.apache.tomcat.util.buf.EncodedSolidusHandling"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="database.DBQuery"%>
<%@page import="java.lang.Integer.*"%>
<%@page import="model.Usuarios"%>

<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% 
	
	DBQuery st = new DBQuery();
	String senha = request.getParameter("senha");
	String nome = request.getParameter("nome");
	String rssenha = null;
	String rsnome = null;
	
 	String telefoneNovo = request.getParameter("telefone");
 	String cepNovo = request.getParameter("cep");
 	String enderecoNovo = request.getParameter("endereco");
	String senhanova = request.getParameter("senhaNova");
	String nomenovo = request.getParameter("nomeNovo");
				
	//query de update manual 
	String upd = "UPDATE usuarios SET ";
	String upd_linesField = "senha='"+senhanova+"',nome='"+nomenovo+"',cep='"+cepNovo+"',telefone='"+telefoneNovo+"',endereco='"+enderecoNovo+"' ";
	String upd_columsField = "WHERE senha='"+senha+"'and nome='"+nome+"';";

	ResultSet rs = st.query("select idUsuario from usuarios  where senha='" + senha + "'  and nome='" + nome + "'");
	
	try
	{
		while(rs.next())
		{
			 rssenha = request.getParameter("senha");
			 rsnome = request.getParameter("nome");

		}
		if (senha.equals(rssenha) && nome.equals(rsnome))
		{
		    st.execute(upd.concat(upd_linesField).concat(upd_columsField));			
		}
		else 
		{
			out.print("dados diferentes");
		}	
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}
	
%>



		
	



		
	