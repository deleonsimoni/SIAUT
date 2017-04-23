package br.com.siaut.rs.resource;

import java.util.ArrayList;
import java.util.List;

import javax.ejb.EJB;
import javax.enterprise.context.RequestScoped;
import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;
import javax.ws.rs.core.Response.Status;

import br.com.siaut.rs.resource.retorno.ComponentesRetorno;
import br.com.siaut.rs.service.ComponentesService;

@RequestScoped
@Path("/componentesresource")
@Consumes({ MediaType.APPLICATION_JSON })
@Produces({ MediaType.APPLICATION_JSON })
public class ComponentesResource extends Resource {
	
	@EJB 
	private ComponentesService srvComponentesService;
	
	@GET @Path("/setup")
	public Response setup() {
		Response response = null;
		ComponentesRetorno retorno = null;
		
		retorno = new ComponentesRetorno();
		final List<String> msgsErro = new ArrayList<String>();

		try {
			retorno.setLstComponentesEntity(srvComponentesService.configuracoes());
			msgsErro.add("Configurações carregadas ");			
			retorno.setMsgsErro(msgsErro);	
	        Status status = Status.OK;    
	        retorno.setTemErro(Boolean.FALSE);
			response = build(status, retorno);
		
		} catch (Exception e) {
			e.printStackTrace();
			msgsErro.add("Problemas no carregamento das configurações. ");			
			retorno.setMsgsErro(msgsErro);	
	        Status status = Status.OK;    
	        retorno.setTemErro(Boolean.TRUE);
	        response = build(status, retorno);
			//return response;
		}
		return response;
	}
}
