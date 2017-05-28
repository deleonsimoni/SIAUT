package br.com.siaut.rs.resource;
import java.io.IOException;
/*
	Nesta classe  é  definido o Webservice de autenticacao do seu projeto. 	
 */
import java.util.ArrayList;
import java.util.List;

import javax.ejb.EJB;
import javax.enterprise.context.RequestScoped;
import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.HeaderParam;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;
import javax.ws.rs.core.Response.Status;

import br.com.siaut.Authentication;
import br.com.siaut.rs.resource.retorno.ComponentesRetorno;
import br.com.siaut.rs.retorno.Retorno;
import br.com.siaut.rs.service.EletricoService;
import br.com.siaut.util.MensagensAplicacao;

/**
 * 
 * @author SIAUT
 *
 */
@RequestScoped
@Path("/auth")
@Consumes({ MediaType.APPLICATION_JSON })
@Produces({ MediaType.APPLICATION_JSON })
public class AuthenticationResource extends Resource {
	//private Metrics metrics = Metrics.getInstance();
	private Authentication auth = Authentication.getInstance();
	@EJB
	private EletricoService serviceEletricidade;
	
	public AuthenticationResource() {
		//metrics.track("webservice","Auth");
	}
	
	@GET @Path("/ligar/{id}/{status}")
	public Response ligarBotao(@HeaderParam("authCode") int authCode, @PathParam("id") Integer rele, @PathParam("status") Integer situacao) {
		Response response = null;
		ComponentesRetorno retorno = new ComponentesRetorno();
		
		final List<String> msgsErro = new ArrayList<String>();

		try {
			retorno.setObjComponentesdto(serviceEletricidade.acionarRele(rele, situacao));
			msgsErro.add(MensagensAplicacao.SUCESSO_AUTOMACAO + rele);			

			retorno.setMsgsErro(msgsErro);	
	        Status status = Status.OK;    
	        response = build(status, retorno);
		} catch (IOException e) {
			e.printStackTrace();
			msgsErro.add(MensagensAplicacao.SUCESSO_AUTOMACAO + rele);			
			retorno.setMsgsErro(msgsErro);	
	        Status status = Status.OK;    
	        response = build(status, retorno);
			//return response;
		}
		return response;
		
		/*msgsErro.add("Automação Realizada! Id: " + rele);			
		retorno.setMsgsErro(msgsErro);	
        Status status = Status.OK;    
        response = build(status, retorno);
		return response;*/
	}
	
	@GET
	public Response readAll(@HeaderParam("authCode") int authCode) {
		//metrics.track("readAll","readAll");
		
		Response response = null;
		final Retorno retorno = new Retorno();
		
		Status status = Status.OK;
		if (authCode == auth.getCode()) {
			retorno.setTemErro(false);
			
		} else {
			status = Status.UNAUTHORIZED;
			retorno.setTemErro(true);
			final List<String> msgsErro = new ArrayList<String>();
			msgsErro.add(MensagensAplicacao.CODIGO_NAO_AUTORIZADO + Integer.toString(authCode));			
			retorno.setMsgsErro(msgsErro);
		}
		
		response = build(status, retorno);
		return response;
	}
	
}
