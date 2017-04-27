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

import br.com.siaut.rs.entity.splash.SplashEntity;
import br.com.siaut.rs.requisicao.splash.SplashRequisicao;
import br.com.siaut.rs.retorno.splash.SplashRetorno;
import br.com.siaut.util.MensagensAplicacao;
/**
 * 
 * @author SIAUT
 *
 */
@Stateless
@LocalBean
@Named
public class SplashService {
	private static final Logger LOGGER = Logger.getLogger(SplashService.class);
	/* colecao da tela Splash*/
	private Map<Long, Object> elementosSplash;
	public SplashService() {
		super();
/*
	As variaveis elementosXXXX armazenam em memoria uma coleção de objetos a serem exibidos em tela.
	Faz-se útil em caso de tabelas	
*/
		/* inicialização da coleção da tela Splash*/
		elementosSplash = new HashMap<Long, Object>();
/*
	A inicialização dos elementos abaixo somente é necessario para a demonstracao da carga inicial dos elementos em tela.
	Deve ser removido quando não for mais necessário
*/
		SplashEntity splash = new SplashEntity();
		elementosSplash.put(splash.getId(), splash);
	}
/*
	O metodo createSplash é utilizado para incluir um SplashEntity na colecao de elementosSplash.		
*/
	public  SplashRetorno createSplash(SplashRequisicao requisicao) {
		LOGGER.info("Chamando o metodo: create()");
		SplashEntity splash = new SplashEntity();
		splash.setId(System.currentTimeMillis());
	   splash.setBtiicon013primosiogpinvertedverysmallpng2(requisicao.getBtiicon013primosiogpinvertedverysmallpng2());
	   splash.setImagem(requisicao.getImagem());
	   splash.setTitulo(requisicao.getTitulo());
	   splash.setSubtitulo(requisicao.getSubtitulo());
	   splash.setTexto(requisicao.getTexto());
	   splash.setTimer(requisicao.getTimer());
	   splash.setTimer2(requisicao.getTimer2());
	   splash.setLink(requisicao.getLink());
		elementosSplash.put(splash.getId(), splash);
		List<String> msgsErro = new ArrayList<String>();
		msgsErro.add(MensagensAplicacao.INCLUSAO_SUCESSO);
		SplashRetorno retorno = new SplashRetorno();
		retorno.setTemErro(Boolean.FALSE);
		retorno.setMsgsErro(msgsErro);
		retorno.getData().add(splash);
		return retorno;
	}
/*
	O metodo readAllSplash() é utilizado para obter todos os SplashEntity existentes na colecao de elementosSplash.	
*/
	public SplashRetorno readAllSplash() {
		LOGGER.info("Chamando o metodo: readAll()");
		List<String> msgsErro = new ArrayList<String>();
		msgsErro.add(MensagensAplicacao.LISTAGEM_SUCESSO);
		SplashRetorno retorno = new SplashRetorno();
		retorno.setTemErro(Boolean.FALSE);
		retorno.setMsgsErro(msgsErro);
		for (Object splash: elementosSplash.values()) {
			retorno.getData().add((SplashEntity) splash);
		}
		return retorno;
	}
/*
	O metodo readSplash(Long id) é utilizado para obter um elemento SplashEntity existente na colecao de elementosSplash.
*/
	public SplashRetorno readSplash(Long id) {
		LOGGER.info("Chamando o metodo: read("+id+")");
		SplashEntity splash = (SplashEntity) elementosSplash.get(id);
		List<String> msgsErro = new ArrayList<String>();
		msgsErro.add(MensagensAplicacao.CONSULTA_SUCESSO + id);
		SplashRetorno retorno = new SplashRetorno();
		retorno.setTemErro(Boolean.FALSE);
		retorno.setMsgsErro(msgsErro);
		retorno.getData().add(splash);
		return retorno;
	}
/*
	O metodo updateSplash é utilizado para atualizar um elemento SplashEntity existente na colecao de elementosSplash.
*/
	public SplashRetorno updateSplash(Long id, SplashRequisicao requisicao) {
		LOGGER.info("Chamando o metodo: update("+id+","+requisicao+")");
		SplashEntity splash = (SplashEntity) elementosSplash.get(id);
	   splash.setBtiicon013primosiogpinvertedverysmallpng2(requisicao.getBtiicon013primosiogpinvertedverysmallpng2());
	   splash.setImagem(requisicao.getImagem());
	   splash.setTitulo(requisicao.getTitulo());
	   splash.setSubtitulo(requisicao.getSubtitulo());
	   splash.setTexto(requisicao.getTexto());
	   splash.setTimer(requisicao.getTimer());
	   splash.setTimer2(requisicao.getTimer2());
	   splash.setLink(requisicao.getLink());
		elementosSplash.remove(id);
		elementosSplash.put(id, splash);
		List<String> msgsErro = new ArrayList<String>();
		msgsErro.add(MensagensAplicacao.ALTERACAO_SUCESSO + id);
		SplashRetorno retorno = new SplashRetorno();
		retorno.setTemErro(Boolean.FALSE);
		retorno.setMsgsErro(msgsErro);
		retorno.getData().add(splash);
		return retorno;
	}
/*
	O metodo deleteSplash é utilizado para remover um elemento SplashEntity existente na colecao de elementosSplash.
*/
	public SplashRetorno deleteSplash(Long id) {
		LOGGER.info("Chamando o metodo: delete("+id+")");
		elementosSplash.remove(id);
		List<String> msgsErro = new ArrayList<String>();
		msgsErro.add(MensagensAplicacao.EXCLUSAO_SUCESSO + id);
		SplashRetorno retorno = new SplashRetorno();
		retorno.setTemErro(Boolean.FALSE);
		retorno.setMsgsErro(msgsErro);
		return retorno;
	}
}

