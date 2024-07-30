package com.caesar.integratedgovernance.resources;

import java.net.URI;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.support.ServletUriComponentsBuilder;

import com.caesar.integratedgovernance.domain.DataGovernanceEntities;
import com.caesar.integratedgovernance.domain.DataGovernanceRoles;
import com.caesar.integratedgovernance.domain.enums.DataGovernanceRolesEnums;
import com.caesar.integratedgovernance.dto.OperadorDTO;
import com.caesar.integratedgovernance.services.DataGovernanceEntitiesService;
import com.caesar.integratedgovernance.services.OperadorService;

import jakarta.validation.Valid;

@RestController
@RequestMapping(value="/operadores")
public class OperadorResource {
	
	@Autowired
	private OperadorService operadorService;
	
	@Autowired
	private DataGovernanceEntitiesService service; 
	
	
	/**
	 * Método utilizado para inserir um novo Operador na base
	 * @param operadorDto
	 * @return
	 */
	@PostMapping
	public ResponseEntity<Void> insert(@Valid @RequestBody OperadorDTO operadorDto){
		
		DataGovernanceEntities newDataGovernanceEntities = operadorService.fromDTO( operadorDto );
		newDataGovernanceEntities = operadorService.insert( newDataGovernanceEntities );
		
		URI uri = ServletUriComponentsBuilder.fromCurrentRequest().path("/{id}").buildAndExpand( newDataGovernanceEntities.getId() ).toUri();
		
		return ResponseEntity.created(uri).build();
	}
	
	
	/**
	 * Método utilizado para excluir um Operador a pratir do seu Id
	 * @param id
	 * @return
	 */
	@DeleteMapping("/{id}")
	public ResponseEntity<Void> deleteById(@PathVariable Integer id) {

		operadorService.deleteById( id );
		
		return ResponseEntity.noContent().build();
	}
	
	
	
	/**
	 * Método utilizado para consultar um Operador por seu Id
	 * @param id
	 * @return
	 */
	@GetMapping("/{id}")
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
	 * Lista todas as Entidades que possuírem o Papel de "Operador"
	 * @return
	 */
	@GetMapping("lista")
	public ResponseEntity<List<OperadorDTO>> filtrarOperadores(){
	
		List<DataGovernanceEntities> listEntidades = service.findAll();
	
		List<OperadorDTO> operadoresDTOList = new ArrayList<>();

	    for ( DataGovernanceEntities entidade : listEntidades ) {
	        //verifica se a entidade é um Operador
	    	if ( this.isOperadorRole( entidade ) ) {
	            //sendo Operador, converte um DataGovernanceEntities para um OperadorDTO e o adiciona na lista de retorno.
	    		OperadorDTO dto = this.convertDataGovernanceEntitiesToOperadorDTO( entidade );
	            operadoresDTOList.add( dto );
	        }
	    }
	    
	    return ResponseEntity.ok().body( operadoresDTOList );
	    
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
	
	
	
}
