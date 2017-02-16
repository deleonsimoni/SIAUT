/*package br.com.siaut;


	Nesta classe � definida a integra��o com a coletagem de m�tricas. 	
	
	Esta coleta � enviada ao CaixaAnalythics e possibilita um amplo acompanhamento da utiliza��o do seu projeto por seus clientes.
	Os dados s�o enviados por post via threads ass�ncronas. 
	
	Para seu correto funcionamento � necess�rio acesso a internet, no entanto a impossibilidade de acessar a internet n�o ir� prejudicar o funcionamento da aplica��o.
	Para n�o comprometer a privacidade do seu usuario, nenhuma informacao particular deve ser enviada.
	ex: cpf, data de nascimento, endereco, etc
	


import br.gov.caixa.analytics.CaixaAnalytics;
import br.gov.caixa.analytics.CaixaAnalyticsApp;
import br.gov.caixa.analytics.exception.CaixaAnalyticsException;
import java.util.Random;

*//**
 * 
 * @author SIOGP
 *
 *//*
public final class Metrics{
	private static final long MILISEGUNDOS = 1000L;
	private static final String ANALYTHICS_CODE = "ae2dfd70c8cda69bce3e61279a96644b486a2111"; 
	private CaixaAnalytics tracker = null;
	private static final String APP_NAME = "SITES:ab92d3ebda6285d3615d3f635d74aae23112fdef";
	private static final String APP_ID = "ab92d3ebda6285d3615d3f635d74aae23112fdef";
	private static final String APP_CID = "SITES_SERVICE";
	
	private static final String APP_VERSION = "1.0";
	private static final String APP_DESCR = "teste";
	private static final String APP_TYPE = "ANGULAR003v200";
	private static final String APP_CONTACT = "andre.lourdes@caixa.gov.br";
	private static final String APP_BUILDER_NAME = "andre.lourdes@caixa.gov.br";
	private static final String APP_BUILDER_FULL_NAME = "Andre Marcelo de Lourdes";
	private static final String APP_USER_ID = "5079";
	private static final String APP_VIEWS = "5";
	private static final String APP_MENUS = "3";	
	
	private static Metrics metric;
	
	public static Metrics getInstance() {
		if (metric == null) {
			metric = new Metrics();
		}
		return metric;
	}
	
	private Metrics() {
		
		if (ANALYTHICS_CODE != null) {			
			
			final int session = randInt(1, 2147483647);
			tracker = new CaixaAnalytics(ANALYTHICS_CODE,session,APP_CID);
			
			this.track("appID",APP_ID);
			this.track("appCID",APP_CID);
			this.track("appName",APP_NAME);
			this.track("appVersion",APP_VERSION);
			this.track("appDescr",APP_DESCR);
			this.track("appType",APP_TYPE);
			this.track("appContact",APP_CONTACT);
			this.track("appBuilderName",APP_BUILDER_NAME);
			this.track("appBuilderFullName",APP_BUILDER_FULL_NAME);
			this.track("appUserId",APP_USER_ID);
			
			this.track("appViews",APP_VIEWS);
			this.track("appMenus",APP_MENUS);
			
		}
	}
	
	public void track(String action, String label) {
		track(action,label,null);
	}
	public void track(String action){
		track(action,null,null);
	}	

	public void track(String action, String label, Integer version) {
		if (tracker == null) {
			return;
		}
		if (version != null) {
			tracker.trackEvent(action, label, version);
		} else if (label != null) {
			tracker.trackEvent(action, label);
		} else {
			tracker.trackEvent(action);
		}
	}		
	
		private int randInt(int min, int max) {
		Random rand = new Random();
		int randomNum = rand.nextInt((max - min) + 1) + min;

		return randomNum;
	}
}

*/