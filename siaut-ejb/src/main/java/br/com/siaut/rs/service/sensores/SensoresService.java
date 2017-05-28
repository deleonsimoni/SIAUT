package br.com.siaut.rs.service.sensores;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.ejb.LocalBean;
import javax.ejb.Stateless;
import javax.inject.Named;

import org.apache.log4j.Logger;

import br.com.siaut.rs.entity.sensores.SensoresEntity;
import br.com.siaut.rs.retorno.sensores.SensoresRetorno;
import br.com.siaut.util.MensagensAplicacao;

@Stateless
@LocalBean
@Named
public class SensoresService  implements Serializable{

	private static final Logger LOGGER = Logger.getLogger(SensoresService.class);
	/**
	 * 
	 */
	private static final long serialVersionUID = 7843815848515652616L;
	/* colecao da tela Principal*/
	private Map<Long, Object> elementosSensores;
	public SensoresService() {
		super();
/*
	As variaveis elementosXXXX armazenam em memoria uma coleção de objetos a serem exibidos em tela.
	Faz-se útil em caso de tabelas	
*/
		/* inicialização da coleção da tela Principal*/
		elementosSensores = new HashMap<Long, Object>();
/*
	A inicialização dos elementos abaixo somente é necessario para a demonstracao da carga inicial dos elementos em tela.
	Deve ser removido quando não for mais necessário
*/
		SensoresEntity sensores = new SensoresEntity();
		elementosSensores.put(sensores.getLngNuId(), sensores);
	}

//	public List<SensoresEntity> configuracoes(){
//	  ArrayList<SensoresEntity> arySensores = new ArrayList<SensoresEntity>();
//	  
//	  for (int intContador = 1; intContador <= 1; intContador++) {
//		  SensoresEntity objSensoresEntity = new SensoresEntity();
//		  objSensoresEntity.setStrNuTemperatura("14 C");
//		  objSensoresEntity.setStrNuUmidade("30 C");
//		  objSensoresEntity.setStrNuLuz("028");
//		  objSensoresEntity.setStrNuChuva("14.5");
//		  arySensores.add(objSensoresEntity);
//	  }
//	  
//	  return  arySensores;
//	}
	

	/*
	O metodo readAllSensores() é utilizado para obter todos os PrincipalEntity existentes na colecao de elementosPrincipal.	
*/
	public SensoresRetorno readAllSensores() {
		LOGGER.info("Chamando o metodo: readAll()");
		List<String> msgsErro = new ArrayList<String>();
		
		msgsErro.add(MensagensAplicacao.LISTAGEM_SUCESSO);
		SensoresRetorno retorno = new SensoresRetorno();
		
	    ArrayList<SensoresEntity> arySensores = new ArrayList<SensoresEntity>();
		  
	    for (int intContador = 1; intContador <= 1; intContador++) {
		  SensoresEntity objSensoresEntity = new SensoresEntity();
		  objSensoresEntity.setStrNuTemperatura("14 C");
		  objSensoresEntity.setStrNuUmidade("30 C");
		  objSensoresEntity.setStrNuLuz("028");
		  objSensoresEntity.setStrNuChuva("14.5");
		  arySensores.add(objSensoresEntity);
	    }
		retorno.setData(arySensores);
		retorno.setTemErro(Boolean.FALSE);
		retorno.setMsgsErro(msgsErro);
		
//		for (Object sensores: elementosSensores.values()) {
//			retorno.getData().add((SensoresEntity) sensores);
//		}
		return retorno;
	}
}
