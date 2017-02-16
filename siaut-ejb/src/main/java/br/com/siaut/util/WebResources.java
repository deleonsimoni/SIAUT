package br.com.siaut.util;

import java.io.Serializable;

/**.
 * Objetivo: Classe com metodos acessarios e atribubos staticos somente para camada web
 * Nome: WebResources
 * @author c112460
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
	public static final String IP_ARDUINO = "192.168.25.23";
	public static final int PORTA_ARDUINO = 8888;
	public static final int LIGAR_LUZ = 1;
	public static final int DESLIGAR_LUZ = 2;
	public static final int LIGAR_PRIMEIRO_RELE = 3;
	public static final int DESLIGAR_PRIMEIRO_RELE = 4;
	public static final int LIGAR_AR =15;
	public static final int DESLIGAR_AR = 16;
}
