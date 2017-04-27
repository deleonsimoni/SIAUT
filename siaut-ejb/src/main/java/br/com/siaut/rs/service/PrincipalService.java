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

import br.com.siaut.rs.entity.principal.PrincipalEntity;
import br.com.siaut.rs.requisicao.principal.PrincipalRequisicao;
import br.com.siaut.rs.retorno.principal.PrincipalRetorno;
import br.com.siaut.util.MensagensAplicacao;
/**
 * 
 * @author SIAUT
 *
 */
@Stateless
@LocalBean
@Named
public class PrincipalService {
	private static final Logger LOGGER = Logger.getLogger(PrincipalService.class);
	/* colecao da tela Principal*/
	private Map<Long, Object> elementosPrincipal;
	public PrincipalService() {
		super();
/*
	As variaveis elementosXXXX armazenam em memoria uma coleção de objetos a serem exibidos em tela.
	Faz-se útil em caso de tabelas	
*/
		/* inicialização da coleção da tela Principal*/
		elementosPrincipal = new HashMap<Long, Object>();
/*
	A inicialização dos elementos abaixo somente é necessario para a demonstracao da carga inicial dos elementos em tela.
	Deve ser removido quando não for mais necessário
*/
		PrincipalEntity principal = new PrincipalEntity();
		elementosPrincipal.put(principal.getId(), principal);
	}
/*
	O metodo createPrincipal é utilizado para incluir um PrincipalEntity na colecao de elementosPrincipal.		
*/
	public  PrincipalRetorno createPrincipal(PrincipalRequisicao requisicao) {
		LOGGER.info("Chamando o metodo: create()");
		PrincipalEntity principal = new PrincipalEntity();
		principal.setId(System.currentTimeMillis());
	   principal.setImagem(requisicao.getImagem());
		elementosPrincipal.put(principal.getId(), principal);
		List<String> msgsErro = new ArrayList<String>();
		msgsErro.add(MensagensAplicacao.INCLUSAO_SUCESSO);
		PrincipalRetorno retorno = new PrincipalRetorno();
		retorno.setTemErro(Boolean.FALSE);
		retorno.setMsgsErro(msgsErro);
		retorno.getData().add(principal);
		return retorno;
	}
/*
	O metodo readAllPrincipal() é utilizado para obter todos os PrincipalEntity existentes na colecao de elementosPrincipal.	
*/
	public PrincipalRetorno readAllPrincipal() {
		LOGGER.info("Chamando o metodo: readAll()");
		List<String> msgsErro = new ArrayList<String>();
		msgsErro.add("Leitura feita com sucesso.");
		PrincipalRetorno retorno = new PrincipalRetorno();
		retorno.setTemErro(Boolean.FALSE);
		retorno.setMsgsErro(msgsErro);
		for (Object principal: elementosPrincipal.values()) {
			retorno.getData().add((PrincipalEntity) principal);
		}
		return retorno;
	}
/*
	O metodo readPrincipal(Long id) é utilizado para obter um elemento PrincipalEntity existente na colecao de elementosPrincipal.
*/
	public PrincipalRetorno readPrincipal(Long id) {
		LOGGER.info("Chamando o metodo: read("+id+")");
		PrincipalEntity principal = (PrincipalEntity) elementosPrincipal.get(id);
		List<String> msgsErro = new ArrayList<String>();
		msgsErro.add(MensagensAplicacao.CONSULTA_SUCESSO + id);
		PrincipalRetorno retorno = new PrincipalRetorno();
		retorno.setTemErro(Boolean.FALSE);
		retorno.setMsgsErro(msgsErro);
		retorno.getData().add(principal);
		return retorno;
	}
/*
	O metodo updatePrincipal é utilizado para atualizar um elemento PrincipalEntity existente na colecao de elementosPrincipal.
*/
	public PrincipalRetorno updatePrincipal(Long id, PrincipalRequisicao requisicao) {
		LOGGER.info("Chamando o metodo: update("+id+","+requisicao+")");
		PrincipalEntity principal = (PrincipalEntity) elementosPrincipal.get(id);
	   principal.setImagem(requisicao.getImagem());
		elementosPrincipal.remove(id);
		elementosPrincipal.put(id, principal);
		List<String> msgsErro = new ArrayList<String>();
		msgsErro.add(MensagensAplicacao.ALTERACAO_SUCESSO + id);
		PrincipalRetorno retorno = new PrincipalRetorno();
		retorno.setTemErro(Boolean.FALSE);
		retorno.setMsgsErro(msgsErro);
		retorno.getData().add(principal);
		return retorno;
	}
/*
	O metodo deletePrincipal é utilizado para remover um elemento PrincipalEntity existente na colecao de elementosPrincipal.
*/
	public PrincipalRetorno deletePrincipal(Long id) {
		LOGGER.info("Chamando o metodo: delete("+id+")");
		elementosPrincipal.remove(id);
		List<String> msgsErro = new ArrayList<String>();
		msgsErro.add(MensagensAplicacao.EXCLUSAO_SUCESSO + id);
		PrincipalRetorno retorno = new PrincipalRetorno();
		retorno.setTemErro(Boolean.FALSE);
		retorno.setMsgsErro(msgsErro);
		return retorno;
	}
}

