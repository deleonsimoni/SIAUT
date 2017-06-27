package br.com.siaut.rs.service;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import javax.ejb.LocalBean;
import javax.ejb.Stateless;
import javax.inject.Named;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.apache.log4j.Logger;

import br.com.siaut.rs.entity.setup.ComponentesEntity;
import br.com.siaut.rs.requisicao.usuario.UsuarioRequisicao;
import br.com.siaut.rs.retorno.componentes.ComponentesRetorno;

@Stateless
@LocalBean
@Named
public class ComponentesService  implements Serializable{
	
	private static final Logger LOGGER = Logger.getLogger(ComponentesService.class);
	
	private static final long serialVersionUID = 1L;
	@PersistenceContext
	private EntityManager em;

	
	public ComponentesRetorno configuracoes(UsuarioRequisicao requisicao){
		//Integer intNuTeste = 1;		
		List<ComponentesEntity> aryComponentes;
		List<String> msgsErro = new ArrayList<String>();
		ComponentesRetorno retorno = new ComponentesRetorno();
		try{
			Query query  = em.createNativeQuery("SELECT b.nu_aut001, b.no_comodo, c.nu_aut002, c.no_dispositivo, "+
						"c.ic_ligado "+
						" FROM auttb004_usuario_token a, auttb002_comodo b, auttb003_dispositivo c "+ 
						"WHERE "+ 
						"a.no_token = :token AND " +
						"b.nu_aut001 = a.nu_aut001 AND b.nu_aut002 = c.nu_aut002 ", ComponentesEntity.class)
						.setParameter("token", requisicao.getToken());
					//.setParameter("email", requisicao.getLogin())
					//.setParameter("senha", requisicao.getPwd());
						
			aryComponentes = query.getResultList();
			
			if (!aryComponentes.isEmpty()){
				//
				retorno.setData(aryComponentes);
				msgsErro.add("Encontramos um problema, já estamos realizando os ajustes. Tente de novo.");
				retorno.setTemErro(Boolean.FALSE);
				retorno.setMsgsErro(msgsErro);
			}
			else {
				msgsErro.add("Não foram encontrado registros para está consulta.");
				retorno.setTemErro(Boolean.FALSE);
				retorno.setMsgsErro(msgsErro);
			}
			
			return  retorno;
	  } catch (Exception e) {
		LOGGER.error("#SIAUT ERRO AO LOGAR", e);
		msgsErro.add("Encontramos um problema, já estamos realizando os ajustes. Tente de novo.");
		retorno.setTemErro(Boolean.TRUE);
		retorno.setMsgsErro(msgsErro);
		return retorno;

	  }

    }

}
