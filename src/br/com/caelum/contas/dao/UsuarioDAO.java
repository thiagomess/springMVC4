package br.com.caelum.contas.dao;

import br.com.caelum.contas.modelo.Usuario;

public interface UsuarioDAO {

	boolean existeUsuario(Usuario usuario);

	void insere(Usuario usuario);

}