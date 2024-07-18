package com.caesar.integratedgovernance.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.caesar.integratedgovernance.domain.DataGovernanceEntities;

@Repository
public interface DataGovernanceEntitiesRepository extends JpaRepository< DataGovernanceEntities , Integer>{

}
