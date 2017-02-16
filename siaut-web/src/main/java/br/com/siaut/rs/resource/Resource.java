package br.com.siaut.rs.resource;

import javax.ws.rs.core.Response;
import javax.ws.rs.core.Response.Status;

/**
 * 
 * @author SIOGP
 *
 */
public class Resource {
	
	protected Response build(Status status, Object object) {
		return Response.status(status)
				.entity(object)
				.header("Access-Control-Allow-Origin", "*")
				.header("Access-Control-Allow-Credentials", "true")
				.header("Access-Control-Allow-Headers", "Origin, X-Request-Width, Content-Type, Accept")
				.build();
	}

}

