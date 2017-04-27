package br.com.siaut.util;

import java.io.Serializable;

public final class MensagensAplicacao implements Serializable{

	// Mensagens dos WSs
	public static final String SUCESSO_AUTOMACAO = "Automação Realizada! Id: ";
	public static final String CODIGO_NAO_AUTORIZADO = "Código de acesso não autorizado. ";
	public static final String SUCESSO_CONFIGURACOES ="Configurações carregadas com sucesso. ";
	public static final String CARREGADAS_NAO_SUCESSO = "Configurações não carregadas. ";
	public static final String SERVIDOR_INOPERANTE = "Servidor momentaneamente inoperante. ";
	public static final String SERVIDOR_FALHA_DADOS = "Falha ao processar comando. Dados não recebidos. ";
	public static final String SERVIDOR_FALHA_COMANDO =  "Falha ao processar comando. Comando não reconhecido: %s";
	public static final String SERVIDOR_USUARIO_ERRO = "Usuário não identificado nesta sessão.";
	public static final String SERVIDOR_PARAMETRO = "Parametro não recebido: %s";
	//Mensagens dos EJBs
	private static final long serialVersionUID = -6713174625135318575L;
	public static final String ERRO_GENERICO = "Desculpe, erro ao executar o serviço. Tente novamente. ";
	public static final String SUCESSO_GENERICO = "Serviço executado com sucesso. ";
	public static final String DESLIGAR_LAMPADA = "Desligar Lâmpada. ";
	public static final String DESLIGAR_LAMPADA_SUCESSO = "Lâmpada desligada com sucesso. ";
	public static final String DESLIGAR_LAMPADA_ERRO = "Erro ao desligar a lâmpada. ";
	public static final String LIGAR_LAMPADA_SUCESSO = "Lâmpada ligada com sucesso. ";
	public static final String LIGAR_LAMPADA = "Ligar Lâmpada. ";
	public static final String LIGAR_LAMPADA_ERRO = "Erro ao ligar a lâmpada. ";
	public static final String INCLUSAO_SUCESSO = "Inclusão realizada com sucesso. ";
	public static final String LISTAGEM_SUCESSO = "Listagem realizada com sucesso. ";
	public static final String CONSULTA_SUCESSO =  "Consulta realizada com sucesso. ";
	public static final String ALTERACAO_SUCESSO =  "Alteração feita com sucesso. ";
	public static final String EXCLUSAO_SUCESSO = "Exclusão feita com sucesso. ";
	public static final String LIGAR_BOTAO = "Ligar Botão ";
	public static final String DESLIGAR_BOTAO = "Desligar Botão ";
	
	
}
