package br.com.caelum.contas.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.caelum.contas.dao.ContaDAO;
import br.com.caelum.contas.modelo.Conta;

@Controller
public class ContaController {

	@RequestMapping("/form")
	public String inicio() {
		return "conta/formulario";
	}

	@RequestMapping("/adicionaConta")
	public String adiciona(Conta conta) {
		System.out.println("Cadastrando conta: " + conta.getDescricao());
		
	    ContaDAO dao = new ContaDAO();
	    dao.adiciona(conta);
	    return "conta/conta-adicionada";
	  }
}
