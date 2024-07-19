package com.caesar.integratedgovernance.resources;

import java.util.List;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.caesar.integratedgovernance.domain.DataGovernanceEntities;
import com.caesar.integratedgovernance.services.DataGovernanceEntitiesService;

@RestController
@RequestMapping(value="/toListDataGovernanceEntities")
public class DataGovernanceEntitiesResource {

	@Autowired
	private DataGovernanceEntitiesService service; 
	
	@GetMapping("/{id}")
	public ResponseEntity<DataGovernanceEntities> find(@PathVariable Integer id) {
		
		DataGovernanceEntities obj = service.find(id);
		return ResponseEntity.ok().body(obj);		
	}

	@GetMapping
	public ResponseEntity<List<DataGovernanceEntities>> findAll(){
		List<DataGovernanceEntities> list = service.findAll();
		//List<ClienteDTO> listDto = list.stream().map(obj -> new ClienteDTO(obj)).collect(Collectors.toList());
		//return ResponseEntity.ok().body(listDto);
		return ResponseEntity.ok().body(list);
	}
	
	
}
