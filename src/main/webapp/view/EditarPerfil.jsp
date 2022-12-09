<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html class="windows no-js" lang="pt-BR" dir="ltr" data-country-code="BR" data-latest-firefox="104.0.1" data-esr-versions="91.13.0 102.2.0" data-gtm-container-id="GTM-MW3R8V"  data-stub-attribution-rate="1.0"  data-sentry-dsn="https://c3ab8514873549d5b3785ebc7fb83c80@o1069899.ingest.sentry.io/6260331">
  <head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
	<script type="text/javascript">
	
	$(document).ready(function(){
		$("#btnEnviar").click(function(){
			var frmData = $("#frmLogin").serialize();
			$("clear").empty();
			$.ajax({
				url : "http://localhost:8080/Notar/controller/EditarPerfil.jsp",
				data : frmData,
				type : "post",
				success : function(data){
					if (data.trim() == "false")
					{
						alert("Usuário cadastrado!");
												
					}else{
						
						alert("Usuário Já Cadastrado");
	      				//var url = "http://localhost:8080/Notar/view/login.jsp";
 						//window.location = url;
						
					}			 
				}
			});
		});		
	 });
	
	
	
	
	</script>

  <title>Web Lojinha</title>
</head>
<body class="gradient-custom" >
  <style>   
    .gradient-custom {

      /* fallback for old browsers */
      background: #6a11cb;

      /* Chrome 10-25, Safari 5.1-6 */
      background: -webkit-linear-gradient(to right, rgba(106, 17, 203, 1), rgba(37, 117, 252, 1));

      /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
      background: linear-gradient(to bottom, rgba(106, 17, 203, 1), rgb(24, 104, 242));

      
    }
    .gradient-custom2 {

      /* fallback for old browsers */
      background: #6a11cb;

      /* Chrome 10-25, Safari 5.1-6 */
      background: -webkit-linear-gradient(to left, rgb(76, 6, 151), rgba(37, 117, 252, 1));

      /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
      background: linear-gradient(to right, rgba(16, 45, 74, 0.975), rgb(1, 1, 1));
set. 21, 2022 8:57:48 PM org.apache.catalina.core.StandardWrapperValve invoke

  }
	.bordas{
    border-radius: 3rem;
    
 }
 .imgField{
 	padding-bottom:15px;
 	padding-top: 15px;
 	padding-left: 15px;
 	padding-right: 15px;
    background: #181b1e;
    border-radius: 15px;
 }
 .voltar{
 	margin-bottom: -5rem;
 }
 #botao{
 	margin-left: 5rem;
 }
  </style>  
    <section>
    <div class="container py-5 h-100">
      <div class="row d-flex justify-content-center align-items-center h-100" style="padding-bottom: 100%">
        <div class="col-12 col-md-8 col-lg-6 col-xl-5" style="margin-top:15%; margin-bottom: 24%">
          <div class="card bg-dark text-light" style="border-radius: 2rem; ;">
            <div class="card-body p-5 text-center">
              <div class="mb-md-2 mt-md-2 pb-5">
                <h2 class="fw-bold mb-2"><p style="margin-bottom:2rem">Cadastre-se</p></h2> 
  				<form id="frmLogin" method="post">
	                
	                
	              <div class="imgField"> 
					<img src="https://i.pinimg.com/564x/b7/21/57/b72157473ae510c74e7a96ccb8bd0e38.jpg" height="236" frameborder="0" scrolling="no" width="236"  class="bordas" ></img> 
   			     	<div> 
 						<input type="file" class="form-control" id="foto" name="inputFile" /> 
 			        </div> 
   			      </div> 
					  				
				  <div class="form-row" style="padding-top:15px;">				    
				    <div class="form-group col-md-6">
				      <input type="password" class="form-control" name="senha" id="senha" placeholder="Senha Atual">
				    </div>	
				    <div class="form-group col-md-6">
				      <input type="password" class="form-control" name="senhaNova" id="senhaNova" placeholder="Nova Senha">
				    </div>			  
				    <div class="form-group col-md-6">
				      <input type="text" class="form-control" name="nome" id="nome" placeholder="Usuário Atual">
				    </div>
				     <div class="form-group col-md-6">
				      <input type="text" class="form-control" name="nomeNovo" id="nomeNovo" placeholder="Novo usuário">
				    </div>		
				    <div class="form-group col-md-6">
				      <input type="text" class="form-control" name="telefone" id="telefone" placeholder="Telefone">
				    </div>
				    <div class="form-group col-md-6">
				      <input type="text" class="form-control" name="cep" id="cep" placeholder="CEP">
				    </div>
				    <div class="form-group col-md-6" id="botao">
				      <input type="text" class="form-control" name="endereco" id="endereco" placeholder="Endereço">
				    </div>
				  </div>
	                
	                
	                
	                
	                                                       
	                <p class="medium mb-2 pb-lg-2 CleargetMsg"><a class="text-white-50" id="getMsg" ></a></p>
                	<p class="mb-0"><a class="btn btn-outline-light btn-lg"  type="button" id="btnEnviar">Cadastrar</a>
	              </div>
	              <div>
                	<p class="medium mb-2 pb-lg-2"><a class="text-white-50" href="http://localhost:8080/Notar/view/login.jsp">Voltar a Tela de Login</a></p>
	              </div>
              </form>                   
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
</body>
</html>