<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<!-- Marca o inicio da pagina  -->
<head>
<!-- cabeçalho da pagina e  -->
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Home</title>

<!-- referência para arquivos css -->
<link rel="stylesheet" href="resources/css/bootstrap.min.css" />

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
						aria-current="page" href="#">Página Inicial</a></li>
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
						role="button" data-bs-toggle="dropdown" aria-expanded="false">
							Gerenciar Funcionários </a>
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
	
	<div class="nav-scrooler bg-body shadow-sm">
		<nav class="nav nav-underline">
			<p class="mt-3 ml-4">
				<a>
				&nbsp;&nbsp;&nbsp;&nbsp;Sistema Desenvolvido em Spring MVC com Spring JDBC, Bootstrap e JQuery
				</a>
			</p>
		</nav>	
	</div>	
	
	<div class="container mt-4">
		<h3>Seja Bem Vindo ao Projeto!</h3>
	</div>	
	<!-- referência para arquivos css -->
	<script src="resources/js/bootstrap.min.js"></script>
</body>
</html>
