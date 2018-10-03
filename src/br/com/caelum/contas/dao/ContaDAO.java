package br.com.caelum.contas.dao;

import java.util.List;

import br.com.caelum.contas.modelo.Conta;

public interface ContaDAO {

	void adiciona(Conta conta);

	void remove(Conta conta);

	void altera(Conta conta);

	List<Conta> lista();

	Conta buscaPorId(Long id);

	void paga(Long id);

}