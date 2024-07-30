package com.caesar.integratedgovernance.domain;

import java.io.Serializable;
import java.util.Objects;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;

@Entity
public class DataGovernanceEntities implements Serializable{
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer id;
	
	@ManyToOne
	@JoinColumn(name="ID_DATAGOVERNANCEROLES")
	private DataGovernanceRoles datagovernanceroles;
	
	@ManyToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="ID_PERSONALDATA")
	private PersonalData personalData;
	
	
	private String razaosocial;
	private String  cnpj;
	
	
	public DataGovernanceEntities() {
		
	}

	public DataGovernanceEntities(Integer id, DataGovernanceRoles datagovernanceroles, PersonalData personalData,
			String razaosocial, String cnpj) {
		super();
		this.id = id;
		this.datagovernanceroles = datagovernanceroles;
		this.personalData = personalData;
		this.razaosocial = razaosocial;
		this.cnpj = cnpj;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public DataGovernanceRoles getDatagovernanceroles() {
		return datagovernanceroles;
	}

	public void setDatagovernanceroles(DataGovernanceRoles datagovernanceroles) {
		this.datagovernanceroles = datagovernanceroles;
	}

	public PersonalData getPersonalData() {
		return personalData;
	}

	public void setPersonalData(PersonalData personalData) {
		this.personalData = personalData;
	}

	public String getRazaosocial() {
		return razaosocial;
	}

	public void setRazaosocial(String razaosocial) {
		this.razaosocial = razaosocial;
	}

	public String getCnpj() {
		return cnpj;
	}

	public void setCnpj(String cnpj) {
		this.cnpj = cnpj;
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
		DataGovernanceEntities other = (DataGovernanceEntities) obj;
		return Objects.equals(id, other.id);
	}

	
	
	
}
