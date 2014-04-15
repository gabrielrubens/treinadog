package br.com.treina.dog.repositorio;

import javax.persistence.EntityManager;
import javax.inject.Inject;

import br.com.treina.dog.modelo.Pessoa;

public class PessoaRepositoryImpl
    extends Repository<Pessoa, Long>
    implements PessoaRepository {

	@Inject
	PessoaRepositoryImpl(EntityManager entityManager) {
		super(entityManager);
	}
}
