package br.com.caelum.contas.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;

import br.com.caelum.contas.modelo.Usuario;

@Repository
public class JpaUsuarioDAO implements UsuarioDAO {

	@PersistenceContext
	private EntityManager manager;
	
	
	@Override
	public boolean existeUsuario(Usuario usuario) {
		String jpql = "select u from Usuario u where u.login = :pLogin and u.senha = :pSenha";
		 List<Usuario> resultado = manager.createQuery(jpql, Usuario.class)
				.setParameter("pLogin", usuario.getLogin())
				.setParameter("pSenha", usuario.getSenha())
				.getResultList();
		return resultado.size() >= 1 ? true : false;

	}

	@Override
	public void insere(Usuario usuario) {
		manager.persist(usuario);
	}
	
}

