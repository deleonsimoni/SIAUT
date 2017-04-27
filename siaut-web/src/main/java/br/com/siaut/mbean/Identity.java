package br.com.siaut.mbean;


/*
	Nesta classe � definido a identifica��o do seu projeto. 	
	
	Esta identifica��o � lida pelo SIPRO via JMX de forma a apresentar informa��es sobre o projeto publicado na tela inicial.
	
*/


import java.lang.management.ManagementFactory;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.ejb.Singleton;
import javax.ejb.Startup;
import javax.management.InstanceAlreadyExistsException;
import javax.management.InstanceNotFoundException;
import javax.management.MBeanRegistrationException;
import javax.management.MBeanServer;
import javax.management.MalformedObjectNameException;
import javax.management.NotCompliantMBeanException;
import javax.management.ObjectName;

import org.apache.log4j.Logger;

import br.com.siaut.Authentication;

/**
 * 
 * @author SIAUT
 *
 */
  
@Singleton
@Startup
public class Identity implements IdentityMBean {
	
	private static Date data = new Date();

	private static final Logger LOG = Logger.getLogger(Identity.class);
	
	private static final SimpleDateFormat dt = new SimpleDateFormat("dd/MM/yyyy");
	private static final SimpleDateFormat hr = new SimpleDateFormat("HH:mm:ss.SSS");

	private static final String BEAN_ID = "br.com.app:deployment=siaut-ear.ear";
	private static final int CODE = 001;
	private static final String ID = "SIAUT";
	private static final String NAME = "SIAUT";
	private static final String DESCRIPTION = "Sistema de Automação";
	private static final String VERSION = "1.0";
	private static final String CONTEXT = "/siaut";
	private static final String ICON = "fa-ils";
	private static final String EXTRA_INFO = "Data e hora da última atualização:'"+dt.format(data) +" "+hr.format(data)+" ',menu:true,contact:''";
	private static final String DATE =  "15-02-2017 15:07";
	private static final String FRAMEWORK = "ANGULARJS - JAVA";
	private static final String USER = "ARDUINO";
	private static final String OWNER = "Infinity Bit";
	
	private Date loadTime = new Date(); 
	
	private Authentication auth = Authentication.getInstance();
	
	public Identity() {
		inicializa();
	}

	private void inicializa() {
	
		LOG.info("Identity()");
		LOG.info("code: " + getCode());
		LOG.info("id: " + getId());
		LOG.info("name: " + getName());
		LOG.info("description: " + getDescription());
		LOG.info("version: " + getFormattedVersion());
		LOG.info("context: " + getContext());
		LOG.info("icon: " + getIcon());
		LOG.info("extraInfo: " + getExtraInfo());
		LOG.info("date: " + getFormattedDate());
		LOG.info("framework: " + getFramework());
		LOG.info("user: " + getUser());
		LOG.info("owner: " + getOwner());
		LOG.info("authCode: " + getAuthCode());
		LOG.info("authDate: " + getAuthDate());		
		
		registerBean();
		
		//Metrics.getInstance();
	}

	public void registerBean() {
		final MBeanServer server = ManagementFactory.getPlatformMBeanServer();
		try {
			ObjectName objectName = new ObjectName(BEAN_ID);
			
			try {
				server.unregisterMBean(objectName);
			} catch (InstanceNotFoundException ignore) {
				LOG.error(ignore);
			}
		
			server.registerMBean(this, objectName);
			
			LOG.info("MBean registered: " + objectName);			
		} catch (MalformedObjectNameException mone) {
			LOG.error(mone);
		} catch (InstanceAlreadyExistsException iaee) {
			LOG.error(iaee);
		} catch (MBeanRegistrationException mbre) {
			LOG.error(mbre);
		} catch (NotCompliantMBeanException ncmbe) {
			LOG.error(ncmbe);
		}			   
	}

	@Override
	public int getCode() {
		return CODE;
	}

	@Override
	public String getId() {
		return ID;
	}

	@Override
	public String getName() {
		return NAME;
	}

	@Override
	public String getDescription() {
		return DESCRIPTION;
	}

	@Override
	public int getVersion() {
		return 0;
	}

	@Override
	public int getBuild() {
		return 0;
	}

	@Override
	public int getRelease() {
		return 0;
	}
	

	@Override
	public String getFormattedVersion() {
		return VERSION;
	}	

	@Override
	public String getContext() {
		return CONTEXT;
	}

	@Override
	public String getIcon() {
		return ICON;
	}
	
	@Override
	public String getExtraInfo() {
		return EXTRA_INFO;
	}	

	@Override
	public Date getDate() {
		Date result = null;
		DateFormat df = new SimpleDateFormat("dd-MM-yyyy HH:mm:ssss");
		try {
			result = df.parse(DATE);
		} catch (ParseException e) {
			LOG.error(e);
		}
		return result;
	}

	@Override
	public String getFormattedDate() {		
		return DATE;
	}	
	
	@Override
	public String getFramework() {
		return FRAMEWORK;
	}	

	@Override
	public String getUser() {
		return USER;
	}
	
	@Override
	public String getOwner() {
		return OWNER;
	}

	@Override
	public String getFormattedLoadTime() {
		DateFormat df = new SimpleDateFormat("dd-MM-yyyy HH:mm");
		return df.format(loadTime);
	}

	@Override
	public Date getLoadTime() {
		return loadTime;
	}	
	
	@Override
	public int getAuthCode() {
		return auth.getCode();
	}

	@Override
	public Date getAuthDate() {
		return auth.getDate();
	}		
	
	@Override
	public String getFormattedAuthDate() {
		DateFormat df = new SimpleDateFormat("dd-MM-yyyy HH:mm");
		Date authDate = auth.getDate();
		return df.format(authDate);
	}	
	
	@Override
	public void generate() {
		auth.generate();		
	}

	@Override
	public void generateCode(int min, int max) {
		auth.generateCode(min, max);		
	}

	@Override
	public void generateDate(int validToHours) {
		auth.generateDate(validToHours);		
	}	

}
