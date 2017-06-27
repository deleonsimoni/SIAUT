package br.com.siaut.rs.retorno.componentes;
import java.util.ArrayList;
import java.util.List;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlElementWrapper;
import javax.xml.bind.annotation.XmlRootElement;

import br.com.siaut.rs.entity.setup.ComponentesEntity;
import br.com.siaut.rs.retorno.Retorno;
/**
 * 
 * @author SIAUT
 *
 */
@XmlRootElement
@XmlAccessorType(XmlAccessType.FIELD)
public class  ComponentesRetorno extends Retorno {
	@XmlElementWrapper(name="tipos")
	@XmlElement(name="tipo")
	//private Long lngNuId;
	private List<ComponentesEntity> data;
//	public Long getLngNuId() {
//		return lngNuId;
//	}
//	public void setLngNuId(Long lngNuId) {
//		this.lngNuId = lngNuId;
//	}
	public ComponentesRetorno() {
		data = new ArrayList<ComponentesEntity>();		
	}
	public List<ComponentesEntity> getData() {
		return data;
	}
	public void setData(List<ComponentesEntity> data) {
		this.data = data;
	}
}

