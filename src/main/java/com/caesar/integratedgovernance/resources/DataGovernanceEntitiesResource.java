package com.caesar.integratedgovernance.resources;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.caesar.integratedgovernance.domain.DataGovernanceEntities;
import com.caesar.integratedgovernance.domain.DataGovernanceRoles;
import com.caesar.integratedgovernance.domain.enums.DataGovernanceRolesEnums;
import com.caesar.integratedgovernance.dto.OperadorDTO;
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

	/**
	 * Lista todas as Entidades de Governança de Dados (DataGovernanceEntities) cadastradas
	 * sem distinção entre seus papeis (Roles).
	 * @return
	 */
	@GetMapping("/datagovernanceentities")
	public ResponseEntity<List<DataGovernanceEntities>> findAll(){
		List<DataGovernanceEntities> list = service.findAll();
		//List<ClienteDTO> listDto = list.stream().map(obj -> new ClienteDTO(obj)).collect(Collectors.toList());
		//return ResponseEntity.ok().body(listDto);
		return ResponseEntity.ok().body(list);
	}
	
	

	//#################### Código para Recuperação de Operadores ###########################################
	
	/**
	 * Lista todas as Entidades que possuírem o Papel de "Operador"
	 * @return
	 */
	@GetMapping("/operadores")
	//public ResponseEntity<List<OperadorDTO>> filtrarOperadores(List<DataGovernanceEntities> entidades) {

	public ResponseEntity<List<OperadorDTO>> filtrarOperadores(){
	
		List<DataGovernanceEntities> listEntidades = service.findAll();
	
		List<OperadorDTO> operadoresDTOList = new ArrayList<>();

	    for (DataGovernanceEntities entidade : listEntidades) {
	        //verifica se a entidade é um Operador
	    	if ( this.isOperadorRole( entidade ) ) {
	            //sendo Operador, converte um DataGovernanceEntities para um OperadorDTO e o adiciona na lista de retorno.
	    		OperadorDTO dto = this.convertDataGovernanceEntitiesToOperadorDTO( entidade );
	            operadoresDTOList.add( dto );
	        }
	    }
	    
	    return ResponseEntity.ok().body( operadoresDTOList );
	    
	}
	
	
	
	@GetMapping("/operadores/{id}")
	//public ResponseEntity<List<OperadorDTO>> filtrarOperadores(List<DataGovernanceEntities> entidades) {

	public ResponseEntity<OperadorDTO> findOperadorPorId(@PathVariable Integer id){
	
		List<DataGovernanceEntities> listEntidades = service.findAll();
	
		 OperadorDTO dto = new OperadorDTO();

	    for (DataGovernanceEntities entidade : listEntidades) {

	    	if ( this.isOperadorRole( entidade ) && entidade.getId() == id) {
	    		dto = this.convertDataGovernanceEntitiesToOperadorDTO( entidade );	
	        }
	    }
	    return ResponseEntity.ok().body(dto);
	}
	
	
	
	
	/**
	 * Método auxiliar para filtrar verificar se a Entidade é do tipo Operador
	 * @param entities
	 * @return
	 */
	private boolean isOperadorRole(DataGovernanceEntities entities) {
	    DataGovernanceRoles role = entities.getDatagovernanceroles();
	    //valida se o papel (role) não está nulo e se é um Operador.
	    //sendo, retorna verdadeiro, caso contrário falso.
	    return role != null && role.getId() == DataGovernanceRolesEnums.OPERADOR.getId();
	}
	
	
		
	/**
	 * Método auxiliar para converter DataGovernanceEntities em OperadorDTO
	 * @param dataGovernanceEntities
	 * @return
	 */
	private OperadorDTO convertDataGovernanceEntitiesToOperadorDTO(DataGovernanceEntities dataGovernanceEntities) {
        OperadorDTO dto = new OperadorDTO();
        
        //Dados da organização
        if( dataGovernanceEntities.getCnpj() != null && !dataGovernanceEntities.getCnpj().isEmpty() ) {
	                 dto.setId( dataGovernanceEntities.getId() 			);
        		   dto.setCnpj( dataGovernanceEntities.getCnpj() 		);
	        dto.setRazaosocial( dataGovernanceEntities.getRazaosocial() );
        }
       
        //Dados do Papel que a Entidade ocupa
        if( dataGovernanceEntities.getDatagovernanceroles() != null) {
       	    dto.setIdGovernanceRoles( dataGovernanceEntities.getDatagovernanceroles().getId() 		 );
       	    	    dto.setNomepapel( dataGovernanceEntities.getDatagovernanceroles().getNomepapel() );
        }
        
        //Dados pessoais
        if( dataGovernanceEntities.getPersonalData() != null ) {
	         dto.setIdPersonalData( dataGovernanceEntities.getPersonalData().getId() 	   );
	        dto.setNomeresponsavel( dataGovernanceEntities.getPersonalData().getNome() 	   );
	        	   dto.setEndereco( dataGovernanceEntities.getPersonalData().getEndereco() );
     	           dto.setTelefone( dataGovernanceEntities.getPersonalData().getTelefone() );
    	                dto.setCpf( dataGovernanceEntities.getPersonalData().getCpf() 	   );
	        		  dto.setEmail( dataGovernanceEntities.getPersonalData().getEmail()    );
        }

        return dto;
    }
	//########################################################################################################
	
	
	
	
	
	
	
	
}
