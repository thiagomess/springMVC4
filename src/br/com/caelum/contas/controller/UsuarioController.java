package br.com.caelum.contas.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import br.com.caelum.contas.dao.UsuarioDAO;
import br.com.caelum.contas.modelo.Usuario;

@Controller
public class UsuarioController {

	@Autowired
	@Qualifier("jpaUsuarioDAO")
	private UsuarioDAO dao;
	
	@RequestMapping("/loginForm")
	public String login() {
		return "usuario/login";
	}

	@RequestMapping("/efetuaLogin")
	public String efetuaLogin(Usuario usuario, HttpSession session, RedirectAttributes redirectAttributes) {

		if (dao.existeUsuario(usuario)) {
			session.setAttribute("usuarioLogado", usuario);
			return "menu";
		}
		return "redirect:loginForm";
	}
	
	@RequestMapping("efetuaLogoff")
	public String logoff(HttpSession session) {
		session.invalidate();
		return "redirect:loginForm";
		
	}
}
