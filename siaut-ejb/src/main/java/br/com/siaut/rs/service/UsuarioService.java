package br.com.siaut.rs.service;
	
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.Date;
/*
	Nesta classe é definido o EJB do seu projeto. 	
	Para este template cada tela possui seu proprio EJB
*/
import java.util.ArrayList;
import java.util.List;

import javax.ejb.LocalBean;
import javax.ejb.Stateless;
import javax.inject.Named;
import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.apache.log4j.Logger;

import br.com.siaut.requisicao.usuario.CadastroRequisicao;
import br.com.siaut.requisicao.usuario.LoginRequisicao;
import br.com.siaut.rs.entity.login.LoginEntity;
import br.com.siaut.rs.retorno.login.LoginRetorno;
import br.com.siaut.util.MensagensAplicacao;
import br.com.siaut.util.Utils;
/**
 * 
 * @author SIAUT
 *
 */
@Stateless
@LocalBean
@Named
public class UsuarioService {
	private static final Logger LOGGER = Logger.getLogger(UsuarioService.class);
	
	@PersistenceContext
	private EntityManager em;

	private LoginEntity usuario;
	
	public LoginRetorno logar(LoginRequisicao requisicao) {
		LOGGER.info("Chamando o metodo: logar("+requisicao.getLogin()+")");
		LOGGER.info("Chamando o metodo: logar("+requisicao.getPwd()+")");
		LoginRetorno retorno = new LoginRetorno();
		List<String> msgsErro = new ArrayList<String>();
		usuario = null;

		try {

			Query query  = em.createNativeQuery("SELECT nu_aut001,  no_usuario " +
					"FROM    auttb001_usuario " + 
					"where ed_eletronico = :email and no_senha = :senha ", LoginEntity.class)
					//"where ed_eletronico = :email ", LoginEntity.class)
					.setParameter("email", requisicao.getLogin())
					.setParameter("senha", requisicao.getPwd());
			
			 usuario = (LoginEntity)query.getSingleResult();
					    
		      msgsErro.add(MensagensAplicacao.CONSULTA_SUCESSO);
			  retorno.setTemErro(Boolean.FALSE);
			  retorno.setMsgsErro(msgsErro);
			  retorno.setUsuario(usuario.getNoUser().toString());
			  retorno.setToken(gerarToken(usuario));
			return retorno;
		} catch(NoResultException e) {
			msgsErro.add(MensagensAplicacao.ACESSO_ERRO);
			retorno.setTemErro(Boolean.TRUE);
			retorno.setMsgsErro(msgsErro);
			return retorno;
		} catch (Exception e) {
			LOGGER.error("#SIAUT ERRO AO LOGAR", e);
			msgsErro.add("Encontramos um problema, já estamos realizando os ajustes. Tente de novo.");
			retorno.setTemErro(Boolean.TRUE);
			retorno.setMsgsErro(msgsErro);
			return retorno;

		}
	}
	
	private static String stringHexa(byte[] bytes) {
		   StringBuilder s = new StringBuilder();
		   for (int i = 0; i < bytes.length; i++) {
		       int parteAlta = ((bytes[i] >> 4) & 0xf) << 4;
		       int parteBaixa = bytes[i] & 0xf;
		       if (parteAlta == 0) s.append('0');
		       s.append(Integer.toHexString(parteAlta | parteBaixa));
		   }
		   return s.toString();
		}

	private static byte[] gerarHash(String frase, String algoritmo) {
		  try {
		    MessageDigest md = MessageDigest.getInstance(algoritmo);
		    md.update(frase.getBytes());
		    return md.digest();
		  } catch (NoSuchAlgorithmException e) {
		    return null;
		  }
		}
	
	private String gerarToken(LoginEntity usuario) {
		LOGGER.info("Chamando o metodo: gerarToken()");
		
		String token = stringHexa(gerarHash(Utils.dateToStringNow() + usuario.getNoUser() + usuario.getNuUser() + "SIAUTNEVERFAIL", "SHA-256"));
		
		Query query  = em.createNativeQuery("INSERT INTO auttb004_usuario_token( " +
				"nu_aut004, " +
				"nu_aut001, " +
				"no_token, " +
				"ts_cadastro) " +
				"VALUES( " +
				" nextval('auttb004_usuario_token_nu_aut004_seq'), " +
				":nuUser, " +
				":token, " +
				"current_date);");
		
		query.setParameter("nuUser", usuario.getNuUser());
		query.setParameter("token", token);
		
		query.executeUpdate();
		
		LOGGER.info("#SIAUT Token criado e guardado no banco");
		return token;
	}
	
	public LoginRetorno cadastrar(CadastroRequisicao requisicao) {
		LOGGER.info("Chamando o metodo: cadastrar("+requisicao.getEmail()+")");
		LoginRetorno retorno = new LoginRetorno();
		List<String> msgsErro = new ArrayList<String>();

		try {

			Query query  = em.createNativeQuery("INSERT INTO auttb001_usuario( " +
					"nu_aut001, " +
					"no_usuario, " +
					"nu_documento, " +
					"nu_telefone, " +
					"nu_ddd, " +
					"no_senha, " +
					"ed_eletronico, " +
					"ts_cadastro) " +
					"VALUES( " +
					" nextval('auttb001_usuario_nu_aut001_seq'), " +
					":noUser, " +
					":nuDocumento, " +
					":nuTelefone, " +
					":nuDDD, " +
					":noSenha, " +
					":noEmail, " +
					"current_date);");
			
			query.setParameter("noUser", requisicao.getNomeUsuario());
			query.setParameter("nuDocumento", requisicao.getDocumento());
			query.setParameter("nuTelefone", requisicao.getTelefone());
			query.setParameter("nuDDD", requisicao.getDdd());
			query.setParameter("noSenha", requisicao.getSenha());
			query.setParameter("noEmail", requisicao.getEmail());
			
			query.executeUpdate();
			
			msgsErro.add("Cadastro realizado com sucesso!");
			retorno.setTemErro(Boolean.FALSE);
			retorno.setMsgsErro(msgsErro);
			return retorno;
			
		} catch (Exception e) {
			LOGGER.error("#SIAUT ERRO AO LOGAR", e);
			msgsErro.add("Encontramos um problema, já estamos realizando os ajustes. Tente de novo.");
			retorno.setTemErro(Boolean.TRUE);
			retorno.setMsgsErro(msgsErro);
			return retorno;

		}
	}
	
}

