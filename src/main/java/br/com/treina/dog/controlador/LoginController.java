package br.com.treina.dog.controlador;

import javax.inject.Inject;

import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Post;

@Controller
public class LoginController {

	@Inject Subject currentUser;
	
	@Get("/login")
	public void formLogin() {
		
	}
	

	@Post("/autenticar")
	public void login(String usuario, String senha){
		
		currentUser.login(new UsernamePasswordToken(usuario, senha, true));
		
	}
	
	@Get("/logout")
	public void logout(){
		currentUser.logout();
	}
	

}

