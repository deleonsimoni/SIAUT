package br.com.siaut.rs.entity.setup;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class ConsolidadoEntity {

	@Id
	@Column(name="no_painel")
	private String strNoPainel;
	
	@Column(name="nu_itens")
	private Long lngNuItens;
	
	@Column(name="no_comodo")
	private String strNoComodo;
	
	@Column(name="no_aut009_icone")
	private String strAut009Icone;

	public String getStrNoPainel() {
		return strNoPainel;
	}

	public void setStrNoPainel(String strNoPainel) {
		this.strNoPainel = strNoPainel;
	}

	public Long getLngNuItens() {
		return lngNuItens;
	}

	public void setLngNuItens(Long lngNuItens) {
		this.lngNuItens = lngNuItens;
	}

	public String getStrNoComodo() {
		return strNoComodo;
	}

	public void setStrNoComodo(String strNoComodo) {
		this.strNoComodo = strNoComodo;
	}

	public String getStrAut009Icone() {
		return strAut009Icone;
	}

	public void setStrAut009Icone(String strAut009Icone) {
		this.strAut009Icone = strAut009Icone;
	}
			
}
