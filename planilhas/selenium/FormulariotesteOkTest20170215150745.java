package br.gov.caixa.sites.teste;

import org.testng.annotations.Test;
import br.gov.caixa.sites.InicializaSiitaUtil;
import br.gov.caixa.sites.generic.GenericTest;

/**
 * 
 * @author CTMONSI
 * 
 */
public class FormulariotesteOkTest extends GenericTest {
			
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

			clickElementById("incluir");			
			sleep(TEMPO_SLEEP);

			//-----------formularioteste------------------//

			clearElementById("nomecadastro");
			inputTextById("nomecadastro", siita.getUtil().lerValorCampoPlanilha("nomecadastro", siita.getCoord(),1));


			clearElementById("datacadastro");
			inputDataModalById("datacadastro", siita.getUtil().lerValorCampoPlanilha("datacadastro", siita.getCoord(),1));


			selectComboByVisibleText("listacadastro",siita.getUtil().lerValorCampoPlanilha("listacadastro", siita.getCoord(),1));
			
			clickElementByIdTratamentoPopup("ok");
			
			
		
				
	}
	}
}
