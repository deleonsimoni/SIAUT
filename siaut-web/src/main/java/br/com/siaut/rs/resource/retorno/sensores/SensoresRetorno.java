package br.com.siaut.rs.resource.retorno.sensores;

import java.util.List;

import br.com.siaut.rs.dto.sensores.SensoresDTO;
import br.com.siaut.rs.entity.sensores.SensoresEntity;
import br.com.siaut.rs.retorno.Retorno;

public class SensoresRetorno extends Retorno {
 private List<SensoresEntity> lstSensoresEntity;
 private SensoresDTO objSensoresDTO;
 
public List<SensoresEntity> getLstSensoresEntity() {
	return lstSensoresEntity;
}

public void setLstSensoresEntity(List<SensoresEntity> lstSensoresEntity) {
	this.lstSensoresEntity = lstSensoresEntity;
}

public SensoresDTO getObjSensoresDTO() {
	return objSensoresDTO;
}

public void setObjSensoresDTO(SensoresDTO objSensoresDTO) {
	this.objSensoresDTO = objSensoresDTO;
}
 

 
 
}
