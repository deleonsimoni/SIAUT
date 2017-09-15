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
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiResponse;
import io.swagger.annotations.ApiResponses;
import io.swagger.annotations.ResponseHeader;
//import io.swagger.annotations.Api;
//import io.swagger.annotations.ApiOperation;
//import io.swagger.annotations.ApiParam;
//import io.swagger.annotations.ApiResponse;
//import io.swagger.annotations.ApiResponses;
//import io.swagger.annotations.Authorization;
//import io.swagger.annotations.ResponseHeader;


@Api(value = "/componentesresource", tags = "componentesresource")
@Path("/componentesresource")
@Consumes({ MediaType.APPLICATION_JSON })
public class ComponentesResource extends Resource {
	
	@EJB 
	private ComponentesService srvComponentesService;
	

	@ApiOperation(
			value = "Listar todos os dispositivos.",
		    notes = "Esta API retornará todos os dispositivos "+
			" consolidados para ser apresentado na tela.",
		    response = ComponentesResource.class,
		    responseContainer = "Response",
		    produces = MediaType.APPLICATION_JSON)
	@ApiResponses(value={
			@ApiResponse(
					code = 201, message = "Imóveis listado com sucesso.", 
					response = DispositivosResource.class, 
					responseHeaders = @ResponseHeader(
							name = "Location", 
							description = "Lista de imóveis", 
							response = Response.class)
				
					),
			@ApiResponse(code = 200, message = "Requisição realizada com sucesso."),
			@ApiResponse(code = 400, message = "Requisição inválida"),
	        @ApiResponse(code = 401, message = "Não autorizado."),
	        @ApiResponse(code = 403, message = "Acesso negado."),
	        @ApiResponse(code = 404, message = "Não encontrado."),
	        @ApiResponse(code = 405, message = "Método não permitido."),
	        @ApiResponse(code = 500, message = "Erro interno do servidor."),
	        @ApiResponse(code = 501, message = "Não implementado.")}
	    )
	@POST @Path("/setup")
	@Consumes(MediaType.APPLICATION_JSON)
	@Produces({ MediaType.APPLICATION_JSON })
	public Response setup(UsuarioRequisicao requisicao) {
		Response response = null;
		ComponentesRetorno retorno = null;
		
		retorno = new ComponentesRetorno();
		final List<String> msgsErro = new ArrayList<String>();

		try {
			retorno  = srvComponentesService.configuracoes(requisicao);
			retorno.setLngNuId(1L);
			//<div class="panel panel-primary">
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
