package br.com.siaut.rs.resource;
/*
	Nesta classe  é  definido o Webservice de autenticacao do seu projeto. 	
 */
import java.util.ArrayList;
import java.util.List;

import javax.enterprise.context.RequestScoped;
import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.HeaderParam;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;
import javax.ws.rs.core.Response.Status;

import br.com.siaut.Authentication;
import br.com.siaut.rs.retorno.Retorno;
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
	
	public AuthenticationResource() {
		//metrics.track("webservice","Auth");
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
