/*package br.gov.caixa.sites;

import br.gov.caixa.siita.util.SiitaUtil;

*//**
 * 
 * @author CTMONSI
 * 
 *//*
public class InicializaSiitaUtil{

	private SiitaUtil util;
	private Integer coord;
	
	public InicializaSiitaUtil(String nomeClasse, String caminhoPlanilha, String caminhoFeriado, String ambiente) {		
		
		String planilha = caminhoPlanilha == null ? "/opt/open/sipro_v13/TEMP/andre.lourdes@caixa.gov.br/d832ca611f0de62a5053391202ba653ec0c779db/SITES/sites/planilhas/" : caminhoPlanilha;
		String feriado = caminhoFeriado == null ? "/opt/open/sipro_v13/selenium/feriados.xls" : caminhoFeriado;
		String amb = ambiente == null ? "Desenvolvimento" : ambiente;
						
		this.util = new SiitaUtil(nomeClasse, "sites", planilha, feriado, amb);				
		this.coord = null;
		
	}

	public SiitaUtil getUtil() {
		return util;
	}

	public void setUtil(SiitaUtil util) {
		this.util = util;
	}

	public Integer getCoord() {
		return coord;
	}

	public void setCoord(Integer coord) {
		this.coord = coord;
	}

	
}
// Melhoria no tempo de criação e tamanho das planilhas geradas.
*/