package br.com.siaut.rs.requisicao.dispositivos;

public class CadastrarDispositivoRequisicao {

	private String token;
	private Integer nuComodo;
	private Integer nuTipoDispositivo;
	private Integer noDispositivo;
	private Integer nuDispositivo;

	public Integer getNuDispositivo() {
		return nuDispositivo;
	}
	public void setNuDispositivo(Integer nuDispositivo) {
		this.nuDispositivo = nuDispositivo;
	}
	public String getToken() {
		return token;
	}
	public void setToken(String token) {
		this.token = token;
	}
	public Integer getNuComodo() {
		return nuComodo;
	}
	public void setNuComodo(Integer nuComodo) {
		this.nuComodo = nuComodo;
	}
	public Integer getNuTipoDispositivo() {
		return nuTipoDispositivo;
	}
	public void setNuTipoDispositivo(Integer nuTipoDispositivo) {
		this.nuTipoDispositivo = nuTipoDispositivo;
	}
	public Integer getNoDispositivo() {
		return noDispositivo;
	}
	public void setNoDispositivo(Integer noDispositivo) {
		this.noDispositivo = noDispositivo;
	}
}
