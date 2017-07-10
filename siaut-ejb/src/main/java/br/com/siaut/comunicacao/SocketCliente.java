package br.com.siaut.comunicacao;


import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.net.Socket;
import java.util.List;

import javax.ejb.LocalBean;
import javax.ejb.Stateless;
import javax.inject.Named;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import br.com.siaut.rs.entity.setup.ComponentesEntity;
import br.com.siaut.util.WebResources;
/**
*
* @author SIAUT
*/
@Stateless
@LocalBean
@Named
public class SocketCliente {

	private static final Logger LOGGER = LoggerFactory.getLogger(SocketCliente.class);

	public StringBuilder conexao(final String serverIP, final Integer serverPort, final Integer intRele,
			final String strSituacao) throws IOException {
		/*
		 * criando uma conecxao para o servidor localizado em 192.169.1.201
		 * porta 80
		 */
		StringBuilder stbLista = new StringBuilder();
		try {
			LOGGER.info("#SIAUT Preparar para chamar do Arduino");
			LOGGER.info("#SIAUT Tentando estabelecer conexão com arduino em IP: " + serverIP + " PORTA: " + serverPort);

			Socket client = new Socket(serverIP, serverPort);
			LOGGER.info("#SIAUT Sucesso na conexão");

			// Cria um canal para receber dados.
			DataInputStream in = new DataInputStream(client.getInputStream());
			LOGGER.info("#SIAUT Sucesso ao criar canal para receber dados");

			// Cria um canal para enviar dados.
			DataOutputStream out = new DataOutputStream(client.getOutputStream());
			LOGGER.info("#SIAUT Sucesso ao criar canal para enviar dados");

			String strAux = "";
			Integer intTeste = 20;

			LOGGER.info("#SIAUT Arduino execute o comando abaixo");

			if (strSituacao.equals(WebResources.LIGAR_LUZ)) {
				// enviando uma string para ligar lâmpada.
				out.writeBytes("r" + intRele + "=on\n");
				LOGGER.info("#SIAUT Comando: r" + intRele + "=on\n");

			} else if (strSituacao.equals(WebResources.DESLIGAR_LUZ)) {
				// enviando uma string para ligar lâmpada.
				out.writeBytes("r" + intRele + "=off\n");
				LOGGER.info("#SIAUT Comando: r" + intRele + "=off\n");

			}
			out.write(3);
			LOGGER.info("#SIAUT Comando: " + 3);

			switch (intTeste) {
			case 1:
				out.writeBytes("Ligar Tudo\n"); // enviando uma string
				// out.writeChars("ggg");
				// out.writeUTF("Ligar");
				out.write(12);
				LOGGER.info("#SIAUT Comando: LIGAR TUDO " + 12);
				// out.flush();
				break;
			case 2:
				out.writeBytes("Desligar Tudo\n"); // enviando uma string
				// out.writeUTF("Desligar");
				out.write(12);
				// out.flush();
				LOGGER.info("#SIAUT Comando: DESLIGAR TUDO " + 12);
				break;
			case 3:
				// enviando uma string para ligar lâmpada.
				out.writeBytes("r1=" + String.valueOf(strSituacao) + "\n"); 
				// out.writeUTF("Parar");
				out.write(3);
				LOGGER.info("#SIAUT Comando: r1=" + String.valueOf(strSituacao) + "" + 3);
				break;
			case 4:
				out.writeBytes("r1=off\n"); // enviando uma string para desligar.
				out.write(5);
				LOGGER.info("#SIAUT Comando: r1=off " + 5);
				break;
			case 5:
				out.writeBytes("r2=on\n"); // enviando uma string para ligar lâmpada
				// out.writeUTF("Virar");
				out.write(5);
				LOGGER.info("#SIAUT Comando: r2=on " + 5);
				break;
			case 7:
				out.writeBytes("r3=on\n"); // enviando uma string para ligar lâmpada
				out.write(7);
				LOGGER.info("#SIAUT Comando: r2=on " + 7);
				break;
			case 9:
				out.writeBytes("r4=on\n"); // enviando uma string para ligar lâmpada
				out.write(9);
				LOGGER.info("#SIAUT Comando: r4=on " + 9);
				break;
			case 11:
				out.writeBytes("r5=on\n"); // enviando uma string para ligar lâmpada
				out.write(11);
				LOGGER.info("#SIAUT Comando: r5=on " + 11);
				break;
			case 13:
				out.writeBytes("r6=on\n"); // enviando uma string para ligar lâmpada
				out.write(13);
				LOGGER.info("#SIAUT Comando: r6=on " + 13);
				break;
			case 15:
				out.writeBytes("r7=on\n"); // enviando uma string para ligar lâmpada
				out.write(15);
				LOGGER.info("#SIAUT Comando: r7=on " + 15);
				break;
			case 17:
				out.writeBytes("r8=on\n"); // enviando uma string para ligar lâmpada
				out.write(17);
				LOGGER.info("#SIAUT Comando: r8=on " + 17);
				break;
			case 19:
				out.writeBytes("piscar=on\n"); // enviando uma string para piscar lâmpadas.
				out.write(17);
				LOGGER.info("#SIAUT Comando: piscar=on " + 17);
				break;
			default:
				LOGGER.info("#SIAUT Comando INVÁLIDO, número recebido desconhecido");

			}

			// int read = 0;
			// byte[] b = new byte[1024];
			// while ((read = in.read(b)) != -1) { // returns numOfBytesRead or
			// -1 at EOF
			// // parse, or write to output stream as
			// //dos.write(b, 0, read); // (byte[], offset, numOfBytesToWrite)
			// System.out.println(" ==> "+ read);
			// }

			while ((strAux = extracted(in)) != null) {
				LOGGER.info("#SIAUT RESPOSTA DO ARDUINO: " + strAux);
				stbLista.append(strAux);
			}

			// available stream to be read
			// while(in.available()>0) {
			// // reads characters encoded with modified UTF-8
			// str = in.readUTF();
			// System.out.print(str+" ");
			// }

			// Aguarda o recebimento de uma string.
			// int i = in.readUnsignedByte();
			// int idis = in.readInt();
			// char ch = in.readChar();
			// int s = in.read();
			// String str = in.readLine();
			// String str1 = in.readUTF();
			out.writeBytes("Obrigado!"); // enviando uma string
			// System.out.println(i);
			// System.out.println(ch); //imprimendo a string recebida
			// Fecha os canais de entrada e sa�da.
			in.close();
			out.close();
			LOGGER.info("#SIAUT CANAIS FECHADOS COM SUCESSO");
			// Fecha o socket.
			client.close();
		} catch (Exception e) {
			LOGGER.info("#SIAUT ERRO NA COMUNICAÇÃO COM O ARDUINO!!!!!!");
			LOGGER.error("#SIAUT ERRO: " + e);
		}
		return stbLista;
	}

	public StringBuilder listarComponentes(final String serverIP, final Integer serverPort, final List<ComponentesEntity> lstComponentes) throws IOException {
		/*
		 * criando uma conecxao para o servidor localizado em 192.169.1.201
		 * porta 80
		 */
		StringBuilder stbLista = new StringBuilder();
		List<ComponentesEntity> objLstComponentes = lstComponentes;
		
		try {
			LOGGER.info("#SIAUT Preparar para chamar do Arduino");
			LOGGER.info("#SIAUT Tentando estabelecer conexão com arduino em IP: " + serverIP + " PORTA: " + serverPort);

		
			for (ComponentesEntity componentes  : objLstComponentes) {
				String strAux = "";
				Socket client = new Socket(serverIP, serverPort);
				LOGGER.info("#SIAUT Sucesso na conexão");

				// Cria um canal para receber dados.
				DataInputStream in = new DataInputStream(client.getInputStream());
				LOGGER.info("#SIAUT Sucesso ao criar canal para receber dados");

				// Cria um canal para enviar dados.
				DataOutputStream out = new DataOutputStream(client.getOutputStream());
				LOGGER.info("#SIAUT Sucesso ao criar canal para enviar dados");

				LOGGER.info("#SIAUT Sucesso ao criar canal para enviar dados");
				LOGGER.info("#SIAUT Arduino execute o comando abaixo");
				out.write(330);
				LOGGER.info("#SIAUT Comando: " + componentes.getLngNuNumber());

			    System.out.println("Lista  "
			            + componentes.getLngNuAut002()
			            + " "
			            + componentes.getStrNoComodo()
			            + " "
			            + componentes.getStrNoDispositivo()
			            + " "
			            + componentes.getStrIcLigado()
			    		+ " "
			    		+ componentes.getStrNoCorPainel());
			    
			    if (componentes.getStrIcLigado().equals("0")) {
					// enviando uma string para ligar lâmpada.
					out.writeBytes("r" + componentes.getLngNuNumber() + "=off\n");
			    	LOGGER.debug("r" + componentes.getLngNuNumber() + "=off\n");
					LOGGER.info("#SIAUT Comando: r" + componentes.getLngNuNumber() + "=off\n");					

				} else if (componentes.getStrIcLigado().equals("1")) {
					// enviando uma string para ligar lâmpada.
					out.writeBytes("r" + componentes.getLngNuNumber() + "=on\n");
					LOGGER.debug("r" + componentes.getLngNuNumber() + "=on\n");
					LOGGER.info("#SIAUT Comando: r" + componentes.getLngNuNumber() + "=on\n");
				}
				//out.write(componentes.getLngNuAut003().longValue());
				LOGGER.debug(componentes.getLngNuNumber().longValue()+"");
				LOGGER.info("#SIAUT Comando: " + componentes.getLngNuNumber().longValue());
				while ((strAux = extracted(in)) != null) {
					LOGGER.info("#SIAUT RESPOSTA DO ARDUINO: " + strAux);
					stbLista.append(strAux);
				}
				out.writeBytes("Obrigado!"); // enviando uma string
				in.close();
				out.close();
				LOGGER.info("#SIAUT CANAIS FECHADOS COM SUCESSO");
				// Fecha o socket.
				client.close();
			}
			
		} catch (Exception e) {
			LOGGER.info("#SIAUT ERRO NA COMUNICAÇÃO COM O ARDUINO!!!!!!");
			LOGGER.error("#SIAUT ERRO: " + e);
		}
		return stbLista;
	}

	
	private String extracted(DataInputStream in) throws IOException {
		return in.readLine();
	}

}
