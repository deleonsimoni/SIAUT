package br.gov.caixa.entity.dispositivos;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class DispositivosEntity {

	@Id
	@Column(name="nu_aut003")
	private Integer nuDispositivo;
	
	@Column(name="nu_aut002")
	private Integer nuComodo;
	
	@Column(name="ic_ligado")
	private String icLigado;
	
	@Column(name="no_dispositivo")
	private String noDispositivo;
	
	@Column(name="tipo_dispositivo")
	private String tipoDispositivo;

	public String getNoDispositivo() {
		return noDispositivo;
	}

	public void setNoDispositivo(String noDispositivo) {
		this.noDispositivo = noDispositivo;
	}

	public Integer getNuDispositivo() {
		return nuDispositivo;
	}

	public void setNuDispositivo(Integer nuDispositivo) {
		this.nuDispositivo = nuDispositivo;
	}

	public Integer getNuComodo() {
		return nuComodo;
	}

	public void setNuComodo(Integer nuComodo) {
		this.nuComodo = nuComodo;
	}

	public String getIcLigado() {
		return icLigado;
	}

	public void setIcLigado(String icLigado) {
		this.icLigado = icLigado;
	}

	public String getTipoDispositivo() {
		return tipoDispositivo;
	}

	public void setTipoDispositivo(String tipoDispositivo) {
		this.tipoDispositivo = tipoDispositivo;
	}
	
}