package br.com.treina.dog.security;

import javax.inject.Inject;

import org.apache.shiro.authz.AuthorizationException;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.security.AuthorizationRestrictionListener;
import br.com.treina.dog.controlador.LoginController;

@Controller
public class AuthController implements AuthorizationRestrictionListener {
    @Inject private Result result;

    @Override
    public void onAuthorizationRestriction(AuthorizationException e) {
        result.include("error", e.toString());
        result.forwardTo(LoginController.class).formLogin();
    }
}
