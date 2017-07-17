	package br.com.siaut.rs.retorno.dispositivos;
import java.util.List;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlRootElement;

import br.com.siaut.rs.retorno.Retorno;
import br.gov.caixa.entity.dispositivos.ComodosEntity;
import br.gov.caixa.entity.dispositivos.DispositivosEntity;
import br.gov.caixa.entity.dispositivos.ImovelEntity;
/**
 * 
 * @author SIAUT
 *
 */
@XmlRootElement
@XmlAccessorType(XmlAccessType.FIELD)
public class  DispositivosRetorno extends Retorno {
	private List<ImovelEntity> imoveis;
	private List<ComodosEntity> comodos;
	private List<DispositivosEntity> dispositivos;

	public List<DispositivosEntity> getDispositivos() {
		return dispositivos;
	}

	public void setDispositivos(List<DispositivosEntity> dispositivos) {
		this.dispositivos = dispositivos;
	}

	public List<ComodosEntity> getComodos() {
		return comodos;
	}

	public void setComodos(List<ComodosEntity> comodos) {
		this.comodos = comodos;
	}

	public List<ImovelEntity> getImoveis() {
		return imoveis;
	}

	public void setImoveis(List<ImovelEntity> imoveis) {
		this.imoveis = imoveis;
	}
	
	
}