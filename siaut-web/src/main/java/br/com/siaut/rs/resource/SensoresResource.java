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

import br.com.siaut.rs.retorno.sensores.SensoresRetorno;
import br.com.siaut.rs.service.sensores.SensoresService;
import br.com.siaut.util.MensagensAplicacao;

@RequestScoped
@Path("/temperaturaresource")
@Consumes({ MediaType.APPLICATION_JSON })
@Produces({ MediaType.APPLICATION_JSON })
public class SensoresResource extends Resource {
	
	@EJB 
	private SensoresService srvSensoresService;
	
	

	@GET @Path("/temperatura")
	public Response temperatura() {
		Response response = null;
		//final Retorno retorno = new Retorno();
		//ComponentesRetorno retorno = null;
		SensoresRetorno retorno = new SensoresRetorno();
		final List<String> msgsErro = new ArrayList<String>();

		try {
			//SensoresRetorno
			//retorno.setLstComponentesEntity(srvComponentesService.configuracoes());
			retorno = srvSensoresService.readAllSensores();
			retorno.setLngNuId(1L);
			//retorno.setLstSensoresEntity(srvSensoresService.readAllSensores());
			msgsErro.add(MensagensAplicacao.SUCESSO_CONFIGURACOES);	
			retorno.setMsgsErro(msgsErro);	
	        Status status = Status.OK;    
	        retorno.setTemErro(Boolean.FALSE);
			response = build(status, retorno );
		
		} catch (Exception e) {
			e.printStackTrace();
			msgsErro.add(MensagensAplicacao.CARREGADAS_NAO_SUCESSO);			
			retorno.setMsgsErro(msgsErro);	
	        Status status = Status.OK;    
	        retorno.setTemErro(Boolean.TRUE);
	        response = build(status, retorno );
			return response;
		}
		return response;
	}
}
