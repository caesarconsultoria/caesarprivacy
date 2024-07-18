package com.caesar.integratedgovernance.domain;

import java.io.Serializable;
import java.util.Objects;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class DataGovernanceRoles implements Serializable{
	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer id;
	
	private String nomepapel;
	

	public DataGovernanceRoles() {
		
	}

	public DataGovernanceRoles(Integer id, String nomepapel) {
		super();
		this.id = id;
		this.nomepapel = nomepapel;
	}


	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getNomepapel() {
		return nomepapel;
	}

	public void setNomepapel(String nomepapel) {
		this.nomepapel = nomepapel;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	
	
	@Override
	public int hashCode() {
		return Objects.hash(id);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		DataGovernanceRoles other = (DataGovernanceRoles) obj;
		return Objects.equals(id, other.id);
	}

}
