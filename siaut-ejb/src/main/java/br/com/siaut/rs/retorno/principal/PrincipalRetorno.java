	package br.com.siaut.rs.retorno.principal;
import java.util.ArrayList;
import java.util.List;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlElementWrapper;
import javax.xml.bind.annotation.XmlRootElement;

import br.com.siaut.rs.entity.principal.PrincipalEntity;
import br.com.siaut.rs.retorno.Retorno;
/**
 * 
 * @author SIOGP
 *
 */
@XmlRootElement
@XmlAccessorType(XmlAccessType.FIELD)
public class  PrincipalRetorno extends Retorno {
	@XmlElementWrapper(name="tipos")
	@XmlElement(name="tipo")
	private List<PrincipalEntity> data;
	public PrincipalRetorno() {
		data = new ArrayList<PrincipalEntity>();		
	}
	public List<PrincipalEntity> getData() {
		return data;
	}
	public void setData(List<PrincipalEntity> data) {
		this.data = data;
	}
}

