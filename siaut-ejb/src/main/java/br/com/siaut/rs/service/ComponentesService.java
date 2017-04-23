package br.com.siaut.rs.service;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import javax.ejb.LocalBean;
import javax.ejb.Stateless;
import javax.inject.Named;

import br.com.siaut.rs.entity.setup.ComponentesEntity;

@Stateless
@LocalBean
@Named
public class ComponentesService  implements Serializable{
	
	/**
	 * 
	 */
	private static final Long serialVersionUID = 1998224248225667151L;

	public List<ComponentesEntity> configuracoes(){
	  ArrayList<ComponentesEntity> aryComponentes = new ArrayList<ComponentesEntity>();
	  
	  for (int intContador = 1; intContador <= 8; intContador++) {
		  ComponentesEntity objComponentesEntity = new ComponentesEntity();
		  objComponentesEntity.setLngId(Long.parseLong(String.valueOf(intContador)));
		  objComponentesEntity.setLngSituacao(0L);
		  objComponentesEntity.setStrNmBotao("Ligar Botão "+intContador);
		  aryComponentes.add(objComponentesEntity);
	  }
	  
	  return  aryComponentes;
	}

}
