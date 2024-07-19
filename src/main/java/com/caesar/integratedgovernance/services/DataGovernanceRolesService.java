package com.caesar.integratedgovernance.services;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.caesar.integratedgovernance.domain.DataGovernanceRoles;
import com.caesar.integratedgovernance.repositories.DataGovernanceRolesRepository;
import com.caesar.integratedgovernance.services.exceptions.ObjectNotFoundException;

@Service
public class DataGovernanceRolesService {

	
	@Autowired 
	private DataGovernanceRolesRepository repo;
	
	public DataGovernanceRoles find(Integer id) {
		
		Optional<DataGovernanceRoles> obj = repo.findById(id);
				
		return obj.orElseThrow(() -> new ObjectNotFoundException("Objeto não encontrado! Id: " + id + ", Tipo: " + DataGovernanceRoles.class.getName()));
	
	}
	
	
}
