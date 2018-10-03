package br.com.caelum.contas.dao;

import java.util.Calendar;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;

import br.com.caelum.contas.modelo.Conta;

@Repository
public class JpaContaDAO implements ContaDAO {
	
	@PersistenceContext
    private EntityManager manager;
	
	public void adiciona(Conta conta) {
		manager.persist(conta);
	}

	public List<Conta> lista() {
		String jpql = "select c from Conta c";
		return manager.createQuery(jpql, Conta.class).getResultList();
	}

	@Override
	public void remove(Conta conta) {
		manager.remove(manager.merge(conta));
	}

	@Override
	public void altera(Conta conta) {
		manager.merge(conta);
	}

	@Override
	public Conta buscaPorId(Long id) {
		return manager.find(Conta.class, id);
	}

	@Override
	public void paga(Long id) {
		Conta conta = buscaPorId(id);
		conta.setPaga(true);
		conta.setDataPagamento(Calendar.getInstance());
		manager.merge(conta);
		
	}

}
