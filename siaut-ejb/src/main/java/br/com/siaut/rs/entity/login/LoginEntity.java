package br.com.siaut.rs.entity.login;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class LoginEntity {

	@Id
	@Column(name="nu_aut001")
	private Integer nuUser;
	
	@Column(name="no_usuario")
	private String noUser;

//	@Column(name="nu_documento")
//	private Long nuDocumento;
//	
//	@Column (name="ed_eletronico")
//	private String edEletronico;
//	
//	@Column(name="nu_telefone")
//	private Long nuTelefone;
//	
//	@Column(name="nu_ddd")
//	private Long nuDDD;
//	
//	@Column(name="ts_cadastro")
//	private Date tsCadastro;
//	
//	@Column(name="no_senha")
//	private String noSenha;
//	
	public void setNuUser(Integer nuUser) {
		this.nuUser = nuUser;
	}

	public void setNoUser(String noUser) {
		this.noUser = noUser;
	}

	public String getNoUser() {
		return noUser;
	}

	public Integer getNuUser() {
		return nuUser;
	}

//	public Long getNuDocumento() {
//		return nuDocumento;
//	}
//
//	public void setNuDocumento(Long nuDocumento) {
//		this.nuDocumento = nuDocumento;
//	}
//
//	public String getEdEletronico() {
//		return edEletronico;
//	}
//
//	public void setEdEletronico(String edEletronico) {
//		this.edEletronico = edEletronico;
//	}
//
//	public Long getNuTelefone() {
//		return nuTelefone;
//	}
//
//	public void setNuTelefone(Long nuTelefone) {
//		this.nuTelefone = nuTelefone;
//	}
//
//	public Long getNuDDD() {
//		return nuDDD;
//	}
//
//	public void setNuDDD(Long nuDDD) {
//		this.nuDDD = nuDDD;
//	}
//
//	public Date getTsCadastro() {
//		return tsCadastro;
//	}
//
//	public void setTsCadastro(Date tsCadastro) {
//		this.tsCadastro = tsCadastro;
//	}
//
//	public String getNoSenha() {
//		return noSenha;
//	}
//
//	public void setNoSenha(String noSenha) {
//		this.noSenha = noSenha;
//	}

	
}
