	package br.com.siaut.rs.requisicao.splash;
import br.com.siaut.rs.requisicao.Requisicao;
/**
 * 
 * @author SIAUT
 *
 */
public class SplashRequisicao extends Requisicao {
	private static final long serialVersionUID = 3075165143170327078L;
	private Long id;
     private String btiIcon013primosiogpinvertedverysmallpng2 = "";
     private String imagem = "";
     private String titulo = "";
     private String subtitulo = "";
     private String texto = "";
     private String timer = "";
     private String timer2 = "";
     private String link = "";
	public SplashRequisicao() {
		super();
	}
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getBtiicon013primosiogpinvertedverysmallpng2() {
		return btiIcon013primosiogpinvertedverysmallpng2;
	}
	public void setBtiicon013primosiogpinvertedverysmallpng2(String valor) {
		btiIcon013primosiogpinvertedverysmallpng2 = valor;
	}
	public String getImagem() {
		return imagem;
	}
	public void setImagem(String valor) {
		imagem = valor;
	}
	public String getTitulo() {
		return titulo;
	}
	public void setTitulo(String valor) {
		titulo = valor;
	}
	public String getSubtitulo() {
		return subtitulo;
	}
	public void setSubtitulo(String valor) {
		subtitulo = valor;
	}
	public String getTexto() {
		return texto;
	}
	public void setTexto(String valor) {
		texto = valor;
	}
	public String getTimer() {
		return timer;
	}
	public void setTimer(String valor) {
		timer = valor;
	}
	public String getTimer2() {
		return timer2;
	}
	public void setTimer2(String valor) {
		timer2 = valor;
	}
	public String getLink() {
		return link;
	}
	public void setLink(String valor) {
		link = valor;
	}
}

