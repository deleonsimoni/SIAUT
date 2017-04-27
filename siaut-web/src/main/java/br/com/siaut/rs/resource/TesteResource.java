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
import br.com.siaut.rs.requisicao.teste.CadastrotesteRequisicao;
import br.com.siaut.rs.requisicao.teste.FormulariotesteRequisicao;
import br.com.siaut.rs.retorno.Retorno;
import br.com.siaut.rs.service.TesteService;
import br.com.siaut.util.MensagensAplicacao;
/**
 * 
 * @author SIAUT
 *
 */
@RequestScoped
@Path("/teste")
@Consumes({ MediaType.APPLICATION_JSON })
@Produces({ MediaType.APPLICATION_JSON })
public class TesteResource extends Resource {
	//private Metrics metrics = Metrics.getInstance();
	private Authentication auth = Authentication.getInstance();
	public TesteResource() {
	//	metrics.track("webservice","Teste");
	}
	@EJB
	private TesteService service;
	@POST @Path("/cadastroteste")
	public Response createCadastroteste(@HeaderParam("authCode") int authCode, CadastrotesteRequisicao requisicao) {
	//	metrics.track("create","CadastrotesteRequisicao");
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
	    retorno = service.createCadastroteste(requisicao);
        if(retorno!=null && retorno.isTemErro()) {
        	status = Status.NOT_FOUND;
        }
        response = build(status, retorno);
		return response;
	}
	@PUT  @Path("/cadastroteste/{id}")
	public Response updateCadastroteste(@HeaderParam("authCode") int authCode, @PathParam("id") Long id, CadastrotesteRequisicao requisicao) {
	//	metrics.track("update","CadastrotesteRequisicao");
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
       	retorno = service.updateCadastroteste(id, requisicao);
        if(retorno!=null && retorno.isTemErro()) {
        	status = Status.NOT_FOUND;
        }
        response = build(status, retorno);
		return response;
	}
	@GET @Path("/cadastroteste")
	public Response readAllCadastroteste(@HeaderParam("authCode") int authCode) {
	//	metrics.track("readAll");
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
	    retorno = service.readAllCadastroteste();
        if(retorno!=null && retorno.isTemErro()) {
        	status = Status.NOT_FOUND;
        }
        response = build(status, retorno);
		return response;
	}
	@GET @Path("/cadastroteste/{id}")
	public Response readCadastroteste(@HeaderParam("authCode") int authCode, @PathParam("id") Long id) {
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
        retorno = service.readCadastroteste(id);
        if(retorno!=null && retorno.isTemErro()) {
        	status = Status.NOT_FOUND;
        }
        response = build(status, retorno);
		return response;
	}
	@DELETE  @Path("/cadastroteste/{id}")
	public Response deleteCadastroteste(@HeaderParam("authCode") int authCode, @PathParam("id") Long id) {
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
        retorno = service.deleteCadastroteste(id);
        if(retorno!=null && retorno.isTemErro()) {
        	status = Status.NOT_FOUND;
        }
        response = build(status, retorno);
		return response;
	}
	@POST @Path("/formularioteste")
	public Response createFormularioteste(@HeaderParam("authCode") int authCode, FormulariotesteRequisicao requisicao) {
	//	metrics.track("create","FormulariotesteRequisicao");
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
	    retorno = service.createFormularioteste(requisicao);
        if(retorno!=null && retorno.isTemErro()) {
        	status = Status.NOT_FOUND;
        }
        response = build(status, retorno);
		return response;
	}
	@PUT  @Path("/formularioteste/{id}")
	public Response updateFormularioteste(@HeaderParam("authCode") int authCode, @PathParam("id") Long id, FormulariotesteRequisicao requisicao) {
	//	metrics.track("update","FormulariotesteRequisicao");
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
       	retorno = service.updateFormularioteste(id, requisicao);
        if(retorno!=null && retorno.isTemErro()) {
        	status = Status.NOT_FOUND;
        }
        response = build(status, retorno);
		return response;
	}
	@GET @Path("/formularioteste")
	public Response readAllFormularioteste(@HeaderParam("authCode") int authCode) {
	//	metrics.track("readAll");
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
	    retorno = service.readAllFormularioteste();
        if(retorno!=null && retorno.isTemErro()) {
        	status = Status.NOT_FOUND;
        }
        response = build(status, retorno);
		return response;
	}
	@GET @Path("/formularioteste/{id}")
	public Response readFormularioteste(@HeaderParam("authCode") int authCode, @PathParam("id") Long id) {
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
        retorno = service.readFormularioteste(id);
        if(retorno!=null && retorno.isTemErro()) {
        	status = Status.NOT_FOUND;
        }
        response = build(status, retorno);
		return response;
	}
	@DELETE  @Path("/formularioteste/{id}")
	public Response deleteFormularioteste(@HeaderParam("authCode") int authCode, @PathParam("id") Long id) {
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
        retorno = service.deleteFormularioteste(id);
        if(retorno!=null && retorno.isTemErro()) {
        	status = Status.NOT_FOUND;
        }
        response = build(status, retorno);
		return response;
	}
}

