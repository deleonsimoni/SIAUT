	package br.com.siaut.rs.entity.sobre;
import br.com.siaut.rs.entity.BaseEntity;
/**
 * 
 * @author SIAUT
 *
 */
public class SobreEntity implements BaseEntity {
	private static final long serialVersionUID = 6933641140920629711L;
	private Long id;
     private String titulo = "";
     private String subtitulo = "";
     private String link = "";
     private String listagem = "";
     private String imgIcon013primosiogpinvertedsmallpng = "";
     private String lnkPrimosiogp2 = "";
     private String texto2 = "";
	public SobreEntity() {
		super();
	}
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
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
	public String getLink() {
		return link;
	}
	public void setLink(String valor) {
		link = valor;
	}
	public String getListagem() {
		return listagem;
	}
	public void setListagem(String valor) {
		listagem = valor;
	}
	public String getImgicon013primosiogpinvertedsmallpng() {
		return imgIcon013primosiogpinvertedsmallpng;
	}
	public void setImgicon013primosiogpinvertedsmallpng(String valor) {
		imgIcon013primosiogpinvertedsmallpng = valor;
	}
	public String getLnkprimosiogp2() {
		return lnkPrimosiogp2;
	}
	public void setLnkprimosiogp2(String valor) {
		lnkPrimosiogp2 = valor;
	}
	public String getTexto2() {
		return texto2;
	}
	public void setTexto2(String valor) {
		texto2 = valor;
	}
}

