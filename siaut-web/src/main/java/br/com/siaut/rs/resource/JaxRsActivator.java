package br.com.siaut.rs.resource;

import java.util.HashSet;
import java.util.Set;

import javax.ws.rs.ApplicationPath;
import javax.ws.rs.core.Application;

import io.swagger.annotations.Api;
import io.swagger.annotations.Contact;
import io.swagger.annotations.ExternalDocs;
import io.swagger.annotations.Info;
import io.swagger.annotations.License;
import io.swagger.annotations.SwaggerDefinition;
import io.swagger.annotations.Tag;
import io.swagger.jaxrs.config.BeanConfig;
import io.swagger.jaxrs.listing.ApiListingResource;
import io.swagger.jaxrs.listing.SwaggerSerializers;


/**
 * A class extending {@link Application} and annotated with @ApplicationPath is the Java EE 6
 * "no XML" approach to activating JAX-RS.
 * 
 * <p>
 * Resources are served relative to the servlet path specified in the {@link ApplicationPath}
 * annotation.
 * </p>
 */
@Api(value= "/ws")
@ApplicationPath("/ws")
@SwaggerDefinition(
        info = @Info(
                description = "Lista de APIs construídas como exemplo",
                version = "1.0.0.0",
                title = "API de Exemplo SIAND",
                termsOfService = "http://www.caixa.gov.br/api/terms.html",
                contact = @Contact(
                   name = "DETEC07", 
                   email = "detec07@caixa.gov.br", 
                   url = "http://arquiteturaweb.caixa/"
                ),
                license = @License(
                   name = "Apache 2.0", 
                   url = "http://www.apache.org/licenses/LICENSE-2.0"
                )
        ),
        consumes = {"application/json", "application/xml"},
        produces = {"application/json", "application/xml"},
        schemes = {SwaggerDefinition.Scheme.HTTP, SwaggerDefinition.Scheme.HTTPS},
        tags = {
                @Tag(name = "Private", description = "Tag used to denote operations as private")
        }, 
        externalDocs = @ExternalDocs(value = "Portal Arquitetura Web CAIXA", url = "http://arquiteturaweb.caixa/")
)
public class JaxRsActivator extends Application {
	
	public JaxRsActivator() {
	   /* class body intentionally left blank */
		BeanConfig conf = new BeanConfig();
		conf.setTitle("API de Automação da casa inteligente.");
		conf.setDescription("Lista de APIs construídas da automação.");
		conf.setVersion("1.0.0");
		conf.setHost("localhost:8089");
		conf.setBasePath("/siaut/ws");
		conf.setSchemes(new String[] { "http", "https" });
		conf.setResourcePackage("br.com.siaut");
		conf.setScan(true);
	}
	
	@Override
	public Set<Class<?>> getClasses() {
		Set<Class<?>> resources = new HashSet<Class<?>>();
		resources.add(ApiListingResource.class);
		resources.add(SwaggerSerializers.class);
		addRestResourceClasses(resources);
		return resources;
	}
	
	/**
     * Do not modify addRestResourceClasses() method.
     * It is automatically populated with
     * all resources defined in the project.
     * If required, comment out calling this method in getClasses().
     */
    private void addRestResourceClasses(Set<Class<?>> resources) {
    	resources.add(br.com.siaut.rs.resource.ComponentesResource.class);
    	resources.add(br.com.siaut.rs.resource.AutomacaoResource.class);
    	resources.add(br.com.siaut.rs.resource.DispositivosResource.class);
    	resources.add(br.com.siaut.rs.resource.SegurancaResource.class);
    	resources.add(br.com.siaut.rs.resource.SensoresResource.class);
    	resources.add(br.com.siaut.rs.resource.UsuarioResource.class);
    	
    }
}


