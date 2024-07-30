package com.caesar.integratedgovernance.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.caesar.integratedgovernance.domain.DataGovernanceEntities;
import com.caesar.integratedgovernance.repositories.DataGovernanceEntitiesRepository;
import com.caesar.integratedgovernance.services.exceptions.ObjectNotFoundException;


@Service
public class DataGovernanceEntitiesService {

	@Autowired
	private DataGovernanceEntitiesRepository  repo;
	
	public DataGovernanceEntities find(Integer id) {
	
		Optional<DataGovernanceEntities> obj = repo.findById(id);
		return obj.orElseThrow(() -> new ObjectNotFoundException("Objeto não encontrado! Id: " + id + ", Tipo: " + DataGovernanceEntities.class.getName()));
	}

	public List<DataGovernanceEntities> findAll(){
		return repo.findAll();
	}
	
		


}
