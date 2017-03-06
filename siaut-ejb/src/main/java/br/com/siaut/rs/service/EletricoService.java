package br.com.siaut.rs.service;

import java.io.IOException;
import java.io.Serializable;

import javax.ejb.EJB;
import javax.ejb.LocalBean;
import javax.ejb.Stateless;
import javax.inject.Named;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import br.com.siaut.comunicacao.SocketCliente;
import br.com.siaut.util.WebResources;

/**
 * . Objetivo: Classe responsavel em prover servicos referentes a toda parte
 * eletrica do sistema Nome: EletricoServiceBean
 * 
 * @author Deleon
 * @since 1-2015
 * @version 1.0
 */
@Stateless
@LocalBean
@Named
public class EletricoService implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 2516304825451215596L;

	private static final Logger LOGGER = LoggerFactory.getLogger(EletricoService.class);

	@EJB
	private SocketCliente serviceSocket;

	private String statusLuz = "Desligada!";

	public String acionarRele(int rele) throws IOException {
		switch (rele) {
		case 1:
			serviceSocket.conexao(WebResources.IP_ARDUINO, WebResources.PORTA_ARDUINO, WebResources.LIGAR_LUZ);
			return "Rele 1 Ativado";
		case 2:
			serviceSocket.conexao(WebResources.IP_ARDUINO, WebResources.PORTA_ARDUINO, WebResources.LIGAR_AR);
			return "Rele 2 Ativado";
		case 3:
			serviceSocket.conexao(WebResources.IP_ARDUINO, WebResources.PORTA_ARDUINO, WebResources.LIGAR_PRIMEIRO_RELE);
			return "Rele 3 Ativado";
		case 4:
			serviceSocket.conexao(WebResources.IP_ARDUINO, WebResources.PORTA_ARDUINO, WebResources.DESLIGAR_AR);
			return "Rele 4 Ativado";
		case 5:
			serviceSocket.conexao(WebResources.IP_ARDUINO, WebResources.PORTA_ARDUINO, WebResources.DESLIGAR_LUZ);
			return "Rele 5 Ativado";
		case 6:
			serviceSocket.conexao(WebResources.IP_ARDUINO, WebResources.PORTA_ARDUINO, WebResources.DESLIGAR_PRIMEIRO_RELE);
			return "Rele 6 Ativado";
		default:
			return "Nenhum rele encontrado";
		}

	}

	public void ligarLuzFake() {
		statusLuz = ligarLuz();
	}

	public void ligarLuzArduino() throws IOException {
		setStatusLuz("Ligada!");
		serviceSocket.conexao(WebResources.IP_ARDUINO, WebResources.PORTA_ARDUINO, WebResources.LIGAR_LUZ);
	}

	public void desligarLuzArduino() throws IOException {
		setStatusLuz("Desligada!");
		serviceSocket.conexao(WebResources.IP_ARDUINO, WebResources.PORTA_ARDUINO, WebResources.DESLIGAR_LUZ);

	}

	public void ligarPrimeiroReleArduino() throws IOException {
		setStatusLuz("Primeiro Rel� Ligardo!");
		serviceSocket.conexao(WebResources.IP_ARDUINO, WebResources.PORTA_ARDUINO, WebResources.LIGAR_PRIMEIRO_RELE);
	}

	public void desligarPrimeiroReleArduino() throws IOException {
		setStatusLuz("Primeiro Rel� Desligado!");
		serviceSocket.conexao(WebResources.IP_ARDUINO, WebResources.PORTA_ARDUINO, WebResources.DESLIGAR_PRIMEIRO_RELE);

	}

	public void ligarArArduino() throws IOException {
		setStatusLuz("Ligar Aro!");
		serviceSocket.conexao(WebResources.IP_ARDUINO, WebResources.PORTA_ARDUINO, WebResources.LIGAR_AR);
	}

	public void desligarArArduino() throws IOException {
		setStatusLuz("Desligar Ar!");
		serviceSocket.conexao(WebResources.IP_ARDUINO, WebResources.PORTA_ARDUINO, WebResources.DESLIGAR_AR);

	}

	public void desligarLuzFake() {
		statusLuz = desligarLuz();
	}

	public String getStatusLuz() {
		return statusLuz;
	}

	public void setStatusLuz(String statusLuz) {
		this.statusLuz = statusLuz;
	}

	public String ligarLuz() {
		return "Ligarda!";
	}

	public String desligarLuz() {
		return "Desligada!";
	}

	public String ligarPrimeiroRele() {
		return "Primeiro Relé Ligardo!";
	}

	public String desligarPrimeiroRele() {
		return "Primeiro Relé Desligado!";
	}

	public String ligarAr() {
		return "Ligar Ar!";
	}

	public String desligarAr() {
		return "Desligar Ar!";
	}
}
