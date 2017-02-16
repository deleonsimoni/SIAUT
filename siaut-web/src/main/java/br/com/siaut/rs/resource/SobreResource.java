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
import br.com.siaut.rs.requisicao.sobre.SobreRequisicao;
import br.com.siaut.rs.retorno.Retorno;
import br.com.siaut.rs.service.SobreService;
/**
 * 
 * @author SIOGP
 *
 */
@RequestScoped
@Path("/sobre")
@Consumes({ MediaType.APPLICATION_JSON })
@Produces({ MediaType.APPLICATION_JSON })
public class SobreResource extends Resource {
	//private Metrics metrics = Metrics.getInstance();
	private Authentication auth = Authentication.getInstance();
	public SobreResource() {
	//	metrics.track("webservice","Sobre");
	}
	@EJB
	private SobreService service;
	@POST @Path("/sobre")
	public Response createSobre(@HeaderParam("authCode") int authCode, SobreRequisicao requisicao) {
//		metrics.track("create","SobreRequisicao");
		Response response = null;
		Retorno retorno = null;
        Status status = Status.OK;    
        if (authCode != auth.getCode()) {
			status = Status.UNAUTHORIZED;
			retorno = new Retorno();
			retorno.setTemErro(true);
			final List<String> msgsErro = new ArrayList<String>();
			msgsErro.add("Código de acesso " + Integer.toString(authCode) + " não autorizado");			
			retorno.setMsgsErro(msgsErro);			
        	status = Status.UNAUTHORIZED;
            response = build(status, retorno);            
    		return response;
        }            
	    retorno = service.createSobre(requisicao);
        if(retorno!=null && retorno.isTemErro()) {
        	status = Status.NOT_FOUND;
        }
        response = build(status, retorno);
		return response;
	}
	@PUT  @Path("/sobre/{id}")
	public Response updateSobre(@HeaderParam("authCode") int authCode, @PathParam("id") Long id, SobreRequisicao requisicao) {
	//	metrics.track("update","SobreRequisicao");
		Response response = null;
		Retorno retorno = null;
        Status status = Status.OK;
        if (authCode != auth.getCode()) {
			status = Status.UNAUTHORIZED;
			retorno = new Retorno();
			retorno.setTemErro(true);
			final List<String> msgsErro = new ArrayList<String>();
			msgsErro.add("Código de acesso " + Integer.toString(authCode) + " não autorizado");			
			retorno.setMsgsErro(msgsErro);			
        	status = Status.UNAUTHORIZED;
            response = build(status, retorno);            
    		return response;
        }        
       	retorno = service.updateSobre(id, requisicao);
        if(retorno!=null && retorno.isTemErro()) {
        	status = Status.NOT_FOUND;
        }
        response = build(status, retorno);
		return response;
	}
	@GET @Path("/sobre")
	public Response readAllSobre(@HeaderParam("authCode") int authCode) {
	//	metrics.track("readAll");
		Response response = null;
		Retorno retorno = null;
        Status status = Status.OK;
        if (authCode != auth.getCode()) {
			status = Status.UNAUTHORIZED;
			retorno = new Retorno();
			retorno.setTemErro(true);
			final List<String> msgsErro = new ArrayList<String>();
			msgsErro.add("Código de acesso " + Integer.toString(authCode) + " não autorizado");			
			retorno.setMsgsErro(msgsErro);			
        	status = Status.UNAUTHORIZED;
            response = build(status, retorno);            
    		return response;
        }        
	    retorno = service.readAllSobre();
        if(retorno!=null && retorno.isTemErro()) {
        	status = Status.NOT_FOUND;
        }
        response = build(status, retorno);
		return response;
	}
	@GET @Path("/sobre/{id}")
	public Response readSobre(@HeaderParam("authCode") int authCode, @PathParam("id") Long id) {
	//	metrics.track("read",Long.toString(id));	
		Response response = null;
		Retorno retorno = null;
        Status status = Status.OK;
        if (authCode != auth.getCode()) {
			status = Status.UNAUTHORIZED;
			retorno = new Retorno();
			retorno.setTemErro(true);
			final List<String> msgsErro = new ArrayList<String>();
			msgsErro.add("Código de acesso " + Integer.toString(authCode) + " não autorizado");			
			retorno.setMsgsErro(msgsErro);			
        	status = Status.UNAUTHORIZED;
            response = build(status, retorno);            
    		return response;
        }
        retorno = service.readSobre(id);
        if(retorno!=null && retorno.isTemErro()) {
        	status = Status.NOT_FOUND;
        }
        response = build(status, retorno);
		return response;
	}
	@DELETE  @Path("/sobre/{id}")
	public Response deleteSobre(@HeaderParam("authCode") int authCode, @PathParam("id") Long id) {
	//	metrics.track("delete",Long.toString(id));		
		Response response = null;
		Retorno retorno = null;
        Status status = Status.OK;
        if (authCode != auth.getCode()) {
			status = Status.UNAUTHORIZED;
			retorno = new Retorno();
			retorno.setTemErro(true);
			final List<String> msgsErro = new ArrayList<String>();
			msgsErro.add("Código de acesso " + Integer.toString(authCode) + " não autorizado");			
			retorno.setMsgsErro(msgsErro);			
        	status = Status.UNAUTHORIZED;
            response = build(status, retorno);            
    		return response;
        }        
        retorno = service.deleteSobre(id);
        if(retorno!=null && retorno.isTemErro()) {
        	status = Status.NOT_FOUND;
        }
        response = build(status, retorno);
		return response;
	}
}

