package br.com.siaut.rs.service;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import javax.ejb.EJB;
import javax.ejb.LocalBean;
import javax.ejb.Stateless;
import javax.inject.Named;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.apache.log4j.Logger;

import br.com.siaut.comunicacao.SocketCliente;
import br.com.siaut.rs.requisicao.dispositivos.DispositivosRequisicao;
import br.com.siaut.rs.requisicao.usuario.UsuarioRequisicao;
import br.com.siaut.rs.retorno.dispositivos.DispositivosRetorno;
import br.com.siaut.util.MensagensAplicacao;
import br.com.siaut.util.WebResources;
import br.gov.caixa.entity.dispositivos.ComodosEntity;
import br.gov.caixa.entity.dispositivos.DispositivosEntity;
import br.gov.caixa.entity.dispositivos.ImovelEntity;

@Stateless
@LocalBean
@Named
public class DispositivosService implements Serializable {

	private static final Logger LOGGER = Logger.getLogger(DispositivosService.class);

	private static final long serialVersionUID = 1L;
	@PersistenceContext
	private EntityManager em;
	
	@EJB
	private SocketCliente serviceSocket;

	public DispositivosRetorno listarCasasUsuario(DispositivosRequisicao requisicao) {
		LOGGER.info("Chamando o metodo: listarCasasUsuario");
		DispositivosRetorno retorno = new DispositivosRetorno();
		List<String> msgsErro = new ArrayList<String>();
		List<ImovelEntity> imoveis = new ArrayList<ImovelEntity>();
		try {

			Query query = em
					.createNativeQuery("SELECT a.nu_aut011, a.no_imovel " + "FROM    auttb011_imovel_usuario a "
							+ " INNER JOIN auttb004_usuario_token b " + " ON a.nu_aut001 = b.nu_aut001 "
							+ " WHERE b.no_token = :token ", ImovelEntity.class)
					.setParameter("token", requisicao.getToken());
			imoveis = query.getResultList();

			msgsErro.add(MensagensAplicacao.CONSULTA_SUCESSO);
			retorno.setTemErro(Boolean.FALSE);
			retorno.setMsgsErro(msgsErro);
			retorno.setImoveis(imoveis);
			return retorno;
		} catch (Exception e) {
			LOGGER.error("#SIAUT ERRO LISTAR IMOVEIS", e);
			msgsErro.add("Encontramos um problema, já estamos realizando os ajustes. Tente de novo.");
			retorno.setTemErro(Boolean.TRUE);
			retorno.setMsgsErro(msgsErro);
			return retorno;

		}

	}

	public DispositivosRetorno listarComodos(DispositivosRequisicao requisicao) {

		LOGGER.info("Chamando o metodo: listarComodos - Imovel (" + requisicao.getNuImovel() + ")");
		DispositivosRetorno retorno = new DispositivosRetorno();
		List<String> msgsErro = new ArrayList<String>();
		List<ComodosEntity> comodos = new ArrayList<ComodosEntity>();
		try {

			Query query = em
					.createNativeQuery("SELECT c.nu_aut002, c.nu_aut011, c.no_comodo, c.im_comodo, "
							+ " p.no_cor_painel, i.no_icone, ( "
							+"  SELECT "
							+"   COUNT(*) "
							+"  FROM auttb003_dispositivo " 
							+"  WHERE  c.nu_aut002 =  nu_aut002 "
							+"  ) As qt_itens  "
							+ " FROM auttb002_comodo c "
							+ " INNER JOIN auttb007_cor_painel p " 
							+ " ON c.nu_aut007_cor_painel = p.nu_cor_painel "
							+ " INNER JOIN auttb009_tipo_icone i " 
							+ " ON c.nu_aut009_icone = i.nu_icone "
							+ " INNER JOIN auttb011_imovel_usuario imo " 
							+ " ON c.nu_aut011 = imo.nu_aut011 "
							+ " INNER JOIN auttb004_usuario_token u " 
							+ " ON imo.nu_aut001 = u.nu_aut001 "
							+ " WHERE u.no_token = :token "
							+ " AND imo.nu_aut011 = :imovel", ComodosEntity.class)
					.setParameter("token", requisicao.getToken())
					.setParameter("imovel", requisicao.getNuImovel());

			comodos = query.getResultList();

			msgsErro.add(MensagensAplicacao.CONSULTA_SUCESSO);
			retorno.setTemErro(Boolean.FALSE);
			retorno.setMsgsErro(msgsErro);
			retorno.setComodos(comodos);
			return retorno;
		} catch (Exception e) {
			LOGGER.error("#SIAUT ERRO LISTAR COMODOS", e);
			msgsErro.add("Encontramos um problema, já estamos realizando os ajustes. Tente de novo.");
			retorno.setTemErro(Boolean.TRUE);
			retorno.setMsgsErro(msgsErro);
			return retorno;

		}

	

	}

	public DispositivosRetorno listarDispositivos(DispositivosRequisicao requisicao) {

		LOGGER.info("Chamando o metodo: listarDispositivos - Comodo (" + requisicao.getNuComodo() + ")");
		DispositivosRetorno retorno = new DispositivosRetorno();
		List<String> msgsErro = new ArrayList<String>();
		List<DispositivosEntity> dispositivos = new ArrayList<DispositivosEntity>();
		try {

			Query query = em
					.createNativeQuery("SELECT d.nu_aut003, d.no_dispositivo, d.nu_aut002, d.ic_ligado,  "
							+ " t.no_dispositivo as tipo_dispositivo "
							+ " FROM auttb003_dispositivo d "
							+ " INNER JOIN auttb008_tipo_dispositivo t " 
							+ " ON d.nu_aut008_dispositivo = t.nu_dispositivo "
							+ " INNER JOIN auttb002_comodo c " 
							+ " ON d.nu_aut002 = c.nu_aut002 "
							+ " INNER JOIN auttb011_imovel_usuario imo " 
							+ " ON c.nu_aut011 = imo.nu_aut011 "
							+ " INNER JOIN auttb004_usuario_token u " 
							+ " ON imo.nu_aut001 = u.nu_aut001 "
							+ " WHERE u.no_token = :token "
							+ " AND d.nu_aut002 = :comodo", DispositivosEntity.class)
					.setParameter("token", requisicao.getToken())
					.setParameter("comodo", requisicao.getNuComodo());

			dispositivos = query.getResultList();

			msgsErro.add(MensagensAplicacao.CONSULTA_SUCESSO);
			retorno.setTemErro(Boolean.FALSE);
			retorno.setMsgsErro(msgsErro);
			retorno.setDispositivos(dispositivos);
			return retorno;
		} catch (Exception e) {
			LOGGER.error("#SIAUT ERRO LISTAR DISPOSITIVOS", e);
			msgsErro.add("Encontramos um problema, já estamos realizando os ajustes. Tente de novo.");
			retorno.setTemErro(Boolean.TRUE);
			retorno.setMsgsErro(msgsErro);
			return retorno;

		}

	

	}
	
	public DispositivosRetorno ligarTodosDispositivosComodo(DispositivosRequisicao requisicao) {

		LOGGER.info("Chamando o metodo: ligarTodosDispositivosComodo - Comodo (" + requisicao.getNuComodo() + ")");
		DispositivosRetorno retorno = new DispositivosRetorno();
		List<String> msgsErro = new ArrayList<String>();
		List<DispositivosEntity> dispositivos = new ArrayList<DispositivosEntity>();
		StringBuilder comandoArduino = new StringBuilder();
		try {

			Query query = em
					.createNativeQuery("SELECT d.nu_aut003, d.no_dispositivo, d.nu_aut002, d.ic_ligado,  "
							+ " t.no_dispositivo as tipo_dispositivo "
							+ " FROM auttb003_dispositivo d "
							+ " INNER JOIN auttb008_tipo_dispositivo t " 
							+ " ON d.nu_aut008_dispositivo = t.nu_dispositivo "
							+ " INNER JOIN auttb002_comodo c " 
							+ " ON d.nu_aut002 = c.nu_aut002 "
							+ " INNER JOIN auttb011_imovel_usuario imo " 
							+ " ON c.nu_aut011 = imo.nu_aut011 "
							+ " INNER JOIN auttb004_usuario_token u " 
							+ " ON imo.nu_aut001 = u.nu_aut001 "
							+ " WHERE u.no_token = :token "
							+ " AND d.nu_aut002 = :comodo", DispositivosEntity.class)
					.setParameter("token", requisicao.getToken())
					.setParameter("comodo", requisicao.getNuComodo());

			dispositivos = query.getResultList();
			
			for (DispositivosEntity dispositivosEntity : dispositivos) {
				comandoArduino.append("r" + dispositivosEntity.getNuDispositivo() + "=on\n");
			}
			
			serviceSocket.ligarTodosDispositivosComodo(WebResources.IP_ARDUINO, Integer.parseInt(WebResources.PORTA_ARDUINO), comandoArduino);
			
			msgsErro.add(MensagensAplicacao.CONSULTA_SUCESSO);
			retorno.setTemErro(Boolean.FALSE);
			retorno.setMsgsErro(msgsErro);
			retorno.setDispositivos(dispositivos);
			return retorno;
		} catch (Exception e) {
			LOGGER.error("#SIAUT ERRO LISTAR DISPOSITIVOS", e);
			msgsErro.add("Encontramos um problema, já estamos realizando os ajustes. Tente de novo.");
			retorno.setTemErro(Boolean.TRUE);
			retorno.setMsgsErro(msgsErro);
			return retorno;

		}

	

	}
	
	public DispositivosRetorno ligarTodosDispositivosImovel(DispositivosRequisicao requisicao) {

		LOGGER.info("Chamando o metodo: ligarTodosDispositivosImovel - Imovel (" + requisicao.getNuImovel() + ")");
		DispositivosRetorno retorno = new DispositivosRetorno();
		List<String> msgsErro = new ArrayList<String>();
		List<DispositivosEntity> dispositivos = new ArrayList<DispositivosEntity>();
		DispositivosRequisicao dispositivo = new DispositivosRequisicao();
		try {
			
			DispositivosRetorno comodos = listarComodos(requisicao);
			for (ComodosEntity comodosEntity : comodos.getComodos()) {
				dispositivo.setToken(requisicao.getToken());
				dispositivo.setNuComodo(comodosEntity.getNuComodo().intValue());
				ligarTodosDispositivosComodo(dispositivo);
			}

			msgsErro.add(MensagensAplicacao.CONSULTA_SUCESSO);
			retorno.setTemErro(Boolean.FALSE);
			retorno.setMsgsErro(msgsErro);
			retorno.setDispositivos(dispositivos);
			return retorno;
		} catch (Exception e) {
			LOGGER.error("#SIAUT ERRO LISTAR DISPOSITIVOS", e);
			msgsErro.add("Encontramos um problema, já estamos realizando os ajustes. Tente de novo.");
			retorno.setTemErro(Boolean.TRUE);
			retorno.setMsgsErro(msgsErro);
			return retorno;

		}

	

	}

	public void cadastrarComodo() {

	}

	public void cadastrarDispositivo() {

	}

	public void alterarComodo() {

	}

	public void alterarDispositivo() {

	}

}
