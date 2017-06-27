package br.com.siaut.requisicao.usuario;

public class CadastroRequisicao {

	
	private String nomeUsuario;
	private String email;
	private String senha;
	private Long ddd;
	private Long telefone;
	private Long documento;

	public Long getDdd() {
		return ddd;
	}
	public void setDdd(Long ddd) {
		this.ddd = ddd;
	}
	public Long getTelefone() {
		return telefone;
	}
	public void setTelefone(Long telefone) {
		this.telefone = telefone;
	}
	public Long getDocumento() {
		return documento;
	}
	public void setDocumento(Long documento) {
		this.documento = documento;
	}
	public String getNomeUsuario() {
		return nomeUsuario;
	}
	public void setNomeUsuario(String nomeUsuario) {
		this.nomeUsuario = nomeUsuario;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getSenha() {
		return senha;
	}
	public void setSenha(String senha) {
		this.senha = senha;
	}
	
}
