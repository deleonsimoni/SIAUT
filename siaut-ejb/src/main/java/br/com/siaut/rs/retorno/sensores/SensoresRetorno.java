package br.com.siaut.rs.retorno.sensores;
import java.util.ArrayList;
import java.util.List;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlElementWrapper;
import javax.xml.bind.annotation.XmlRootElement;

import br.com.siaut.rs.entity.principal.PrincipalEntity;
import br.com.siaut.rs.entity.sensores.SensoresEntity;
import br.com.siaut.rs.retorno.Retorno;
/**
 * 
 * @author SIAUT
 *
 */
@XmlRootElement
@XmlAccessorType(XmlAccessType.FIELD)
public class  SensoresRetorno extends Retorno {
	@XmlElementWrapper(name="tipos")
	@XmlElement(name="tipo")
	private Long lngNuId;
	private List<SensoresEntity> data;
	
	
	public Long getLngNuId() {
		return lngNuId;
	}
	public void setLngNuId(Long lngNuId) {
		this.lngNuId = lngNuId;
	}
	public SensoresRetorno() {
		data = new ArrayList<SensoresEntity>();		
	}
	public List<SensoresEntity> getData() {
		return data;
	}
	public void setData(List<SensoresEntity> data) {
		this.data = data;
	}
}

