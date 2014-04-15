package br.com.treina.dog.repositorio;

import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.Query;

import br.com.treina.dog.modelo.Usuario;

public class UsuarioDAO {
	
	EntityManager entityManager;
	
	public UsuarioDAO(EntityManager entityManager) {
		this.entityManager = entityManager;
	}
	

	public Usuario selecionarUsuarioByUsername(String email) {
		try {
			Query query = entityManager.createQuery("from Usuario where email = ?");
			query.setParameter(1, email);
			
			return (Usuario) query.getSingleResult();
		} catch (NoResultException e) {
			return null;
		}
	}

}
