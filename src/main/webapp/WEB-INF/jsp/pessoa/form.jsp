<c:if test="${not empty errors}">
	<c:forEach items="${errors}" var="error">
		${error.category} - ${error.message}<br />
	</c:forEach>
</c:if>

<form action="${path}/pessoas" method="post" class="form-horizontal">

	<c:if test="${not empty pessoa.id}">
		<input type="hidden" name="pessoa.id" value="${pessoa.id}" />
		<input type="hidden" name="_method" value="put" />
	</c:if>


<div id="pad-wrapper" class="form-page">
	<div class="actions form-actions">
		<button type="submit" class="btn-glow primary">Salvar</button>
		<a href="${path}/pessoas" class="btn">Cancelar</a>
	</div>
	</div>


	<div id="pad-wrapper" class="form-page">
		<!-- left column -->
		<div class="col-md-8 column">
			<label>Nome:</label>
			<div class="col-md-7">
				<input type="text" name="pessoa.nome" class="form-control"
					value="${pessoa.nome}" placeholder="Nome" />
			</div>
		</div>

		<!-- left column -->
		<div class="col-md-8 column">
			<label>Email:</label>
			<div class="col-md-7">
				<input type="text" name="pessoa.email" class="form-control"
					value="${pessoa.email}" placeholder="Email" />
			</div>
		</div>

		<div class="col-md-8 column">
			<label>Endereço:</label>
			<div class="col-md-7">
				<input type="text" name="pessoa.endereco" class="form-control"
					value="${pessoa.endereco}" placeholder="Endereco" />
			</div>
		</div>
		<div class="col-md-8">
			<label>Complemento:</label>
			<div class="col-md-7">
				<input type="text" name="pessoa.complemento" class="form-control"
					value="${pessoa.complemento}" placeholder="Complemento" />
			</div>
		</div>
		
		<div class="col-md-8">
			<label>Bairro:</label>
			<div class="col-md-7">
				<input type="text" name="pessoa.bairro" class="form-control"
					value="${pessoa.bairro}" placeholder="Bairro" />
			</div>
		</div>

		<div class="col-md-8">
			<label>Cidade:</label>
			<div class="col-md-7">
				<input type="text" name="pessoa.cidade" class="form-control"
					value="${pessoa.cidade}" placeholder="Cidade" />
			</div>
		</div>
		
		<div class="col-md-8">
			<label>Estado:</label>
			<div class="col-md-7">
				<input type="text" name="pessoa.estado" class="form-control"
					value="${pessoa.estado}" placeholder="Estado" />
			</div>
		</div>

	</div>

</form>