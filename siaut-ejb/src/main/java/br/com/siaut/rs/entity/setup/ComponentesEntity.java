package br.com.siaut.rs.entity.setup;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class ComponentesEntity {
	
	@Id
	@Column(name="row_number")
	private Long lngNuNumber;
	
	@Column(name="nu_aut002")
	private Long lngNuAut002;
	
	@Column(name="no_comodo")
	private String strNoComodo;
		
	@Column(name="ic_ligado")
	private String strIcLigado;
	
	@Column(name="no_dispositivo")
	private String strNoDispositivo;
	
	@Column(name="no_cor_painel")
	private String strNoCorPainel;

	@Column(name="no_icone")
	private String strNoIcone;

	public Long getLngNuNumber() {
		return lngNuNumber;
	}

	public void setLngNuNumber(Long lngNuNumber) {
		this.lngNuNumber = lngNuNumber;
	}

	public Long getLngNuAut002() {
		return lngNuAut002;
	}

	public void setLngNuAut002(Long lngNuAut002) {
		this.lngNuAut002 = lngNuAut002;
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

	public String getStrNoDispositivo() {
		return strNoDispositivo;
	}

	public void setStrNoDispositivo(String strNoDispositivo) {
		this.strNoDispositivo = strNoDispositivo;
	}

	public String getStrNoCorPainel() {
		return strNoCorPainel;
	}

	public void setStrNoCorPainel(String strNoCorPainel) {
		this.strNoCorPainel = strNoCorPainel;
	}

	public String getStrNoIcone() {
		return strNoIcone;
	}

	public void setStrNoIcone(String strNoIcone) {
		this.strNoIcone = strNoIcone;
	}
	
}
