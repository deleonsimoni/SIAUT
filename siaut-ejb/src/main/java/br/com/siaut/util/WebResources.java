package br.com.siaut.util;



import java.io.Serializable;

/**.
 * Objetivo: Classe com metodos acessarios e atribubos staticos somente para camada web
 * Nome: WebResources
 * @author SIAUT
 * @since 06/08/2013
 * @version 1.0
 *
 */
public final class WebResources implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 8068593558115881143L;
	
	//public static final String IP_ARDUINO = "192.168.1.7 ";
	//public static final int PORTA_ARDUINO = 80;
	//public static final String IP_ARDUINO = "192.168.25.41";
	//192.168.1.1 do roteador
	public static final String IP_ARDUINO = "192.168.1.4";
	public static final String PORTA_ARDUINO = "7077";
	public static final int DESLIGADA = 0;
	public static final int LIGADA = 1;		
	public static final String LIGAR_LUZ = "1";
	public static final String DESLIGAR_LUZ = "0";
	public static final String LIGAR_TUDO = "3";
	public static final String DESLIGAR_TUDO = "4";
	public static final String PISCAR = "5";
	public static final int LIGAR_PRIMEIRO_RELE = 3;
	public static final int DESLIGAR_PRIMEIRO_RELE = 4;
	
	public static final int LIGAR_SEGUNDO_RELE = 5;
	public static final int DESLIGAR_SEGUNDO_RELE = 6;
	public static final int LIGAR_TERCEIRO_RELE = 7;
	public static final int DESLIGAR_TERCEIRO_RELE = 8;
	public static final int LIGAR_QUARTO_RELE = 9;
	public static final int DESLIGAR_QUARTO_RELE = 10;
	public static final int LIGAR_QUINTO_RELE = 11;
	public static final int DESLIGAR_QUINTO_RELE = 12;
	public static final int LIGAR_SEXTO_RELE = 13;
	public static final int DESLIGAR_SEXTO_RELE = 14;
	public static final int LIGAR_SETIMO_RELE = 15;
	public static final int DESLIGAR_SETIMO_RELE = 16;
	public static final int LIGAR_OITAVO_RELE = 17;
	public static final int DESLIGAR_OITAVO_RELE = 18;
	
	public static final int LIGAR_AR =15;
	public static final int DESLIGAR_AR = 16;
}

