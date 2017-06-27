package br.com.siaut.rs.entity.setup;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class ComponentesEntity {

//	private Long lngId;
//	private Long lngSituacao;
	@Id
	@Column(name="nu_aut001")
	private Long lngNuAut001;
	
	@Column(name="no_comodo")
	private String strNoComodo;
	
	@Column(name="nu_aut002")
	private Long lngNuAut002;
	
	@Column(name="no_dispositivo")
	private String strNoDispositivo;
	
	@Column(name="ic_ligado")
	private String strIcLigado;
	
	
	public Long getLngNuAut001() {
		return lngNuAut001;
	}
	public void setLngNuAut001(Long lngNuAut001) {
		this.lngNuAut001 = lngNuAut001;
	}	
	public String getStrNoComodo() {
		return strNoComodo;
	}
	public void setStrNoComodo(String strNoComodo) {
		this.strNoComodo = strNoComodo;
	}
	public Long getLngNuAut002() {
		return lngNuAut002;
	}
	public void setLngNuAut002(Long lngNuAut002) {
		this.lngNuAut002 = lngNuAut002;
	}
	public String getStrNoDispositivo() {
		return strNoDispositivo;
	}
	public void setStrNoDispositivo(String strNoDispositivo) {
		this.strNoDispositivo = strNoDispositivo;
	}
	public String getStrIcLigado() {
		return strIcLigado;
	}
	public void setStrIcLigado(String strIcLigado) {
		this.strIcLigado = strIcLigado;
	}
	
	
//	public Long getLngId() {
//		return lngId;
//	}
//	public void setLngId(Long lngId) {
//		this.lngId = lngId;
//	}
//	public Long getLngSituacao() {
//		return lngSituacao;
//	}
//	public void setLngSituacao(Long lngSituacao) {
//		this.lngSituacao = lngSituacao;
//	}
		
}
