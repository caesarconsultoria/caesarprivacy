package com.caesar.integratedgovernance.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.caesar.integratedgovernance.domain.DataGovernanceEntities;
import com.caesar.integratedgovernance.domain.DataGovernanceRoles;
import com.caesar.integratedgovernance.domain.PersonalData;
import com.caesar.integratedgovernance.dto.OperadorDTO;
import com.caesar.integratedgovernance.repositories.DataGovernanceEntitiesRepository;
import com.caesar.integratedgovernance.repositories.PersonalDataRepository;

import jakarta.transaction.Transactional;

@Service
public class OperadorService {

	@Autowired
	DataGovernanceEntitiesRepository dataGovernanceEntitiesRepository;
	
	@Autowired
	PersonalDataRepository personalDataRepository;
	
	/**
	 * Método utilizado para inserir os objetos referentes ao Operador e seu Endereço
	 * @param obj
	 * @return
	 */
	@Transactional
	public DataGovernanceEntities insert( DataGovernanceEntities obj) {
		
		obj.setId( null );
		obj = dataGovernanceEntitiesRepository.save( obj );
		personalDataRepository.save( obj.getPersonalData() );
		return obj;
	}
	
	
	/**
	 * Classe auxiliar para extrair os dados do DTO e popular os objetos
	 * @param operadorDto
	 * @return
	 */
	public DataGovernanceEntities fromDTO(OperadorDTO operadorDto) {
		
		//Dados do papel
		DataGovernanceRoles dgr = new DataGovernanceRoles();
		dgr.setId( 2 ); //Operador
		
		//Dados pessois
		PersonalData pd = new PersonalData( null, 
				operadorDto.getNomeresponsavel(), 
				"", 
				operadorDto.getEndereco(), 
				operadorDto.getTelefone(),
				operadorDto.getEmail() );
		
		//Entidade de Governança Operador
		DataGovernanceEntities  dge = new DataGovernanceEntities( null, dgr,pd, operadorDto.getRazaosocial(), operadorDto.getCnpj() );
		
		return dge;
	}
	
	
	
}
