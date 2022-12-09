<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="org.apache.tomcat.util.buf.EncodedSolidusHandling"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="database.DBQuery"%>
<%@page import="java.lang.Integer.*"%>
<%@page import="model.Usuarios"%>

<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% 
	
	DBQuery st = new DBQuery();
	String email = request.getParameter("email");
	String senha = request.getParameter("senha");
	String nome = request.getParameter("nome");
	String rsemail = null;
	String rssenha = null;
	String rsnome = null;
	

	//geração de campos opcionais da tabela usuários 
	int min = 1;
    int max = 50;    
    int random_int = (int)Math.floor(Math.random()*(max-min+1)+min);
    System.out.println(random_int);	
	String opcData = Integer.toString(random_int);
			
	ResultSet rs = st.query("select * from usuarios  where email='" + email + "' and senha='" + senha + "'  and nome='" + nome + "'");
	try
	{
		while(rs.next())
		{
			 rsemail = request.getParameter("email");
			 rssenha = request.getParameter("senha");
			 rsnome = request.getParameter("nome");

		}
		if (email.equals(rsemail) && senha.equals(rssenha) && nome.equals(rsnome))
		{
			out.print("false");
		}
		else 
		{
 			Usuarios in = new Usuarios();
  		   // in.setIdUsuario(1);
 		 	in.setEmail(email);
 		 	in.setSenha(senha);
 		 	in.setIdNivelUsuario("2");
 		 	in.setNome(nome);
 		 	in.setCpf("cpf"+random_int);
 		 	in.setEndereco("endereco"+random_int);
 		 	in.setBairro("bairro");
 		 	in.setCidade("cidade");
 		 	in.setCep("cep"+random_int);
 		 	in.setUf("uf");
 		 	in.setTelefone("telefone"+random_int);
 		 	in.setFoto("foto"); 	
 		 	in.setAtivo("N");
 		 	in.save();		
			out.print("true");
		}	
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}
	
%>



		
	



		
	