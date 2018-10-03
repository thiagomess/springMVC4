package br.com.caelum.contas.modelo;

import java.util.Calendar;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.validation.constraints.Digits;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
public class Conta {
	
	//As mensagens de validações vem do arquivo ValidationMessages.properties nos SRC
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long id;
	@NotNull(message="{conta.form.descricao.obrigatoria}")
	@Size(min=5, message="{conta.form.descricao.tamanho}")
	private String descricao;
	private boolean paga;
	@NotNull(message="{conta.form.valor}")
	@Digits(integer=10, fraction=2)
	private Double valor;
	@DateTimeFormat(pattern="dd/MM/yyyy")
	private Calendar dataPagamento;
	private TipoDaConta tipo;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getDescricao() {
		return descricao;
	}

	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}

	public boolean isPaga() {
		return paga;
	}

	public void setPaga(boolean paga) {
		this.paga = paga;
	}

	public Calendar getDataPagamento() {
		return dataPagamento;
	}

	public void setDataPagamento(Calendar dataPagamento) {
		this.dataPagamento = dataPagamento;
	}

	public TipoDaConta getTipo() {
		return tipo;
	}

	public void setTipo(TipoDaConta tipo) {
		this.tipo = tipo;
	}

	public Double getValor() {
		return valor;
	}	
	
	public void setValor(Double valor) {
		this.valor = valor;
	}

}
