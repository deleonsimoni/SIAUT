	package br.com.siaut.rs.retorno.login;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlElementWrapper;
import javax.xml.bind.annotation.XmlRootElement;

import br.com.siaut.rs.retorno.Retorno;
/**
 * 
 * @author SIAUT
 *
 */
@XmlRootElement
@XmlAccessorType(XmlAccessType.FIELD)
public class  LoginRetorno extends Retorno {
	@XmlElementWrapper(name="tipos")
	@XmlElement(name="tipo")
	private String usuario;
	private String token;
	private Integer nuImovel;
	
	public String getToken() {
		return token;
	}

	public void setToken(String token) {
		this.token = token;
	}
	public String getUsuario() {
		return usuario;
	}

	public void setUsuario(String usuario) {
		this.usuario = usuario;
	}

	public Integer getNuImovel() {
		return nuImovel;
	}

	public void setNuImovel(Integer nuImovel) {
		this.nuImovel = nuImovel;
	}



		
	
}