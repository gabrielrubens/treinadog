package br.com.treina.dog.repositorio;

import javax.persistence.EntityManager;

import br.com.caelum.vraptor.ioc.Component;
import br.com.treina.dog.modelo.Pessoa;

@Component
public class PessoaRepositoryImpl
    extends Repository<Pessoa, Long>
    implements PessoaRepository {

	PessoaRepositoryImpl(EntityManager entityManager) {
		super(entityManager);
	}
}
