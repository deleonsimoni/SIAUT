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
			return "Todas lâmpadas ativadas.";
		case 2:
			serviceSocket.conexao(WebResources.IP_ARDUINO, WebResources.PORTA_ARDUINO, WebResources.DESLIGAR_LUZ);
			return "Todas lâmpadas desativadas.";
		case 3:
			serviceSocket.conexao(WebResources.IP_ARDUINO, WebResources.PORTA_ARDUINO, WebResources.LIGAR_PRIMEIRO_RELE);
			return "Primeira lâmpada ativada.";
		case 5:
			serviceSocket.conexao(WebResources.IP_ARDUINO, WebResources.PORTA_ARDUINO, WebResources.LIGAR_SEGUNDO_RELE);
			return "Segunda lâmpada ativada.";
		case 7:
			serviceSocket.conexao(WebResources.IP_ARDUINO, WebResources.PORTA_ARDUINO, WebResources.LIGAR_TERCEIRO_RELE);
			return "Terceira lâmpada ativada.";
		case 9:
			serviceSocket.conexao(WebResources.IP_ARDUINO, WebResources.PORTA_ARDUINO, WebResources.LIGAR_QUARTO_RELE);
			return "Quarta lâmpada ativada.";
		case 11:
			serviceSocket.conexao(WebResources.IP_ARDUINO, WebResources.PORTA_ARDUINO, WebResources.LIGAR_QUINTO_RELE);
			return "Quinta lâmpada ativada.";
		case 13:
			serviceSocket.conexao(WebResources.IP_ARDUINO, WebResources.PORTA_ARDUINO, WebResources.LIGAR_SEXTO_RELE);
			return "Sexta lâmpada ativada.";
		case 15:
			serviceSocket.conexao(WebResources.IP_ARDUINO, WebResources.PORTA_ARDUINO, WebResources.LIGAR_SETIMO_RELE);
			return "Sétima lâmpada ativada.";
		case 17:
			serviceSocket.conexao(WebResources.IP_ARDUINO, WebResources.PORTA_ARDUINO, WebResources.LIGAR_OITAVO_RELE);
			return "Oitava lâmpada ativada.";
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
