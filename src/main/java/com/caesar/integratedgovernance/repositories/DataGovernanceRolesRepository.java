package com.caesar.integratedgovernance.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.caesar.integratedgovernance.domain.DataGovernanceRoles;

@Repository
public interface DataGovernanceRolesRepository extends JpaRepository< DataGovernanceRoles , Integer>{

}
