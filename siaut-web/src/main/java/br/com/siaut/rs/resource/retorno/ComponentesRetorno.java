package br.com.siaut.rs.resource.retorno;

import java.util.List;

import br.com.siaut.rs.dto.Componentesdto;
import br.com.siaut.rs.entity.setup.ComponentesEntity;
import br.com.siaut.rs.retorno.Retorno;

public class ComponentesRetorno extends Retorno {
 private List<ComponentesEntity> lstComponentesEntity;
 private Componentesdto objComponentesdto;
 
public List<ComponentesEntity> getLstComponentesEntity() {
	return lstComponentesEntity;
}

public void setLstComponentesEntity(List<ComponentesEntity> lstComponentesEntity) {
	this.lstComponentesEntity = lstComponentesEntity;
}

public Componentesdto getObjComponentesdto() {
	return objComponentesdto;
}

public void setObjComponentesdto(Componentesdto objComponentesdto) {
	this.objComponentesdto = objComponentesdto;
}
 

 
 
}
