package br.com.siaut.rs.resource;

import java.util.ArrayList;
import java.util.List;

import javax.ejb.EJB;
import javax.ws.rs.Consumes;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;
import javax.ws.rs.core.Response.Status;

import br.com.siaut.rs.requisicao.dispositivos.DispositivosRequisicao;
import br.com.siaut.rs.requisicao.usuario.UsuarioRequisicao;
import br.com.siaut.rs.retorno.dispositivos.DispositivosRetorno;
import br.com.siaut.rs.service.DispositivosService;
import br.com.siaut.util.MensagensAplicacao;

@Path("/dispositivos")
@Consumes({ MediaType.APPLICATION_JSON })
@Produces({ MediaType.APPLICATION_JSON })
public class DispositivosResource extends Resource {
	
	@EJB 
	private DispositivosService dispositivosService;
	
	@POST @Path("/listarImoveis")
	public Response listarImoveis(DispositivosRequisicao requisicao) {
		Response response = null;
		DispositivosRetorno retorno = null;
		final List<String> msgsErro = new ArrayList<String>();

		try {
			retorno  = dispositivosService.listarCasasUsuario(requisicao);
			msgsErro.add(MensagensAplicacao.SUCESSO_CONFIGURACOES);			
			retorno.setMsgsErro(msgsErro);	
	        Status status = Status.OK;    
	        retorno.setTemErro(Boolean.FALSE);
			response = build(status, retorno);
		
		} catch (Exception e) {
			e.printStackTrace();
			msgsErro.add(MensagensAplicacao.CARREGADAS_NAO_SUCESSO);			
			retorno.setMsgsErro(msgsErro);	
	        Status status = Status.OK;    
	        retorno.setTemErro(Boolean.TRUE);
	        response = build(status, retorno);
			//return response;
		}
		return response;
	}
	
	@POST @Path("/listarComodos")
	public Response listarComodos(DispositivosRequisicao requisicao) {
		Response response = null;
		DispositivosRetorno retorno = null;
		final List<String> msgsErro = new ArrayList<String>();

		try {
			retorno  = dispositivosService.listarComodos(requisicao);
			msgsErro.add(MensagensAplicacao.SUCESSO_CONFIGURACOES);			
			retorno.setMsgsErro(msgsErro);	
	        Status status = Status.OK;    
	        retorno.setTemErro(Boolean.FALSE);
			response = build(status, retorno);
		
		} catch (Exception e) {
			e.printStackTrace();
			msgsErro.add(MensagensAplicacao.CARREGADAS_NAO_SUCESSO);			
			retorno.setMsgsErro(msgsErro);	
	        Status status = Status.OK;    
	        retorno.setTemErro(Boolean.TRUE);
	        response = build(status, retorno);
			//return response;
		}
		return response;
	}
	@POST @Path("/listarDispositivosComodo")
	public Response listarDispositivos(DispositivosRequisicao requisicao) {
		Response response = null;
		DispositivosRetorno retorno = null;
		final List<String> msgsErro = new ArrayList<String>();

		try {
			retorno  = dispositivosService.listarDispositivos(requisicao);
			msgsErro.add(MensagensAplicacao.SUCESSO_CONFIGURACOES);			
			retorno.setMsgsErro(msgsErro);	
	        Status status = Status.OK;    
	        retorno.setTemErro(Boolean.FALSE);
			response = build(status, retorno);
		
		} catch (Exception e) {
			e.printStackTrace();
			msgsErro.add(MensagensAplicacao.CARREGADAS_NAO_SUCESSO);			
			retorno.setMsgsErro(msgsErro);	
	        Status status = Status.OK;    
	        retorno.setTemErro(Boolean.TRUE);
	        response = build(status, retorno);
			//return response;
		}
		return response;
	}
	@POST @Path("/ligarTodosDispositivosComodo")
	public Response ligarTodosDispositivosComodo(DispositivosRequisicao requisicao) {
		Response response = null;
		DispositivosRetorno retorno = null;
		final List<String> msgsErro = new ArrayList<String>();

		try {
			retorno  = dispositivosService.ligarTodosDispositivosComodo(requisicao);
			msgsErro.add(MensagensAplicacao.SUCESSO_CONFIGURACOES);			
			retorno.setMsgsErro(msgsErro);	
	        Status status = Status.OK;    
	        retorno.setTemErro(Boolean.FALSE);
			response = build(status, retorno);
		
		} catch (Exception e) {
			e.printStackTrace();
			msgsErro.add(MensagensAplicacao.CARREGADAS_NAO_SUCESSO);			
			retorno.setMsgsErro(msgsErro);	
	        Status status = Status.OK;    
	        retorno.setTemErro(Boolean.TRUE);
	        response = build(status, retorno);
			//return response;
		}
		return response;
	}
	
	@POST @Path("/ligarTodosDispositivosImovel")
	public Response ligarTodosDispositivosImovel(DispositivosRequisicao requisicao) {
		Response response = null;
		DispositivosRetorno retorno = null;
		final List<String> msgsErro = new ArrayList<String>();

		try {
			retorno  = dispositivosService.ligarTodosDispositivosImovel(requisicao);
			msgsErro.add(MensagensAplicacao.SUCESSO_CONFIGURACOES);			
			retorno.setMsgsErro(msgsErro);	
	        Status status = Status.OK;    
	        retorno.setTemErro(Boolean.FALSE);
			response = build(status, retorno);
		
		} catch (Exception e) {
			e.printStackTrace();
			msgsErro.add(MensagensAplicacao.CARREGADAS_NAO_SUCESSO);			
			retorno.setMsgsErro(msgsErro);	
	        Status status = Status.OK;    
	        retorno.setTemErro(Boolean.TRUE);
	        response = build(status, retorno);
			//return response;
		}
		return response;
	}
}
