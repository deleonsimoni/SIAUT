	package br.com.siaut.rs.entity.principal;
import br.com.siaut.rs.entity.BaseEntity;
/**
 * 
 * @author SIOGP
 *
 */
public class PrincipalEntity implements BaseEntity {
	private static final long serialVersionUID = 6933641140920629711L;
	private Long id;
     private String imagem = "";
	public PrincipalEntity() {
		super();
	}
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getImagem() {
		return imagem;
	}
	public void setImagem(String valor) {
		imagem = valor;
	}
}

