package br.com.caelum.contas.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
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

	//Para efetuar a validação, precisamos marcar com a anotação @Valid e o BindingResult como parametro.
	@RequestMapping("/adicionaConta")
	public String adiciona(@Valid Conta conta, BindingResult result) {
		//verifica se tem erro no result, caso sim, retorna pra mesma pagina e exibe message
		if (result.hasErrors()) {
			return "conta/formulario";
		}
		System.out.println("Cadastrando conta: " + conta.getDescricao());
		ContaDAO dao = new ContaDAO();
		dao.adiciona(conta);
		return "redirect:listaContas"; // redireciona para a o metodo lista
	}

//	Para mandar para a JSP deve ser retorno ModelAndView Pacote org.springframework.web.servlet.ModelAndView;
	@RequestMapping("/listaContas")
	public ModelAndView lista() {

		ContaDAO dao = new ContaDAO();
		List<Conta> contas = dao.lista();
		ModelAndView mv = new ModelAndView("conta/lista"); // Adiciona o caminho da pagina no construtor
		mv.addObject("todasContas", contas); // adiciona a lista

		return mv;
	}

	@RequestMapping("/removerConta")
	public String remover(Conta conta) {
		ContaDAO dao = new ContaDAO();
		dao.remove(conta);

		return "redirect:listaContas"; // redireciona para a o metodo lista
	}

	@RequestMapping("/mostraConta")
	public String mostraConta(long id, Model model) {
		ContaDAO dao = new ContaDAO();
		model.addAttribute("conta", dao.buscaPorId(id));

		return "conta/mostra";
	}

	@RequestMapping("/alteraConta")
	public String altera(Conta conta) {
		ContaDAO dao = new ContaDAO();
		dao.altera(conta);

		return "redirect:listaContas";

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
