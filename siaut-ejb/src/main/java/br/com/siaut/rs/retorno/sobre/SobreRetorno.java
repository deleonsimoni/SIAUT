	package br.com.siaut.rs.retorno.sobre;
import java.util.ArrayList;
import java.util.List;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlElementWrapper;
import javax.xml.bind.annotation.XmlRootElement;

import br.com.siaut.rs.entity.sobre.SobreEntity;
import br.com.siaut.rs.retorno.Retorno;
/**
 * 
 * @author SIAUT
 *
 */
@XmlRootElement
@XmlAccessorType(XmlAccessType.FIELD)
public class  SobreRetorno extends Retorno {
	@XmlElementWrapper(name="tipos")
	@XmlElement(name="tipo")
	private List<SobreEntity> data;
	public SobreRetorno() {
		data = new ArrayList<SobreEntity>();		
	}
	public List<SobreEntity> getData() {
		return data;
	}
	public void setData(List<SobreEntity> data) {
		this.data = data;
	}
}

