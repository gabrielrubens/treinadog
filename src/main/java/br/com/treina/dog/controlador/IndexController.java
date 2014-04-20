package br.com.treina.dog.controlador;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;

@Controller
public class IndexController {

	@Get(value={"/index","/"})
	public void index() {
	}

}
