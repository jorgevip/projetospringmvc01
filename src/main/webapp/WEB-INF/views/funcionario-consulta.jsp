<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Home</title>

<!-- Referencia para arquivos CSS -->
<link rel="stylesheet" href="resources/css/bootstrap.min.css" />
<link rel="stylesheet" href="resources/css/jquery.dataTables.min.css" />

<!-- Estilo CSS para o jquery validate -->
<style>
	label.error {/*formata as mensagens de erro*/
			color: #d9534f;	
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
		<h5>Consulta de funcionários</h5>
		<hr/>
		
		<form id="formconsulta">
		
			<div class="row">
			
				<div class="col-md-4">
				
					<select name="situacao" id="situacao" class="form-select">
						<option value="">Selecione a Situação do Funcionário:</option>
						<option value="Admitido">Funcionário Admitido</option>
						<option value="Ferias">Funcionário de Férias</option>
						<option value="Afastado">Funcionário Afastado</option>
						<option value="Demitido">Funcionário Demitido</option>
					</select>
					
					
					</div>
					
					<div class="col-md-4">
							<input type="submit" value="Realizar Pesquisa" class="btn btn-success"/>
					</div>
			
			</div>	
		
		</form>
		
		<table id="tabelafuncionarios" class="table table-striped">
			<thead>
				<tr>
					<th>Nome do Funcionário</th>
					<th>CPF</th>
					<th>Matrícula</th>
					<th>Data de Admissão</th>
					<th>Situação</th>
					<th>Operações</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td>
						<a href="#" class="btn btn-primary btn-sm">Editar</a>
						<a href="#" class="btn btn-danger btn-sm">Excluir</a>
					</td>
				</tr>
			</tbody>
			<tfoot>
				<tr>
					<td colspan="6">Quantidade de funcionários: 0</td>
				</tr>
			</tfoot>
		</table>
		
	</div>

		<!-- Referencia para arquivos JS -->
	<script src="resources/js/bootstrap.min.js"></script>
	
	<!-- Referencia para o jquery -->
	<script src="resources/js/jquery-3.6.0.min.js"></script>
	
	<!-- Referencia para o jquery validate -->
	
	<script src="resources/js/jquery.validate.min.js"></script>
	
	<script src="resources/js/messages_pt_BR.min.js"></script>
	
	<!-- Referencia para o DataTable-->
	
	<script src="resources/js/jquery.dataTables.min.js"></script>
	
	
	
	<script> 
		$(document).ready(function(){
		//aplicar validacao ao formulário
		
		$("#formconsulta").validate({
			rules :{		
				"situacao" :{
					required : true
				}
			}
			
		});
		
		$("#tabelafuncionarios").DataTable({
			        language: {
			            url: '//cdn.datatables.net/plug-ins/1.10.24/i18n/Portuguese-Brasil.json'
			        }
		});	
		
	})
		
	</script>

</body>
</html>