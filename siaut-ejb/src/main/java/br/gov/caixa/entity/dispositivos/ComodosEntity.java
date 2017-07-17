package br.gov.caixa.entity.dispositivos;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class ComodosEntity {

	@Id
	@Column(name="nu_aut002")
	private Long nuComodo;
	
	@Column(name="nu_aut011")
	private Long nuImovel;
	
	@Column(name="no_comodo")
	private String noComodo;
	
	@Column(name="im_comodo")
	private String imComodo;
	
	@Column(name="no_cor_painel")
	private String noCorComodo;
	
	@Column(name="no_icone")
	private String noIcone;
	
	@Column(name="qt_itens")
	private Integer qtItens;

	public Long getNuComodo() {
		return nuComodo;
	}

	public void setNuComodo(Long nuComodo) {
		this.nuComodo = nuComodo;
	}

	public Long getNuImovel() {
		return nuImovel;
	}

	public void setNuImovel(Long nuImovel) {
		this.nuImovel = nuImovel;
	}

	public String getNoComodo() {
		return noComodo;
	}

	public void setNoComodo(String noComodo) {
		this.noComodo = noComodo;
	}

	public String getImComodo() {
		return imComodo;
	}

	public void setImComodo(String imComodo) {
		this.imComodo = imComodo;
	}

	public String getNoCorComodo() {
		return noCorComodo;
	}

	public void setNoCorComodo(String noCorComodo) {
		this.noCorComodo = noCorComodo;
	}

	public String getNoIcone() {
		return noIcone;
	}

	public void setNoIcone(String noIcone) {
		this.noIcone = noIcone;
	}

	public Integer getQtItens() {
		return qtItens;
	}

	public void setQtItens(Integer qtItens) {
		this.qtItens = qtItens;
	}
}