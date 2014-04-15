package br.com.treina.dog.controlador;

import java.util.List;

import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Delete;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Put;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.validator.Validator;
import br.com.treina.dog.modelo.Pessoa;
import br.com.treina.dog.repositorio.PessoaRepository;

@Controller
public class PessoaController {

	@Inject private final Result result;
	@Inject private final PessoaRepository repository;
	
	private final Validator validator;
	
	public PessoaController(Result result, PessoaRepository repository, 
	Validator validator) {
		this.result = result;
		this.repository = repository;
	
		this.validator = validator;
	}
	
	
	@Get("/pessoas")
	public List<Pessoa> index() {
		return repository.findAll();
	}
	
	@Post("/pessoas")
	public void create(Pessoa pessoa) {
		validator.onErrorUsePageOf(this).newPessoa();
		repository.create(pessoa);
		result.redirectTo(this).index();
	}
	
	@Get("/pessoas/new")
	public Pessoa newPessoa() {
		return new Pessoa();
	}
	
	@Put("/pessoas")
	public void update(Pessoa pessoa) {
		validator.onErrorUsePageOf(this).edit(pessoa);
		repository.update(pessoa);
		result.redirectTo(this).index();
	}
	
	@Get("/pessoas/{pessoa.id}/edit")
	public Pessoa edit(Pessoa pessoa) {
		
		return repository.find(pessoa.getId());
	}

	@Get("/pessoas/{pessoa.id}")
	public Pessoa show(Pessoa pessoa) {
		return repository.find(pessoa.getId());
	}

	@Delete("/pessoas/{pessoa.id}")
	public void destroy(Pessoa pessoa) {
		repository.destroy(repository.find(pessoa.getId()));
		result.redirectTo(this).index();  
	}
}