<head>
	<title>Pessoa [show]</title>
</head>
<body>
	<p>
		<b>Nome:</b>
		${pessoa.nome}
	</p>
	<p>
		<b>Email:</b>
		${pessoa.email}
	</p>
	<p>
		<b>Cep:</b>
		${pessoa.cep}
	</p>
	<p>
		<b>Endereco:</b>
		${pessoa.endereco}
	</p>
	<p>
		<b>Complemento:</b>
		${pessoa.complemento}
	</p>
	<p>
		<b>Bairro:</b>
		${pessoa.bairro}
	</p>
	<p>
		<b>Cidade:</b>
		${pessoa.cidade}
	</p>
	<p>
		<b>Estado:</b>
		${pessoa.estado}
	</p>

	<a href="${pageContext.request.contextPath}/pessoas/${pessoa.id}/edit">Edit</a>
	<a href="${pageContext.request.contextPath}/pessoas">Back</a>
</body>