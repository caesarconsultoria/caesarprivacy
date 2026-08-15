package com.caesar.integratedgovernance.services;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.stereotype.Service;

import com.caesar.integratedgovernance.domain.DataGovernanceEntities;
import com.caesar.integratedgovernance.domain.DataGovernanceRoles;
import com.caesar.integratedgovernance.domain.PersonalData;
import com.caesar.integratedgovernance.domain.enums.DataGovernanceRolesEnums;
import com.caesar.integratedgovernance.dto.OperadorDTO;
import com.caesar.integratedgovernance.repositories.DataGovernanceEntitiesRepository;
import com.caesar.integratedgovernance.repositories.PersonalDataRepository;
import com.caesar.integratedgovernance.services.exceptions.DataIntegrityException;
import com.caesar.integratedgovernance.services.exceptions.ObjectNotFoundException;

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
	 * Método utilizado para atualizar uma Operador existente. 
	 * @param obj
	 * @return
	 */
	public DataGovernanceEntities update(OperadorDTO obj) {
		DataGovernanceEntities dataGovernanceEntities = find( obj.getId() );
		updateData(dataGovernanceEntities, obj);
		//this.fromDTO( obj );
		return dataGovernanceEntitiesRepository.save( obj );
	}
	
	/**
	 * Classe auxiliar para extrair os dados do DTO e popular os objetos
	 * @param operadorDto
	 * @return
	 */
	public DataGovernanceEntities fromDTO(OperadorDTO operadorDto) {
		
		//Dados do papel
		DataGovernanceRoles papelObj = new DataGovernanceRoles();
		
		papelObj.setId( DataGovernanceRolesEnums.OPERADOR.getId() ); 
		
		//Dados pessois
		PersonalData dadosPessoaisOperador = new PersonalData( null, operadorDto.getNomeresponsavel(), "",	operadorDto.getEndereco(), operadorDto.getTelefone(), operadorDto.getEmail() );
		
		//Entidade de Governança Operador
		DataGovernanceEntities  dge = new DataGovernanceEntities( null, papelObj, dadosPessoaisOperador, operadorDto.getRazaosocial(), operadorDto.getCnpj() );
		
		return dge;
	}
	
	/**
	 * Método utilizado para excluir um Operador 
	 * @param id
	 */
	public void deleteById(Integer id) {
		try {
			dataGovernanceEntitiesRepository.deleteById( id );
		}catch(DataIntegrityViolationException e) { 
			throw new DataIntegrityException("Não é possível excluir uma Cliente porque há Pedidos relacionadas.");
		}
	}
	
	
	/**
	 * Método auxiliar para consultar um Operador por Id antes de persistir uma atualização do mesmo
	 * @param id
	 * @return
	 */
	public DataGovernanceEntities find(Integer id) {
		
		Optional<DataGovernanceEntities> obj = dataGovernanceEntitiesRepository.findById( id );
				
		return obj.orElseThrow(() -> new ObjectNotFoundException("Objeto não encontrado! Id: " + id + ", Tipo: " + DataGovernanceEntities.class.getName()));
	
	}
	
	
	private void updateData(DataGovernanceEntities objOld, OperadorDTO newObj) {
		objOld.setPersonalData(null);   .setNome( newObj.getNomeresponsavel());
		objOld.setEmail ( newObj.getEmail());
		
	}
	
	
}
