<c:if test="${not empty errors}">
	<c:forEach items="${errors}" var="error">
		${error.category} - ${error.message}<br />
	</c:forEach>
</c:if>

<form action="${path}/pessoas" method="post" class="form-horizontal">
  
	<c:if test="${not empty pessoa.id}">
		<input type="hidden" name="pessoa.id" value="${pessoa.id}"/>
		<input type="hidden" name="_method" value="put"/>
	</c:if>

<div class="actions form-actions">
	  <button type="submit" class="btn btn-primary">Salvar</button>
	  <a href="${path}/pessoas" class="btn">Cancelar</a>
	</div>
  <div class="control-group">
  
  
    <label class="control-label" for="Nome">Nome</label>
    <div class="controls">
      <input type="text" name="pessoa.nome" value="${pessoa.nome}" placeholder="Nome"/>
    </div>
  </div>
  
  <div class="control-group">
    <label class="control-label" for="E">Email</label>
    <div class="controls">
      <input type="text" name="pessoa.email" value="${pessoa.email}" placeholder="Email"/>
    </div>
  </div>
  
  <div class="control-group">
    <label class="control-label" for="cep">Cep</label>
    <div class="controls">
      <input type="text" name="pessoa.cep" value="${pessoa.cep}" placeholder="Cep"/>
    </div>
  </div>
  
  <div class="control-group">
    <label class="control-label" for="Endereco">Endereço</label>
    <div class="controls">
      <input type="text" name="pessoa.endereco" value="${pessoa.endereco}" placeholder="Endereco"/>
    </div>
  </div>
  
  <div class="control-group">
    <label class="control-label" for="Complemento">Complemento</label>
    <div class="controls">
      <input type="text" name="pessoa.complemento" value="${pessoa.complemento}" placeholder="Complemento"/>
    </div>
  </div>
  
  <div class="control-group">
    <label class="control-label" for="Cidade">Bairro</label>
    <div class="controls">
      <input type="text" name="pessoa.bairro" value="${pessoa.bairro}" placeholder="Bairro"/>
    </div>
  </div>
  
  <div class="control-group">
    <label class="control-label" for="Cidade">Cidade</label>
    <div class="controls">
      <input type="text" name="pessoa.cidade" value="${pessoa.cidade}" placeholder="Cidade"/>
    </div>
  </div>
  
  <div class="control-group">
    <label class="control-label" for="Estado">Estado</label>
    <div class="controls">
      <input type="text" name="pessoa.estado" value="${pessoa.estado}" placeholder="Estado"/>
    </div>
  </div>
  
</form>