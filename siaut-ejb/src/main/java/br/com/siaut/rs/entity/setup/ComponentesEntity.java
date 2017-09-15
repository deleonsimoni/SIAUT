package br.com.siaut.rs.entity.setup;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class ComponentesEntity {
	
	@Id
	@Column(name="row_number")
	private Long lngNuNumber;

	@Column(name="no_comodo")
	private String strNoComodo;
		
	@Column(name="ic_ligado")
	private String strIcLigado;
	

	public Long getLngNuNumber() {
		return lngNuNumber;
	}

	public void setLngNuNumber(Long lngNuNumber) {
		this.lngNuNumber = lngNuNumber;
	}

	public String getStrNoComodo() {
		return strNoComodo;
	}

	public void setStrNoComodo(String strNoComodo) {
		this.strNoComodo = strNoComodo;
	}

	public String getStrIcLigado() {
		return strIcLigado;
	}

	public void setStrIcLigado(String strIcLigado) {
		this.strIcLigado = strIcLigado;
	}

}
