package com.caesar.integratedgovernance.dto;

import java.io.Serializable;

public class OperadorDTO implements Serializable{
	private static final long serialVersionUID = 1L;
	
	//Dados do Papel
	private Integer idGovernanceRoles;
	private String nomepapel;
	
	//Dados da Entidade
	private Integer id;
	private String razaosocial;
	private String cnpj;
	private String nomeresponsavel;
	
	
	//Dados pessoais
	private Integer idPersonalData;
	private String cpf;
	private String email;
	private String endereco;
	private String telefone;
		
	
	public OperadorDTO() {
		
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getIdPersonalData() {
		return idPersonalData;
	}

	public void setIdPersonalData(Integer idPersonalData) {
		this.idPersonalData = idPersonalData;
	}

	public Integer getIdGovernanceRoles() {
		return idGovernanceRoles;
	}

	public void setIdGovernanceRoles(Integer idGovernanceRoles) {
		this.idGovernanceRoles = idGovernanceRoles;
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

	public String getNomeresponsavel() {
		return nomeresponsavel;
	}

	public void setNomeresponsavel(String nomeresponsavel) {
		this.nomeresponsavel = nomeresponsavel;
	}

	public String getNomepapel() {
		return nomepapel;
	}

	public void setNomepapel(String nomepapel) {
		this.nomepapel = nomepapel;
	}

	public String getCpf() {
		return cpf;
	}

	public void setCpf(String cpf) {
		this.cpf = cpf;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getEndereco() {
		return endereco;
	}

	public void setEndereco(String endereco) {
		this.endereco = endereco;
	}

	public String getTelefone() {
		return telefone;
	}

	public void setTelefone(String telefone) {
		this.telefone = telefone;
	}
	
	
	
}
