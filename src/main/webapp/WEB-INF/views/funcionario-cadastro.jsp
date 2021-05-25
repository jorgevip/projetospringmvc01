<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Home</title>

<!-- Referencia para arquivos CSS -->
<link rel="stylesheet" href="resources/css/bootstrap.min.css" />

<!-- Estilo CSS para o jquery validate -->
<style>
	label.error {/*formata as mensagens de erro*/
			color: #d9534f;	
	}
	input.error {/*formata os campos com erro*/
			border: 1px solid #d9534f;			
	}
		
	select.error {/*formata os campos com erro*/
			border: 1px solid #d9534f;			
	}
</style>

</head>
<body>

	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
		<div class="container-fluid">
			<a class="navbar-brand" href="#">Controle de Funcionários</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0">
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="/projetoSpringMVC01/">Página inicial</a></li>
					<li class="nav-item dropdown">
					<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
						role="button" data-bs-toggle="dropdown" aria-expanded="false">
							Gerenciar Funcionários 
					</a>
					<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
							<li><a class="dropdown-item" href="/projetoSpringMVC01/funcionario-cadastro">Cadastrar Funcionários</a></li>
							<li><a class="dropdown-item" href="/projetoSpringMVC01/funcionario-consulta">Consultar Funcionários</a></li>
							<li><hr class="dropdown-divider"></li>
							<li><a class="dropdown-item" href="/projetoSpringMVC01/funcionario-relatorio">Relatório de Funcionários</a></li>
					</ul></li>
				</ul>
			</div>
		</div>
	</nav>
	
	<div class="nav-scroller bg-body shadow-sm">
		<nav class="nav nav-underline">
			<p class="mt-3 ml-4">
				&nbsp;&nbsp;&nbsp;Sistema desenvolvido em Spring MVC com Spring JDBC, Bootstrap e JQuery
			</p>
		</nav>
	</div>

	<div class="container mt-4">
		<h5>Cadastro de Funcionário</h5>
		<hr/>
		
		<form id="formcadastro" action="cadastrarFuncionario" method="post">
		
			<div class="row">
			
				<div class="col-md-4">
					
					<label>Nome do Funcionário:</label>
					<form:input path="dto.nome" name="nome" id="nome" type="text" class="form-control" placeholder="Ex: João da Silva"/>
					<br/>
					
					<label>CPF:</label>
					<form:input path="dto.cpf" name="cpf" id="cpf" type="text" class="form-control" placeholder="Ex: 123.456.789-00"/>
					<br/>
					
					<label>Matrícula:</label>
					<form:input path="dto.matricula" name="matricula" id="matricula" type="text" class="form-control" placeholder="Ex: 2021-0001"/>
					<br/>

				</div>
				
				<div class="col-md-4">
					
					<label>Data de Admissão:</label>
					<form:input path="dto.dataadmissao" name="dataadmissao" id="dataadmissao" type="date" class="form-control"/>
					<br/>
					
					<label>Situação do Funcionário:</label>
					<form:select path="dto.situacao" name="situacao" id="situacao" class="form-select">
						<option value="">Escolha uma opção</option>
						<option value="Admitido">Funcionário Admitido</option>
						<option value="Férias">Funcionário de Férias</option>
						<option value="Afastado">Funcionário Afastado</option>
						<option value="Demitido">Funcionário Demitido</option>
					</form:select>
					<br/>

				</div>
			
			</div>
			
			<div class="row">
				<div class="col-md-4">
				
					<div class="d-grid gap-2">
  						<button class="btn btn-success" type="submit">Realizar Cadastro</button>
					</div>
				
				</div>
			</div>
		
		</form>
		
		<div class="mt-3">
			<strong>${mensagem}</strong>
		
		</div>
		
		
	</div>

	<!-- Referencia para arquivos JS -->
	<script src="resources/js/bootstrap.min.js"></script>
	
	<!-- Referencia para o jquery -->
	<script src="resources/js/jquery-3.6.0.min.js"></script>

	<script src="resources/js/jquery.maskedinput.min.js"></script>
	
	<!-- Referencia para o jquery validate -->
	
	<script src="resources/js/jquery.validate.min.js"></script>
	
	<script src="resources/js/messages_pt_BR.min.js"></script>
	
	<script> 
		$(document).ready(function(){
		$("#cpf").mask("999.999.999-99");
		$("#matricula").mask("9999-999");
		
		//aplicar validacao ao formulário
		
		$("#formcadastro").validate({
			rules :{
				"nome" :{
					required : true,
					minlength : 6,
					maxlength :150	
				},
				
				"cpf" :{
					required : true	
				},
				
				"matricula" :{
					required : true
				},
				
				"dataadmissao" :{
					required : true
				},
				
				"situacao" :{
					required : true
				}
			}
			
		})
	})
	</script>

</body>
</html>

