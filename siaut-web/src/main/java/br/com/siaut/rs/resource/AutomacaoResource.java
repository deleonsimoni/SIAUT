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
import javax.ws.rs.GET;
import javax.ws.rs.HeaderParam;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;
import javax.ws.rs.core.Response.Status;

import br.com.siaut.Authentication;
import br.com.siaut.rs.requisicao.teste.CadastrotesteRequisicao;
import br.com.siaut.rs.retorno.Retorno;
import br.com.siaut.rs.service.EletricoService;
/**
 * 
 * @author SIOGP
 *
 */
@RequestScoped
@Path("/automacao")
@Consumes({ MediaType.APPLICATION_JSON })
@Produces({ MediaType.APPLICATION_JSON })
public class AutomacaoResource extends Resource {
	private Authentication auth = Authentication.getInstance();
	
	@EJB
	private EletricoService serviceEletricidade;
	
	@GET @Path("/ligar/{id}")
	public Response ligarBotao(@HeaderParam("authCode") int authCode, @PathParam("id") int rele) {
		Response response = null;
		Retorno retorno = null;
		retorno = new Retorno();
		final List<String> msgsErro = new ArrayList<String>();
		
		//ATENCAAAAAAAAAAO
		//Chamar ARDUINOOOOOOOOOOOOOOOOOOOOOOOOOO
		//DESCOMENTAR
		/*try {
			serviceEletricidade.acionarRele(rele);
		} catch (IOException e) {
			e.printStackTrace();
			msgsErro.add("Erro: Code 007");			
			retorno.setMsgsErro(msgsErro);	
	        Status status = Status.OK;    
	        response = build(status, retorno);
			return response;
		}*/
		
		msgsErro.add("Automação Realizada! Id: " + rele);			
		retorno.setMsgsErro(msgsErro);	
        Status status = Status.OK;    
        response = build(status, retorno);
		return response;
	}
	
	@POST @Path("/ligar")
	public Response createCadastroteste(@HeaderParam("authCode") int authCode, CadastrotesteRequisicao requisicao) {
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
	    //retorno = service.createCadastroteste(requisicao);
        response = build(status, retorno);
		return response;
	}
}