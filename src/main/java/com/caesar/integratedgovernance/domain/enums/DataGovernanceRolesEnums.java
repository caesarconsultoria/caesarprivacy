package com.caesar.integratedgovernance.domain.enums;

public enum DataGovernanceRolesEnums {


	CONTROLADOR(1, "Controlador"),
	OPERADOR(2, "Operador"),
	ENCARREGADO(3, "Encarregado");
	
	private int id;
	private String role;

	
	private DataGovernanceRolesEnums(int id, String role) {
		this.id = id;
		this.role = role;
	}
	
	
	public int getId() {
		return id;
	}


	public String getRole() {
		return role;
	}


	public static DataGovernanceRolesEnums toEnum(Integer id) {
		if (id == null) {
			return null;		
		}
		
		for (DataGovernanceRolesEnums x : DataGovernanceRolesEnums.values()){
			if (id.equals(x.getId())) {
				return x;
			}
		}
		
		throw new IllegalArgumentException("Id inválido: "+ id); 
	}
	
}
