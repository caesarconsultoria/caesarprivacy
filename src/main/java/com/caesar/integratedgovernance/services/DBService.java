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
				
		PersonalData pd1 = new PersonalData(null, "Paulo Duarte", "","Rua joaquim nabuco, 5152","8199998888","duarte@gmail.com" );
		PersonalData pd2 = new PersonalData(null, "Maria da Silva", "","Rua 28 de agosto, 321","8199998888","mariasilva@hotmail.com" );
		PersonalData pd3 = new PersonalData(null, "Joaquim Phenix", "","Avenida Visconde Suassuna, 251","8199998888","joaquim@gmail.com" );
		PersonalData pd4 = new PersonalData(null, "Joana Dark", "999.999.999-99","Rua 16 de julho, 100","8199998888","joana@gmail.com" );
		
		//personalDataRepository.save(pd1);
		personalDataRepository.saveAll(Arrays.asList(pd1, pd2, pd3, pd4));
		
				
		DataGovernanceEntities dger1 = new DataGovernanceEntities(null, dgr1, pd1, "Seguros LTDA", "111.222.333/0001-64");
		DataGovernanceEntities dger2 = new DataGovernanceEntities(null, dgr2, pd2, "Serviços de Banco de Dados", "999.999.999/9999-99");
		DataGovernanceEntities dger3 = new DataGovernanceEntities(null, dgr2, pd3, "Contabilidade e RH", "321.123.456/0001-20");
		DataGovernanceEntities dger4 = new DataGovernanceEntities(null, dgr3, pd4, "", "");
		
		//dataGovernanceEntitiesRepository.save(dger); 	
		dataGovernanceEntitiesRepository.saveAll(Arrays.asList(dger1,dger2,dger3,dger4));
	
		
	}
	
	
}
