	package br.com.siaut.rs.retorno.teste;
import java.util.ArrayList;
import java.util.List;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlElementWrapper;
import javax.xml.bind.annotation.XmlRootElement;

import br.com.siaut.rs.entity.teste.CadastrotesteEntity;
import br.com.siaut.rs.retorno.Retorno;
/**
 * 
 * @author SIOGP
 *
 */
@XmlRootElement
@XmlAccessorType(XmlAccessType.FIELD)
public class  CadastrotesteRetorno extends Retorno {
	@XmlElementWrapper(name="tipos")
	@XmlElement(name="tipo")
	private List<CadastrotesteEntity> data;
	public CadastrotesteRetorno() {
		data = new ArrayList<CadastrotesteEntity>();		
	}
	public List<CadastrotesteEntity> getData() {
		return data;
	}
	public void setData(List<CadastrotesteEntity> data) {
		this.data = data;
	}
}

