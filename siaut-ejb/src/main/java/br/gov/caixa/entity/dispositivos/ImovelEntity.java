package br.gov.caixa.entity.dispositivos;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class ImovelEntity {

	@Id
	@Column(name="nu_aut011")
	private Integer nuImovel;
	
	@Column(name="no_imovel")
	private String noImovel;

	public Integer getNuImovel() {
		return nuImovel;
	}

	public void setNuImovel(Integer nuImovel) {
		this.nuImovel = nuImovel;
	}

	public String getNoImovel() {
		return noImovel;
	}

	public void setNoImovel(String noImovel) {
		this.noImovel = noImovel;
	}

}
