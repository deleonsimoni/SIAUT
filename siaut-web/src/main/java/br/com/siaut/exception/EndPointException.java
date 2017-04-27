package br.com.siaut.exception;

import br.com.siaut.util.MensagensAplicacao;

/**
 * 
 * @author SIAUT
 *
 */
public class EndPointException extends GeneralException {

	/**
	 * 
	 */
	private static final long serialVersionUID = -906684481733836559L;
	
	public static final GeneralException RESPONSE_CODE_ERROR_GENERAL = new GeneralException(600,MensagensAplicacao.SERVIDOR_INOPERANTE);
	public static final GeneralException RESPONSE_CODE_ERROR_DATA_NOT_FOUND = new GeneralException(601,MensagensAplicacao.SERVIDOR_FALHA_DADOS);
	public static final GeneralException RESPONSE_CODE_ERROR_COMMAND_NOT_DEFINED = new GeneralException(602,MensagensAplicacao.SERVIDOR_FALHA_COMANDO);
	public static final GeneralException RESPONSE_CODE_ERROR_INVALID_TOKEN = new GeneralException(603,MensagensAplicacao.SERVIDOR_USUARIO_ERRO );
	public static final GeneralException RESPONSE_CODE_ERROR_INVALID_PARAMETER = new GeneralException(604,MensagensAplicacao.SERVIDOR_PARAMETRO );
	
	public EndPointException(int code, String message) {
		super(code,message);
	}	
	public EndPointException(GeneralException general, String[]args) {
		super(general,args);
	}
	public EndPointException(GeneralException general, String arg) {
		super(general,arg);
	}	
	public EndPointException(GeneralException general) {
		super(general);
	}	


}

