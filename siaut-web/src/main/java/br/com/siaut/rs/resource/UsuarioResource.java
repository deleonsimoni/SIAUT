package br.com.siaut.rs.resource;

import javax.ejb.EJB;
import javax.ws.rs.Consumes;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;
import javax.ws.rs.core.Response.Status;

import br.com.siaut.requisicao.usuario.CadastroRequisicao;
import br.com.siaut.requisicao.usuario.LoginRequisicao;
import br.com.siaut.rs.retorno.login.LoginRetorno;
import br.com.siaut.rs.service.UsuarioService;

/**
 * 
 * @author SIAUT
 *
 */
@Path("/usuario")
@Consumes({ MediaType.APPLICATION_JSON })
@Produces({ MediaType.APPLICATION_JSON })
public class UsuarioResource  extends Resource {
	
	@EJB
	private UsuarioService service;
	
	@POST @Path("/logar")
	public Response logar(LoginRequisicao requisicao) {
		LoginRetorno retorno  = service.logar(requisicao);
        Status status = Status.OK;    
        Response response = build(status, retorno);
		return response;
	}
	
	@POST @Path("/cadastrar")
	public Response cadastrar(CadastroRequisicao requisicao) {
		LoginRetorno retorno = service.cadastrar(requisicao);
        Status status = Status.OK;    
        Response response = build(status, retorno);
		return response;
	}

}
