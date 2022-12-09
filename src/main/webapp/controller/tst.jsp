<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="org.apache.tomcat.util.buf.EncodedSolidusHandling"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="database.DBQuery"%>
<%@page import="java.lang.Integer.*"%>
<%@page import="model.Usuarios"%>

<%@page language="java" contentType="texthtml; charset=UTF-8" pageEncoding="UTF-8"%>
<% 

 	DBQuery st = new DBQuery();
 	String senha = request.getParameter("senha");
 	String nome = request.getParameter("nome");
 	String telefone = request.getParameter("telefone");
 	String cep = request.getParameter("cep");
 	String endereco = request.getParameter("endereco");
 	String rssenha = null;
 	String rsnome = null;
	
	
//  	String filename = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS", Locale.ENGLISH).format(new Date());
//  	filename += ".base64";

//    	String caminho = "homec13834uploadsData"+filename ;
//   	String strFoto = request.getParameter("foto");
//   	byte[] bytes = strFoto.getBytes(); 
//   	Files.write( Paths.get(caminho), bytes);

//   	Files.readAllBytes(Paths.get(caminho));
//   	out.print(strFoto);
	
	
	

  	//geração de campos opcionais da tabela usuários 
  	int min = 1;
      int max = 50;    
      int random_int = (int)Math.floor(Math.random()*(max-min+1)+min);
      System.out.println(random_int);	
  	String opcData = Integer.toString(random_int);
			
 	ResultSet rs = st.query("select * from usuarios where senha='" + senha + "' and nome='" + nome + "'");
			
			
 	try	
 	{
 		while(rs.next())
 		{
 			 rssenha = request.getParameter("senha");
 			 rsnome = request.getParameter("nome");

 		}
 		if (senha.equals(rssenha) && nome.equals(rsnome))
 		{
 			out.print("true");
 		}
 		else 
 		{
  			Usuarios in = new Usuarios();
   		    in.setIdUsuario(1);
  		 	in.setEmail("");
   		 	in.setSenha(request.getParameter("senhaNova"));
   		 	in.setIdNivelUsuario("2");
   		 	in.setNome(request.getParameter("nomeNovo"));
   		 	in.setCpf("cpf"+random_int);
   		 	in.setEndereco(endereco);
   		 	in.setBairro("bairro");
   		 	in.setCidade("cidade");
   		 	in.setCep(cep);
   		 	in.setUf("uf");
   		 	in.setTelefone(telefone);
   		 	in.setFoto("foto"); 	
   		 	in.setAtivo("N");
   		 	in.save();		
 			out.print("false");
 		}	
 	}
 	catch(Exception e)
 	{
 		e.printStackTrace();
 	}
	
%>



		
	



		
	