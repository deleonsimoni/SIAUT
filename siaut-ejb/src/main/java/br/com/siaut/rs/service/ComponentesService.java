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

import br.com.siaut.comunicacao.SocketCliente;
import br.com.siaut.rs.entity.setup.ComponentesEntity;
import br.com.siaut.rs.entity.setup.ConsolidadoEntity;
import br.com.siaut.rs.requisicao.usuario.UsuarioRequisicao;
import br.com.siaut.rs.retorno.componentes.ComponentesRetorno;
import br.com.siaut.util.MensagensAplicacao;
import br.com.siaut.util.WebResources;

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
		ArrayList<ConsolidadoEntity> aryConsolidado = new ArrayList<ConsolidadoEntity>();
		List<String> msgsErro = new ArrayList<String>();
		ComponentesRetorno retorno = new ComponentesRetorno();
		SocketCliente socketCliente = new SocketCliente();
		try{
			Query query  = em.createNativeQuery(
					" SELECT (row_number() over (order by com.nu_aut002)), " +
							" com.no_comodo, dis.ic_ligado "+					
							" FROM auttb011_imovel_usuario imo "+
							" INNER JOIN auttb002_comodo com "+
							" ON com.nu_aut011 = imo.nu_aut011 "+
							" INNER JOIN auttb003_dispositivo dis "+
							" ON dis.nu_aut002 = com.nu_aut002 "+
							" WHERE imo.nu_imovel = :imovel ", ComponentesEntity.class)
							.setParameter("imovel", requisicao.getNuImovel());

//					" SELECT (row_number() over (order by b.nu_aut002)), " +
//					" b.nu_aut002, b.no_comodo, c.ic_ligado, d.no_dispositivo, "+
//					" e.no_cor_painel, g.no_icone "+					
//					" FROM auttb004_usuario_token a "+
//					" INNER JOIN auttb002_comodo b "+
//					" ON a.nu_aut001 = b.nu_aut011 "+
//					" INNER JOIN auttb003_dispositivo c "+
//					" ON c.nu_aut002 = b.nu_aut002 "+
//					" INNER JOIN auttb008_tipo_dispositivo d "+
//					" ON c.nu_aut008_dispositivo = d.nu_dispositivo "+
//					" INNER JOIN auttb007_cor_painel e "+
//					" ON b.nu_aut007_cor_painel = e.nu_cor_painel "+
//					" INNER JOIN auttb011_imovel_usuario f "+
//					" ON b.nu_aut011 = f.nu_aut011 "+
//					"INNER JOIN auttb009_tipo_icone g "+
//					" ON  b.nu_aut009_icone = g.nu_icone " +
//					" WHERE a.no_token = :token ", ComponentesEntity.class)
//						.setParameter("token", requisicao.getToken());
					//.setParameter("email", requisicao.getLogin())
					//.setParameter("senha", requisicao.getPwd());
		
			
			aryComponentes = query.getResultList();
			
			if (!aryComponentes.isEmpty()){
				//
				socketCliente.listarComponentes(WebResources.IP_ARDUINO, Integer.parseInt(WebResources.PORTA_ARDUINO), aryComponentes);
				
//				for (ComponentesEntity componentes  : aryComponentes) {
//					ConsolidadoEntity objConsolidadoEntity = new ConsolidadoEntity();
//					
//					if (!"".equals(strNoComodo) && !strNoComodo.equals(componentes.getStrNoComodo())) {
//					  // objConsolidadoEntity.setStrNoPainel(componentes.getStrNoCorPainel());
//					   objConsolidadoEntity.setStrNoComodo(strNoComodo);
//					   objConsolidadoEntity.setLngNuItens(lngNuTotalItensComodos);
//					   objConsolidadoEntity.setStrNoPainel(strNoCorPainel);
//					   objConsolidadoEntity.setStrAut009Icone(strNoIcone);
//					   lngNuTotalItensComodos = 0L;
//					   aryConsolidado.add(objConsolidadoEntity);
//					}   
//					else if (lngNuTotalRegistro == aryComponentes.size()){
//							lngNuTotalItensComodos++;
//						//	objConsolidadoEntity.setStrNoPainel(componentes.getStrNoCorPainel());
//							objConsolidadoEntity.setStrNoComodo(strNoComodo);
//							objConsolidadoEntity.setLngNuItens(lngNuTotalItensComodos);
//							objConsolidadoEntity.setStrNoPainel(strNoCorPainel);
//							objConsolidadoEntity.setStrAut009Icone(strNoIcone);
//							aryConsolidado.add(objConsolidadoEntity);
//					}
//					strNoComodo = componentes.getStrNoComodo();
//				//	strNoCorPainel = componentes.getStrNoCorPainel();
//				//	strNoIcone = componentes.getStrNoIcone();
//					lngNuTotalItensComodos++;
//					lngNuTotalRegistro++;
//				}
				
				retorno.setData(aryComponentes);
				retorno.setTotal(aryConsolidado);
				msgsErro.add(MensagensAplicacao.CONSULTA_SUCESSO);
				retorno.setTemErro(Boolean.FALSE);
				retorno.setMsgsErro(msgsErro);
			}
			else {
				msgsErro.add(MensagensAplicacao.CONSULTA_ERRO);
				retorno.setTemErro(Boolean.FALSE);
				retorno.setMsgsErro(msgsErro);
			}
			
			return  retorno;
	  } catch (Exception e) {
		LOGGER.error("#SIAUT ERRO AO LOGAR", e);
		msgsErro.add(MensagensAplicacao.PROBLEMA_ACESSO);
		retorno.setTemErro(Boolean.TRUE);
		retorno.setMsgsErro(msgsErro);
		return retorno;

	  }

    }

}
