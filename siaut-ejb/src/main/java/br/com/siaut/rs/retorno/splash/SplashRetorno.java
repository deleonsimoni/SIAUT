	package br.com.siaut.rs.retorno.splash;
import java.util.ArrayList;
import java.util.List;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlElementWrapper;
import javax.xml.bind.annotation.XmlRootElement;

import br.com.siaut.rs.entity.splash.SplashEntity;
import br.com.siaut.rs.retorno.Retorno;
/**
 * 
 * @author SIAUT
 *
 */
@XmlRootElement
@XmlAccessorType(XmlAccessType.FIELD)
public class  SplashRetorno extends Retorno {
	@XmlElementWrapper(name="tipos")
	@XmlElement(name="tipo")
	private List<SplashEntity> data;
	public SplashRetorno() {
		data = new ArrayList<SplashEntity>();		
	}
	public List<SplashEntity> getData() {
		return data;
	}
	public void setData(List<SplashEntity> data) {
		this.data = data;
	}
}

