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
import br.com.siaut.rs.requisicao.splash.SplashRequisicao;
import br.com.siaut.rs.retorno.Retorno;
import br.com.siaut.rs.service.SplashService;
/**
 * 
 * @author SIOGP
 *
 */
@RequestScoped
@Path("/splash")
@Consumes({ MediaType.APPLICATION_JSON })
@Produces({ MediaType.APPLICATION_JSON })
public class SplashResource extends Resource {
	//private Metrics metrics = Metrics.getInstance();
	private Authentication auth = Authentication.getInstance();
	public SplashResource() {
	//	metrics.track("webservice","Splash");
	}
	@EJB
	private SplashService service;
	@POST @Path("/splash")
	public Response createSplash(@HeaderParam("authCode") int authCode, SplashRequisicao requisicao) {
	//	metrics.track("create","SplashRequisicao");
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
	    retorno = service.createSplash(requisicao);
        if(retorno!=null && retorno.isTemErro()) {
        	status = Status.NOT_FOUND;
        }
        response = build(status, retorno);
		return response;
	}
	@PUT  @Path("/splash/{id}")
	public Response updateSplash(@HeaderParam("authCode") int authCode, @PathParam("id") Long id, SplashRequisicao requisicao) {
	//	metrics.track("update","SplashRequisicao");
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
       	retorno = service.updateSplash(id, requisicao);
        if(retorno!=null && retorno.isTemErro()) {
        	status = Status.NOT_FOUND;
        }
        response = build(status, retorno);
		return response;
	}
	@GET @Path("/splash")
	public Response readAllSplash(@HeaderParam("authCode") int authCode) {
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
	    retorno = service.readAllSplash();
        if(retorno!=null && retorno.isTemErro()) {
        	status = Status.NOT_FOUND;
        }
        response = build(status, retorno);
		return response;
	}
	@GET @Path("/splash/{id}")
	public Response readSplash(@HeaderParam("authCode") int authCode, @PathParam("id") Long id) {
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
        retorno = service.readSplash(id);
        if(retorno!=null && retorno.isTemErro()) {
        	status = Status.NOT_FOUND;
        }
        response = build(status, retorno);
		return response;
	}
	@DELETE  @Path("/splash/{id}")
	public Response deleteSplash(@HeaderParam("authCode") int authCode, @PathParam("id") Long id) {
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
        retorno = service.deleteSplash(id);
        if(retorno!=null && retorno.isTemErro()) {
        	status = Status.NOT_FOUND;
        }
        response = build(status, retorno);
		return response;
	}
}

