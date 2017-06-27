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

import br.com.siaut.rs.requisicao.usuario.UsuarioRequisicao;
import br.com.siaut.rs.retorno.componentes.ComponentesRetorno;
import br.com.siaut.rs.service.ComponentesService;
import br.com.siaut.util.MensagensAplicacao;

@Path("/componentesresource")
@Consumes({ MediaType.APPLICATION_JSON })
@Produces({ MediaType.APPLICATION_JSON })
public class ComponentesResource extends Resource {
	
	@EJB 
	private ComponentesService srvComponentesService;
	
	@POST @Path("/setup")
	public Response setup(UsuarioRequisicao requisicao) {
		Response response = null;
		ComponentesRetorno retorno = null;
		
		retorno = new ComponentesRetorno();
		final List<String> msgsErro = new ArrayList<String>();

		try {
			retorno  = srvComponentesService.configuracoes(requisicao);
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
