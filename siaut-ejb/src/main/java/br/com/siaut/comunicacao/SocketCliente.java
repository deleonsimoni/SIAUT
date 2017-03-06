package br.com.siaut.comunicacao;


import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.net.Socket;

import javax.ejb.LocalBean;
import javax.ejb.Stateless;
import javax.inject.Named;


/**
 *
 * @author Touca
 */
@Stateless
@LocalBean
@Named
public class SocketCliente {
    
    public StringBuilder conexao(final String serverIP, final int serverPort, final int intNuMensagem) throws IOException{
    	/*criando uma conecxao para o servidor localizado
    	* em 192.169.1.201 porta 80
    	*/
    	Socket client = new Socket(serverIP, serverPort);      
    	//Cria um canal para receber dados.
    	DataInputStream in=new DataInputStream(client.getInputStream());
    	//Cria um canal para enviar dados.
    	DataOutputStream out=new DataOutputStream(client.getOutputStream());
    	StringBuilder stbLista = new StringBuilder();
    	String strAux = "";
    	
    	switch (intNuMensagem) {
	    	case 1:
	    		out.writeBytes("Ligar Tudo\n");       //enviando uma string
	    		//out.writeChars("ggg"); 
	    		//out.writeUTF("Ligar");
	    		out.write(12);
	    		//out.flush();
		    	break;
	    	case 2:
	    		out.writeBytes("Desligar Tudo\n");       //enviando uma string
	    		//out.writeUTF("Desligar");
	    		out.write(12);
	    		//out.flush();
		    	break;
	    	case 3:
	    		out.writeBytes("r1=on\n");       //enviando uma string
	    		//out.writeUTF("Parar");
	    		out.write(12);
		    	break;
	    	case 4:
	    		out.writeBytes("r1=off\n");       //enviando uma string
	    		//out.writeUTF("Virar");
	    		out.write(12);
		    	break;
	    	case 15:
	    		out.writeBytes("rar=on\n");       //enviando uma string
	    		//out.writeUTF("Girar");
	    		out.write(12);
		    	break;
	    	case 16:
	    		out.writeBytes("rar=off\n");       //enviando uma string
	    		//out.writeUTF("Gravar");
	    		out.write(12);
		    	break;
	        default:
	        	System.out.println("Este n�o � um n�mero v�lido!");
	        	
    	}
    	
//    	int read = 0;
//    	byte[] b = new byte[1024];
//    	while ((read = in.read(b)) != -1) { // returns numOfBytesRead or -1 at EOF
//    	  // parse, or write to output stream as
//    	  //dos.write(b, 0, read); // (byte[], offset, numOfBytesToWrite)
//    	  System.out.println(" ==> "+ read);
//    	}
    	
    	while ((strAux = extracted(in)) != null) {
    		System.out.println(strAux);
            stbLista.append(strAux);
         }
    	
    	// available stream to be read
//        while(in.available()>0) {
//           // reads characters encoded with modified UTF-8
//           str = in.readUTF();
//           System.out.print(str+" ");
//        }

    	//Aguarda o recebimento de uma string.
//        int i = in.readUnsignedByte();
//        int idis = in.readInt();
//        char ch = in.readChar();
//        int s =  in.read();
//        String str = in.readLine();
        //String str1 = in.readUTF();
        out.writeBytes("Obrigado!");      //enviando uma string
//        System.out.println(i);
        //System.out.println(ch);      //imprimendo a string recebida
        //Fecha os canais de entrada e sa�da.
        in.close();
        out.close();
        //Fecha o socket.
        client.close();
        return stbLista;
     }

	private String extracted(DataInputStream in) throws IOException {
		return in.readLine();
	}
    
}