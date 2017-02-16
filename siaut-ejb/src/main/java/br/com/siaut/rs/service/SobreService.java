	package br.com.siaut.rs.service;
/*
	Nesta classe é definido o EJB do seu projeto. 	
	Para este template cada tela possui seu proprio EJB
*/
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.ejb.LocalBean;
import javax.ejb.Stateless;
import javax.inject.Named;
import org.apache.log4j.Logger;

import br.com.siaut.rs.entity.sobre.SobreEntity;
import br.com.siaut.rs.requisicao.sobre.SobreRequisicao;
import br.com.siaut.rs.retorno.sobre.SobreRetorno;
/**
 * 
 * @author SIOGP
 *
 */
@Stateless
@LocalBean
@Named
public class SobreService {
	private static final Logger LOGGER = Logger.getLogger(SobreService.class);
	/* colecao da tela Sobre*/
	private Map<Long, Object> elementosSobre;
	public SobreService() {
		super();
/*
	As variaveis elementosXXXX armazenam em memoria uma coleção de objetos a serem exibidos em tela.
	Faz-se útil em caso de tabelas	
*/
		/* inicialização da coleção da tela Sobre*/
		elementosSobre = new HashMap<Long, Object>();
/*
	A inicialização dos elementos abaixo somente é necessario para a demonstracao da carga inicial dos elementos em tela.
	Deve ser removido quando não for mais necessário
*/
		SobreEntity sobre = new SobreEntity();
		elementosSobre.put(sobre.getId(), sobre);
	}
/*
	O metodo createSobre é utilizado para incluir um SobreEntity na colecao de elementosSobre.		
*/
	public  SobreRetorno createSobre(SobreRequisicao requisicao) {
		LOGGER.info("Chamando o metodo: create()");
		SobreEntity sobre = new SobreEntity();
		sobre.setId(System.currentTimeMillis());
	   sobre.setTitulo(requisicao.getTitulo());
	   sobre.setSubtitulo(requisicao.getSubtitulo());
	   sobre.setLink(requisicao.getLink());
	   sobre.setListagem(requisicao.getListagem());
	   sobre.setImgicon013primosiogpinvertedsmallpng(requisicao.getImgicon013primosiogpinvertedsmallpng());
	   sobre.setLnkprimosiogp2(requisicao.getLnkprimosiogp2());
	   sobre.setTexto2(requisicao.getTexto2());
		elementosSobre.put(sobre.getId(), sobre);
		List<String> msgsErro = new ArrayList<String>();
		msgsErro.add("Inclusão feita com sucesso.");
		SobreRetorno retorno = new SobreRetorno();
		retorno.setTemErro(Boolean.FALSE);
		retorno.setMsgsErro(msgsErro);
		retorno.getData().add(sobre);
		return retorno;
	}
/*
	O metodo readAllSobre() é utilizado para obter todos os SobreEntity existentes na colecao de elementosSobre.	
*/
	public SobreRetorno readAllSobre() {
		LOGGER.info("Chamando o metodo: readAll()");
		List<String> msgsErro = new ArrayList<String>();
		msgsErro.add("Leitura feita com sucesso.");
		SobreRetorno retorno = new SobreRetorno();
		retorno.setTemErro(Boolean.FALSE);
		retorno.setMsgsErro(msgsErro);
		for (Object sobre: elementosSobre.values()) {
			retorno.getData().add((SobreEntity) sobre);
		}
		return retorno;
	}
/*
	O metodo readSobre(Long id) é utilizado para obter um elemento SobreEntity existente na colecao de elementosSobre.
*/
	public SobreRetorno readSobre(Long id) {
		LOGGER.info("Chamando o metodo: read("+id+")");
		SobreEntity sobre = (SobreEntity) elementosSobre.get(id);
		List<String> msgsErro = new ArrayList<String>();
		msgsErro.add("Leitura por \"id\" feita com sucesso.");
		SobreRetorno retorno = new SobreRetorno();
		retorno.setTemErro(Boolean.FALSE);
		retorno.setMsgsErro(msgsErro);
		retorno.getData().add(sobre);
		return retorno;
	}
/*
	O metodo updateSobre é utilizado para atualizar um elemento SobreEntity existente na colecao de elementosSobre.
*/
	public SobreRetorno updateSobre(Long id, SobreRequisicao requisicao) {
		LOGGER.info("Chamando o metodo: update("+id+","+requisicao+")");
		SobreEntity sobre = (SobreEntity) elementosSobre.get(id);
	   sobre.setTitulo(requisicao.getTitulo());
	   sobre.setSubtitulo(requisicao.getSubtitulo());
	   sobre.setLink(requisicao.getLink());
	   sobre.setListagem(requisicao.getListagem());
	   sobre.setImgicon013primosiogpinvertedsmallpng(requisicao.getImgicon013primosiogpinvertedsmallpng());
	   sobre.setLnkprimosiogp2(requisicao.getLnkprimosiogp2());
	   sobre.setTexto2(requisicao.getTexto2());
		elementosSobre.remove(id);
		elementosSobre.put(id, sobre);
		List<String> msgsErro = new ArrayList<String>();
		msgsErro.add("Atualização feita com sucesso.");
		SobreRetorno retorno = new SobreRetorno();
		retorno.setTemErro(Boolean.FALSE);
		retorno.setMsgsErro(msgsErro);
		retorno.getData().add(sobre);
		return retorno;
	}
/*
	O metodo deleteSobre é utilizado para remover um elemento SobreEntity existente na colecao de elementosSobre.
*/
	public SobreRetorno deleteSobre(Long id) {
		LOGGER.info("Chamando o metodo: delete("+id+")");
		elementosSobre.remove(id);
		List<String> msgsErro = new ArrayList<String>();
		msgsErro.add("Exclusão feita com sucesso.");
		SobreRetorno retorno = new SobreRetorno();
		retorno.setTemErro(Boolean.FALSE);
		retorno.setMsgsErro(msgsErro);
		return retorno;
	}
}

