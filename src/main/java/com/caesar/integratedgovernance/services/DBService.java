package com.caesar.integratedgovernance.services;

import java.text.ParseException;
import java.util.Arrays;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.caesar.integratedgovernance.domain.DataGovernanceEntities;
import com.caesar.integratedgovernance.domain.DataGovernanceRoles;
import com.caesar.integratedgovernance.domain.PersonalData;
import com.caesar.integratedgovernance.repositories.DataGovernanceEntitiesRepository;
import com.caesar.integratedgovernance.repositories.DataGovernanceRolesRepository;
import com.caesar.integratedgovernance.repositories.PersonalDataRepository;

@Service
public class DBService {

	@Autowired
	private DataGovernanceEntitiesRepository dataGovernanceEntitiesRepository;
	
	@Autowired 
	private DataGovernanceRolesRepository dataGovernanceRolesRepository;
	
	@Autowired
	private PersonalDataRepository personalDataRepository;
	
	
	public void instantiateTestDataBase() throws ParseException{
	
		DataGovernanceRoles dgr1 = new DataGovernanceRoles(null, "Controlador");
		DataGovernanceRoles dgr2 = new DataGovernanceRoles(null, "Operador");
		DataGovernanceRoles dgr3 = new DataGovernanceRoles(null, "Encarregado");
		
		dataGovernanceRolesRepository.saveAll(Arrays.asList(dgr1, dgr2, dgr3));
		
		PersonalData pd1 = new PersonalData(null, "José Paulo", "999.999.999-99","Rua joaquim nabuco, 5152","8199998888","email@gmail.com" );
		
		personalDataRepository.save(pd1);
		
				
		DataGovernanceEntities dger = new DataGovernanceEntities(null, dgr2, pd1, "Serviços de Banco de Dados", "999.999.999/9999-99");
		
		dataGovernanceEntitiesRepository.save(dger); 	
	
		
	}
	
	
}
