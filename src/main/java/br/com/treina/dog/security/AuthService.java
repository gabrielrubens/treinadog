package br.com.treina.dog.security;

import java.util.Set;

import javax.inject.Inject;

import br.com.caelum.vraptor.security.Permission;
import br.com.caelum.vraptor.security.User;
import br.com.treina.dog.modelo.Usuario;
import br.com.treina.dog.repositorio.UsuarioDAO;


public class AuthService implements Permission{

	@Inject UsuarioDAO usuarioDAO;
	
	@Override
	public User getUserByUsername(String username) {
		Usuario usuario = usuarioDAO.selecionarUsuarioByUsername(username);
        return new User(usuario.getEmail(), usuario.getSenha());
	}

	@Override
	public Set<String> getRolesByUser(String user) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Set<String> getPermissionsByRole(String role) {
		// TODO Auto-generated method stub
		return null;
	}


}
