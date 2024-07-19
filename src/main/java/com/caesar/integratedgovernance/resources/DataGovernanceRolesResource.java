package com.caesar.integratedgovernance.resources;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.caesar.integratedgovernance.domain.DataGovernanceRoles;
import com.caesar.integratedgovernance.services.DataGovernanceRolesService;


@RestController
@RequestMapping(value="/toListDataGovernanceRoles")
public class DataGovernanceRolesResource {

	@Autowired
	private DataGovernanceRolesService service;
	
	@GetMapping("/{id}")
	public ResponseEntity<DataGovernanceRoles> find(@PathVariable Integer id) {
		
		DataGovernanceRoles obj = service.find(id);
		return ResponseEntity.ok().body(obj);		
		
		
	}
	

	
}
