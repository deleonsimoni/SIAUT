	package br.com.siaut.rs.resource;
/*
	Nesta classe � definido o Webservice do seu projeto. 	
	Para este template cada funcionalidade possui seu proprio Webservice que � compartilhado por suas telas
*/
import java.util.ArrayList;
import java.util.List;

import javax.ejb.EJB;
import javax.enterprise.context.RequestScoped;
import javax.ws.rs.Consumes;
import javax.ws.rs.DELETE;
import javax.ws.rs.GET;
import javax.ws.rs.HeaderParam;
import javax.ws.rs.POST;
import javax.ws.rs.PUT;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;
import javax.ws.rs.core.Response.Status;

import br.com.siaut.Authentication;
import br.com.siaut.rs.requisicao.principal.PrincipalRequisicao;
import br.com.siaut.rs.retorno.Retorno;
import br.com.siaut.rs.service.PrincipalService;
import br.com.siaut.util.MensagensAplicacao;
/**
 * 
 * @author SIAUT
 *
 */
@RequestScoped
@Path("/principal")
@Consumes({ MediaType.APPLICATION_JSON })
@Produces({ MediaType.APPLICATION_JSON })
public class PrincipalResource extends Resource {
	//private Metrics metrics = Metrics.getInstance();
	private Authentication auth = Authentication.getInstance();
	public PrincipalResource() {
	//	metrics.track("webservice","Principal");
	}
	@EJB
	private PrincipalService service;
	@POST @Path("/principal")
	public Response createPrincipal(@HeaderParam("authCode") int authCode, PrincipalRequisicao requisicao) {
	//	metrics.track("create","PrincipalRequisicao");
		Response response = null;
		Retorno retorno = null;
        Status status = Status.OK;    
        if (authCode != auth.getCode()) {
			status = Status.UNAUTHORIZED;
			retorno = new Retorno();
			retorno.setTemErro(true);
			final List<String> msgsErro = new ArrayList<String>();
			msgsErro.add(MensagensAplicacao.CODIGO_NAO_AUTORIZADO + Integer.toString(authCode));			
			retorno.setMsgsErro(msgsErro);			
        	status = Status.UNAUTHORIZED;
            response = build(status, retorno);            
    		return response;
        }            
	    retorno = service.createPrincipal(requisicao);
        if(retorno!=null && retorno.isTemErro()) {
        	status = Status.NOT_FOUND;
        }
        response = build(status, retorno);
		return response;
	}
	@PUT  @Path("/principal/{id}")
	public Response updatePrincipal(@HeaderParam("authCode") int authCode, @PathParam("id") Long id, PrincipalRequisicao requisicao) {
	//	metrics.track("update","PrincipalRequisicao");
		Response response = null;
		Retorno retorno = null;
        Status status = Status.OK;
        if (authCode != auth.getCode()) {
			status = Status.UNAUTHORIZED;
			retorno = new Retorno();
			retorno.setTemErro(true);
			final List<String> msgsErro = new ArrayList<String>();
			msgsErro.add(MensagensAplicacao.CODIGO_NAO_AUTORIZADO + Integer.toString(authCode));			
			retorno.setMsgsErro(msgsErro);			
        	status = Status.UNAUTHORIZED;
            response = build(status, retorno);            
    		return response;
        }        
       	retorno = service.updatePrincipal(id, requisicao);
        if(retorno!=null && retorno.isTemErro()) {
        	status = Status.NOT_FOUND;
        }
        response = build(status, retorno);
		return response;
	}
	@GET @Path("/principal")
	public Response readAllPrincipal(@HeaderParam("authCode") int authCode) {
		//metrics.track("readAll");
		Response response = null;
		Retorno retorno = null;
        Status status = Status.OK;
        if (authCode != auth.getCode()) {
			status = Status.UNAUTHORIZED;
			retorno = new Retorno();
			retorno.setTemErro(true);
			final List<String> msgsErro = new ArrayList<String>();
			msgsErro.add(MensagensAplicacao.CODIGO_NAO_AUTORIZADO + Integer.toString(authCode));			
			retorno.setMsgsErro(msgsErro);			
        	status = Status.UNAUTHORIZED;
            response = build(status, retorno);            
    		return response;
        }        
	    retorno = service.readAllPrincipal();
        if(retorno!=null && retorno.isTemErro()) {
        	status = Status.NOT_FOUND;
        }
        response = build(status, retorno);
		return response;
	}
	@GET @Path("/principal/{id}")
	public Response readPrincipal(@HeaderParam("authCode") int authCode, @PathParam("id") Long id) {
	//	metrics.track("read",Long.toString(id));	
		Response response = null;
		Retorno retorno = null;
        Status status = Status.OK;
        if (authCode != auth.getCode()) {
			status = Status.UNAUTHORIZED;
			retorno = new Retorno();
			retorno.setTemErro(true);
			final List<String> msgsErro = new ArrayList<String>();
			msgsErro.add(MensagensAplicacao.CODIGO_NAO_AUTORIZADO + Integer.toString(authCode));			
			retorno.setMsgsErro(msgsErro);			
        	status = Status.UNAUTHORIZED;
            response = build(status, retorno);            
    		return response;
        }
        retorno = service.readPrincipal(id);
        if(retorno!=null && retorno.isTemErro()) {
        	status = Status.NOT_FOUND;
        }
        response = build(status, retorno);
		return response;
	}
	@DELETE  @Path("/principal/{id}")
	public Response deletePrincipal(@HeaderParam("authCode") int authCode, @PathParam("id") Long id) {
	//	metrics.track("delete",Long.toString(id));		
		Response response = null;
		Retorno retorno = null;
        Status status = Status.OK;
        if (authCode != auth.getCode()) {
			status = Status.UNAUTHORIZED;
			retorno = new Retorno();
			retorno.setTemErro(true);
			final List<String> msgsErro = new ArrayList<String>();
			msgsErro.add(MensagensAplicacao.CODIGO_NAO_AUTORIZADO + Integer.toString(authCode));			
			retorno.setMsgsErro(msgsErro);			
        	status = Status.UNAUTHORIZED;
            response = build(status, retorno);            
    		return response;
        }        
        retorno = service.deletePrincipal(id);
        if(retorno!=null && retorno.isTemErro()) {
        	status = Status.NOT_FOUND;
        }
        response = build(status, retorno);
		return response;
	}
}

