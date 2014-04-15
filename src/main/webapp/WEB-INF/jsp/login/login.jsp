<html>
<head>
<%@ page contentType="text/html; charset=UTF-8"%>

<script>
	$(document).ready(function() {
		$("#content").removeClass("content");
		$("#content").addClass("container");
	});
</script>

</head>
<body>

		<div class="row">
			<div class="col-md-4 col-md-offset-4">
				<div class="login-panel panel panel-default">
					<div class="panel-heading">
						<h3 class="panel-title">Faça seu login</h3>
					</div>
					<div class="panel-body">
						<fieldset>
							<form action="${path}/autenticar" method="post">
								<div class="form-group">
									<input class="form-control" placeholder="Digite seu E-mail"
										name="usuario.email" type="email" autofocus>
								</div>
								<div class="form-group">
									<input class="form-control" placeholder="Digite sua senha"
										name="usuario.senha" type="password" value="">
								</div>
								<input type="submit" value="Acessar"
									class="btn btn-lg btn-success btn-block" />
							</form>
						</fieldset>
					</div>
				</div>
			</div>
		</div>
</body>
</html>