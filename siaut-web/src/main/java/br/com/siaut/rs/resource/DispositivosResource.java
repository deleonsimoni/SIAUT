package br.com.siaut.rs.resource;

import javax.ejb.EJB;
import javax.ws.rs.Consumes;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;
import javax.ws.rs.core.Response.Status;

import br.com.siaut.rs.requisicao.dispositivos.CadastrarComodoRequisicao;
import br.com.siaut.rs.requisicao.dispositivos.CadastrarDispositivoRequisicao;
import br.com.siaut.rs.requisicao.dispositivos.CadastrarImovelRequisicao;
import br.com.siaut.rs.requisicao.dispositivos.DispositivosRequisicao;
import br.com.siaut.rs.retorno.dispositivos.DispositivosRetorno;
import br.com.siaut.rs.service.DispositivosService;

@Path("/dispositivos")
@Consumes({ MediaType.APPLICATION_JSON })
@Produces({ MediaType.APPLICATION_JSON })
public class DispositivosResource extends Resource {
	
	@EJB 
	private DispositivosService dispositivosService;
	
	@POST @Path("/listarImoveis")
	public Response listarImoveis(DispositivosRequisicao requisicao) {
		Response response = null;
		DispositivosRetorno retorno = null;
		retorno  = dispositivosService.listarCasasUsuario(requisicao);
        Status status = Status.OK;    
		response = build(status, retorno);
		return response;
	}
	
	@POST @Path("/listarComodos")
	public Response listarComodos(DispositivosRequisicao requisicao) {
		Response response = null;
		DispositivosRetorno retorno = null;
		retorno  = dispositivosService.listarComodos(requisicao);
        Status status = Status.OK;    
		response = build(status, retorno);
		return response;
	}
	@POST @Path("/listarDispositivosComodo")
	public Response listarDispositivos(DispositivosRequisicao requisicao) {
		Response response = null;
		DispositivosRetorno retorno = null;
		retorno  = dispositivosService.listarDispositivos(requisicao);
        Status status = Status.OK;    
		response = build(status, retorno);
		return response;
	}
	@POST @Path("/ligarTodosDispositivosComodo")
	public Response ligarTodosDispositivosComodo(DispositivosRequisicao requisicao) {
		Response response = null;
		DispositivosRetorno retorno = null;
		retorno  = dispositivosService.ligarTodosDispositivosComodo(requisicao);
        Status status = Status.OK;    
		response = build(status, retorno);
		return response;
	}
	
	@POST @Path("/ligarTodosDispositivosImovel")
	public Response ligarTodosDispositivosImovel(DispositivosRequisicao requisicao) {
		Response response = null;
		DispositivosRetorno retorno = null;
		retorno  = dispositivosService.ligarTodosDispositivosImovel(requisicao);
        Status status = Status.OK;    
		response = build(status, retorno);
		return response;
	}
	
	@POST @Path("/cadastrarImovel")
	public Response cadastrarImovel(CadastrarImovelRequisicao requisicao) {
		Response response = null;
		DispositivosRetorno retorno = null;
		retorno  = dispositivosService.cadastrarImovel(requisicao);
        Status status = Status.OK;    
		response = build(status, retorno);
		return response;
	}
	
	@POST @Path("/cadastrarComodo")
	public Response cadastrarComodo(CadastrarComodoRequisicao requisicao) {
		Response response = null;
		DispositivosRetorno retorno = null;
		retorno  = dispositivosService.cadastrarComodo(requisicao);
        Status status = Status.OK;    
		response = build(status, retorno);
		return response;
	}
	
	@POST @Path("/cadastrarDispositivo")
	public Response cadastrarDispositivo(CadastrarDispositivoRequisicao requisicao) {
		Response response = null;
		DispositivosRetorno retorno = null;
		retorno  = dispositivosService.cadastrarDispositivo(requisicao);
        Status status = Status.OK;    
		response = build(status, retorno);
		return response;
	}
	
	@POST @Path("/alterarImovel")
	public Response alterarImovel(CadastrarImovelRequisicao requisicao) {
		Response response = null;
		DispositivosRetorno retorno = null;
		retorno  = dispositivosService.alterarImovel(requisicao);
        Status status = Status.OK;    
		response = build(status, retorno);
		return response;
	}
	
	@POST @Path("/alterarComodo")
	public Response alterarComodo(CadastrarComodoRequisicao requisicao) {
		Response response = null;
		DispositivosRetorno retorno = null;
		retorno  = dispositivosService.alterarComodo(requisicao);
        Status status = Status.OK;    
		response = build(status, retorno);
		return response;
	}
	
	@POST @Path("/alterarDispositivo")
	public Response alterarDispositivo(CadastrarDispositivoRequisicao requisicao) {
		Response response = null;
		DispositivosRetorno retorno = null;
		retorno  = dispositivosService.alterarDispositivo(requisicao);
        Status status = Status.OK;    
		response = build(status, retorno);
		return response;
	}
}
