package br.com.siaut.rs.resource.retorno;

import java.util.List;

import br.com.siaut.rs.DTO.ComponentesDTO;
import br.com.siaut.rs.entity.setup.ComponentesEntity;
import br.com.siaut.rs.retorno.Retorno;

public class ComponentesRetorno extends Retorno {
 private List<ComponentesEntity> lstComponentesEntity;
 private ComponentesDTO objComponentesDTO;
 
public List<ComponentesEntity> getLstComponentesEntity() {
	return lstComponentesEntity;
}

public void setLstComponentesEntity(List<ComponentesEntity> lstComponentesEntity) {
	this.lstComponentesEntity = lstComponentesEntity;
}

public ComponentesDTO getObjComponentesDTO() {
	return objComponentesDTO;
}

public void setObjComponentesDTO(ComponentesDTO objComponentesDTO) {
	this.objComponentesDTO = objComponentesDTO;
}
 

 
 
}
