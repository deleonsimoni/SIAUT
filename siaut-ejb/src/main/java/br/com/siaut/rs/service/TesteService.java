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

import br.com.siaut.rs.entity.teste.CadastrotesteEntity;
import br.com.siaut.rs.entity.teste.FormulariotesteEntity;
import br.com.siaut.rs.requisicao.teste.CadastrotesteRequisicao;
import br.com.siaut.rs.requisicao.teste.FormulariotesteRequisicao;
import br.com.siaut.rs.retorno.teste.CadastrotesteRetorno;
import br.com.siaut.rs.retorno.teste.FormulariotesteRetorno;
/**
 * 
 * @author SIOGP
 *
 */
@Stateless
@LocalBean
@Named
public class TesteService {
	private static final Logger LOGGER = Logger.getLogger(TesteService.class);
	/* colecao da tela Cadastroteste*/
	private Map<Long, Object> elementosCadastroteste;
	/* colecao da tela Formularioteste*/
	private Map<Long, Object> elementosFormularioteste;
	public TesteService() {
		super();
/*
	As variaveis elementosXXXX armazenam em memoria uma coleção de objetos a serem exibidos em tela.
	Faz-se útil em caso de tabelas	
*/
		/* inicialização da coleção da tela Cadastroteste*/
		elementosCadastroteste = new HashMap<Long, Object>();
		/* inicialização da coleção da tela Formularioteste*/
		elementosFormularioteste = new HashMap<Long, Object>();
/*
	A inicialização dos elementos abaixo somente é necessario para a demonstracao da carga inicial dos elementos em tela.
	Deve ser removido quando não for mais necessário
*/
		CadastrotesteEntity cadastroteste = new CadastrotesteEntity();
		elementosCadastroteste.put(cadastroteste.getId(), cadastroteste);
		FormulariotesteEntity formularioteste = new FormulariotesteEntity();
		elementosFormularioteste.put(formularioteste.getId(), formularioteste);
	}
/*
	O metodo createCadastroteste é utilizado para incluir um CadastrotesteEntity na colecao de elementosCadastroteste.		
*/
	public  CadastrotesteRetorno createCadastroteste(CadastrotesteRequisicao requisicao) {
		LOGGER.info("Chamando o metodo: create()");
		CadastrotesteEntity cadastroteste = new CadastrotesteEntity();
		cadastroteste.setId(System.currentTimeMillis());
	   cadastroteste.setTitulo(requisicao.getTitulo());
	   cadastroteste.setNomepesquisa(requisicao.getNomepesquisa());
	   cadastroteste.setTabela(requisicao.getTabela());
	   cadastroteste.setRule(requisicao.getRule());
	   cadastroteste.setIncluir(requisicao.getIncluir());
	   cadastroteste.setRetornar(requisicao.getRetornar());
		elementosCadastroteste.put(cadastroteste.getId(), cadastroteste);
		List<String> msgsErro = new ArrayList<String>();
		msgsErro.add("Inclusão feita com sucesso.");
		CadastrotesteRetorno retorno = new CadastrotesteRetorno();
		retorno.setTemErro(Boolean.FALSE);
		retorno.setMsgsErro(msgsErro);
		retorno.getData().add(cadastroteste);
		return retorno;
	}
/*
	O metodo readAllCadastroteste() é utilizado para obter todos os CadastrotesteEntity existentes na colecao de elementosCadastroteste.	
*/
	public CadastrotesteRetorno readAllCadastroteste() {
		LOGGER.info("Chamando o metodo: readAll()");
		List<String> msgsErro = new ArrayList<String>();
		msgsErro.add("Leitura feita com sucesso.");
		CadastrotesteRetorno retorno = new CadastrotesteRetorno();
		retorno.setTemErro(Boolean.FALSE);
		retorno.setMsgsErro(msgsErro);
		for (Object cadastroteste: elementosCadastroteste.values()) {
			retorno.getData().add((CadastrotesteEntity) cadastroteste);
		}
		return retorno;
	}
/*
	O metodo readCadastroteste(Long id) é utilizado para obter um elemento CadastrotesteEntity existente na colecao de elementosCadastroteste.
*/
	public CadastrotesteRetorno readCadastroteste(Long id) {
		LOGGER.info("Chamando o metodo: read("+id+")");
		CadastrotesteEntity cadastroteste = (CadastrotesteEntity) elementosCadastroteste.get(id);
		List<String> msgsErro = new ArrayList<String>();
		msgsErro.add("Leitura por \"id\" feita com sucesso.");
		CadastrotesteRetorno retorno = new CadastrotesteRetorno();
		retorno.setTemErro(Boolean.FALSE);
		retorno.setMsgsErro(msgsErro);
		retorno.getData().add(cadastroteste);
		return retorno;
	}
/*
	O metodo updateCadastroteste é utilizado para atualizar um elemento CadastrotesteEntity existente na colecao de elementosCadastroteste.
*/
	public CadastrotesteRetorno updateCadastroteste(Long id, CadastrotesteRequisicao requisicao) {
		LOGGER.info("Chamando o metodo: update("+id+","+requisicao+")");
		CadastrotesteEntity cadastroteste = (CadastrotesteEntity) elementosCadastroteste.get(id);
	   cadastroteste.setTitulo(requisicao.getTitulo());
	   cadastroteste.setNomepesquisa(requisicao.getNomepesquisa());
	   cadastroteste.setTabela(requisicao.getTabela());
	   cadastroteste.setRule(requisicao.getRule());
	   cadastroteste.setIncluir(requisicao.getIncluir());
	   cadastroteste.setRetornar(requisicao.getRetornar());
		elementosCadastroteste.remove(id);
		elementosCadastroteste.put(id, cadastroteste);
		List<String> msgsErro = new ArrayList<String>();
		msgsErro.add("Atualização feita com sucesso.");
		CadastrotesteRetorno retorno = new CadastrotesteRetorno();
		retorno.setTemErro(Boolean.FALSE);
		retorno.setMsgsErro(msgsErro);
		retorno.getData().add(cadastroteste);
		return retorno;
	}
/*
	O metodo deleteCadastroteste é utilizado para remover um elemento CadastrotesteEntity existente na colecao de elementosCadastroteste.
*/
	public CadastrotesteRetorno deleteCadastroteste(Long id) {
		LOGGER.info("Chamando o metodo: delete("+id+")");
		elementosCadastroteste.remove(id);
		List<String> msgsErro = new ArrayList<String>();
		msgsErro.add("Exclusão feita com sucesso.");
		CadastrotesteRetorno retorno = new CadastrotesteRetorno();
		retorno.setTemErro(Boolean.FALSE);
		retorno.setMsgsErro(msgsErro);
		return retorno;
	}
/*
	O metodo createFormularioteste é utilizado para incluir um FormulariotesteEntity na colecao de elementosFormularioteste.		
*/
	public  FormulariotesteRetorno createFormularioteste(FormulariotesteRequisicao requisicao) {
		LOGGER.info("Chamando o metodo: create()");
		FormulariotesteEntity formularioteste = new FormulariotesteEntity();
		formularioteste.setId(System.currentTimeMillis());
	   formularioteste.setTitulo(requisicao.getTitulo());
	   formularioteste.setNomecadastro(requisicao.getNomecadastro());
	   formularioteste.setDatacadastro(requisicao.getDatacadastro());
	   formularioteste.setListacadastro(requisicao.getListacadastro());
	   formularioteste.setOk(requisicao.getOk());
	   formularioteste.setCancelar(requisicao.getCancelar());
		elementosFormularioteste.put(formularioteste.getId(), formularioteste);
		List<String> msgsErro = new ArrayList<String>();
		msgsErro.add("Inclusão feita com sucesso.");
		FormulariotesteRetorno retorno = new FormulariotesteRetorno();
		retorno.setTemErro(Boolean.FALSE);
		retorno.setMsgsErro(msgsErro);
		retorno.getData().add(formularioteste);
		return retorno;
	}
/*
	O metodo readAllFormularioteste() é utilizado para obter todos os FormulariotesteEntity existentes na colecao de elementosFormularioteste.	
*/
	public FormulariotesteRetorno readAllFormularioteste() {
		LOGGER.info("Chamando o metodo: readAll()");
		List<String> msgsErro = new ArrayList<String>();
		msgsErro.add("Leitura feita com sucesso.");
		FormulariotesteRetorno retorno = new FormulariotesteRetorno();
		retorno.setTemErro(Boolean.FALSE);
		retorno.setMsgsErro(msgsErro);
		for (Object formularioteste: elementosFormularioteste.values()) {
			retorno.getData().add((FormulariotesteEntity) formularioteste);
		}
		return retorno;
	}
/*
	O metodo readFormularioteste(Long id) é utilizado para obter um elemento FormulariotesteEntity existente na colecao de elementosFormularioteste.
*/
	public FormulariotesteRetorno readFormularioteste(Long id) {
		LOGGER.info("Chamando o metodo: read("+id+")");
		FormulariotesteEntity formularioteste = (FormulariotesteEntity) elementosFormularioteste.get(id);
		List<String> msgsErro = new ArrayList<String>();
		msgsErro.add("Leitura por \"id\" feita com sucesso.");
		FormulariotesteRetorno retorno = new FormulariotesteRetorno();
		retorno.setTemErro(Boolean.FALSE);
		retorno.setMsgsErro(msgsErro);
		retorno.getData().add(formularioteste);
		return retorno;
	}
/*
	O metodo updateFormularioteste é utilizado para atualizar um elemento FormulariotesteEntity existente na colecao de elementosFormularioteste.
*/
	public FormulariotesteRetorno updateFormularioteste(Long id, FormulariotesteRequisicao requisicao) {
		LOGGER.info("Chamando o metodo: update("+id+","+requisicao+")");
		FormulariotesteEntity formularioteste = (FormulariotesteEntity) elementosFormularioteste.get(id);
	   formularioteste.setTitulo(requisicao.getTitulo());
	   formularioteste.setNomecadastro(requisicao.getNomecadastro());
	   formularioteste.setDatacadastro(requisicao.getDatacadastro());
	   formularioteste.setListacadastro(requisicao.getListacadastro());
	   formularioteste.setOk(requisicao.getOk());
	   formularioteste.setCancelar(requisicao.getCancelar());
		elementosFormularioteste.remove(id);
		elementosFormularioteste.put(id, formularioteste);
		List<String> msgsErro = new ArrayList<String>();
		msgsErro.add("Atualização feita com sucesso.");
		FormulariotesteRetorno retorno = new FormulariotesteRetorno();
		retorno.setTemErro(Boolean.FALSE);
		retorno.setMsgsErro(msgsErro);
		retorno.getData().add(formularioteste);
		return retorno;
	}
/*
	O metodo deleteFormularioteste é utilizado para remover um elemento FormulariotesteEntity existente na colecao de elementosFormularioteste.
*/
	public FormulariotesteRetorno deleteFormularioteste(Long id) {
		LOGGER.info("Chamando o metodo: delete("+id+")");
		elementosFormularioteste.remove(id);
		List<String> msgsErro = new ArrayList<String>();
		msgsErro.add("Exclusão feita com sucesso.");
		FormulariotesteRetorno retorno = new FormulariotesteRetorno();
		retorno.setTemErro(Boolean.FALSE);
		retorno.setMsgsErro(msgsErro);
		return retorno;
	}
}

