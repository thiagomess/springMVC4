package br.com.caelum.contas.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

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
	
	
//	Para mandar para a JSP deve ser retorno ModelAndView Pacote org.springframework.web.servlet.ModelAndView;
	@RequestMapping("/listaContas")
	public ModelAndView lista() {
		
		ContaDAO dao = new ContaDAO();
		List<Conta> contas = dao.lista();
		ModelAndView mv = new ModelAndView("conta/lista"); //Adiciona o caminho da pagina no construtor
		mv.addObject("todasContas", contas); //adiciona a lista
		
		return mv;
		
	}
	
// A lista tambem pode ser feita desse modo, onde recebemos o Model no metodo como param	
//	@RequestMapping("/listaContas")
//	public String lista(Model mv) {
//	  ContaDAO dao = new ContaDAO();
//	  List<Conta> contas = dao.lista();
//
//	  mv.addAttribute("todasContas", contas);
//	  return "conta/lista";
//	}
}
