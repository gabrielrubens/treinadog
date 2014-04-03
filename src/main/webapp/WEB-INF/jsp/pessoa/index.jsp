<head>
	<title>Pessoa [index]</title>
	<%@ page contentType="text/html; charset=UTF-8" %>
</head>
<body>
	
	<p>
		<a href="${path}/pessoas/new" class="btn btn-default">Incluir</a>
	</p> 
	<table class="table table-striped table-hover" style="font-size: 15px;">
		<tr>
			<th></th>
			<th>Nome</th>
			<th>Email</th>
			<th>Cep</th>
			<th>Endereço</th>
			<th>Complemento</th>
			<th>Bairro</th>
			<th>Cidade</th>
			<th>Estado</th>
			<th></th>
		</tr>

		<c:forEach items="${pessoaList}" var="pessoa" varStatus="cont" >
			<tr>
				<td><a href="${path}/pessoas/${pessoa.id}/edit" >0000${cont.count}</a></td>
				<td>${pessoa.nome}</td>
				<td>${pessoa.email}</td>
				<td>${pessoa.cep}</td>
				<td>${pessoa.endereco}</td>
				<td>${pessoa.complemento}</td>
				<td>${pessoa.bairro}</td>
				<td>${pessoa.cidade}</td>
				<td>${pessoa.estado}</td>
				<td>
					<form action="${path}/pessoas/${pessoa.id}" method="post">
						<input type="hidden" name="_method" value="delete"/>
						<button type="submit" class= "btn btn-danger" onclick="return confirm('Você tem certeza?')">Excluir</button>
					</form>
				</td>
			</tr>
		</c:forEach>
	</table>

</body>