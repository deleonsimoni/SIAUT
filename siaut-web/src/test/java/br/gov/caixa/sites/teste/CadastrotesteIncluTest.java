/*package br.gov.caixa.sites.teste;

import org.testng.annotations.Test;
import br.gov.caixa.sites.InicializaSiitaUtil;
import br.gov.caixa.sites.generic.GenericTest;

*//**
 * 
 * @author CTMONSI
 * 
 *//*
public class CadastrotesteIncluTest extends GenericTest {
			
	@Test
	public void iniciar() throws Exception {
		inicializaAplicacao();

		InicializaSiitaUtil siita = new InicializaSiitaUtil(this.getClass().getSimpleName(),caminhoPlanilhas, caminhoFeriado, ambiente);

		
		autorizacaoSiogp();
		
		//FOR_SIITA
		
		
		for (Integer i : siita.getUtil().getNumerosDasLinhasDoAmbiente()) { siita.setCoord(i);
		
			//-----------cadastroteste------------------//

				//MENU
			clickElementByXpath("//div/ul/li[4]/a/span");

			clearElementById("nomepesquisa");
			inputTextById("nomepesquisa", siita.getUtil().lerValorCampoPlanilha("nomepesquisa", siita.getCoord(),0));

			
			clickElementByIdTratamentoPopup("incluir");
			
			
		
				
	}
	}
}
*/