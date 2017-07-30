package br.com.siaut.rs.requisicao.dispositivos;

public class CadastrarImovelRequisicao {

	private String token;
	private String nomeImovel;
	private Integer tipoImovel;
	private Integer nuImovel;

	public Integer getNuImovel() {
		return nuImovel;
	}
	public void setNuImovel(Integer nuImovel) {
		this.nuImovel = nuImovel;
	}
	public Integer getTipoImovel() {
		return tipoImovel;
	}
	public void setTipoImovel(Integer tipoImovel) {
		this.tipoImovel = tipoImovel;
	}
	public String getToken() {
		return token;
	}
	public void setToken(String token) {
		this.token = token;
	}
	public String getNomeImovel() {
		return nomeImovel;
	}
	public void setNomeImovel(String nomeImovel) {
		this.nomeImovel = nomeImovel;
	}
	
	
}
