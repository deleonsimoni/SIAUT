package br.com.siaut.rs.entity.login;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class ComodoEntity {

	@Id
	@Column(name="nu_aut001")
	private Integer intNuUser;
	
	@Column(name="nu_aut002")
	private Integer intNuComodo;
	
	@Column (name="nu_aut003")
	private Integer intNuDispositivo;
	
	@Column(name="no_comodo")
	private String strNoComodo;
	
	@Column(name="im_comodo")
	private String strImComodo;
	
	@Column(name= "ts_cadastro_comodo")
	private Date dtTsCadastroComodo;
	
	@Column (name= "no_dispositivo")
	private String strNoDispositivo;
	
	@Column (name= "ic_ligado")
	private String strIcLigado;
	
	@Column (name= "ts_cadastro_dispositivo")
	private String strTsCadastroDispositivo;

	public Integer getIntNuUser() {
		return intNuUser;
	}

	public void setIntNuUser(Integer intNuUser) {
		this.intNuUser = intNuUser;
	}

	public Integer getIntNuComodo() {
		return intNuComodo;
	}

	public void setIntNuComodo(Integer intNuComodo) {
		this.intNuComodo = intNuComodo;
	}

	public Integer getIntNuDispositivo() {
		return intNuDispositivo;
	}

	public void setIntNuDispositivo(Integer intNuDispositivo) {
		this.intNuDispositivo = intNuDispositivo;
	}

	public String getStrNoComodo() {
		return strNoComodo;
	}

	public void setStrNoComodo(String strNoComodo) {
		this.strNoComodo = strNoComodo;
	}

	public String getStrImComodo() {
		return strImComodo;
	}

	public void setStrImComodo(String strImComodo) {
		this.strImComodo = strImComodo;
	}

	public Date getDtTsCadastroComodo() {
		return dtTsCadastroComodo;
	}

	public void setDtTsCadastroComodo(Date dtTsCadastroComodo) {
		this.dtTsCadastroComodo = dtTsCadastroComodo;
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

	public String getStrTsCadastroDispositivo() {
		return strTsCadastroDispositivo;
	}

	public void setStrTsCadastroDispositivo(String strTsCadastroDispositivo) {
		this.strTsCadastroDispositivo = strTsCadastroDispositivo;
	}
	
	
}
