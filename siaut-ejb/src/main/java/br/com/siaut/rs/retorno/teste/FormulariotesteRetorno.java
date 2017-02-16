	package br.com.siaut.rs.retorno.teste;
import java.util.ArrayList;
import java.util.List;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlElementWrapper;
import javax.xml.bind.annotation.XmlRootElement;

import br.com.siaut.rs.entity.teste.FormulariotesteEntity;
import br.com.siaut.rs.retorno.Retorno;
/**
 * 
 * @author SIOGP
 *
 */
@XmlRootElement
@XmlAccessorType(XmlAccessType.FIELD)
public class  FormulariotesteRetorno extends Retorno {
	@XmlElementWrapper(name="tipos")
	@XmlElement(name="tipo")
	private List<FormulariotesteEntity> data;
	public FormulariotesteRetorno() {
		data = new ArrayList<FormulariotesteEntity>();		
	}
	public List<FormulariotesteEntity> getData() {
		return data;
	}
	public void setData(List<FormulariotesteEntity> data) {
		this.data = data;
	}
}

