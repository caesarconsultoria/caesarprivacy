package com.caesar.integratedgovernance.config;

import java.text.ParseException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Profile;

import com.caesar.integratedgovernance.services.DBService;

@Configuration
@Profile("test")
public class TestConfig {

	
	@Autowired
	private DBService dbService;	
	
	
	/**
	 * Método responsável por instanciar o banco de dados no profile de teste
	 * @return
	 * @throws ParseException 
	 */
	@Bean
	public boolean instantiateDatabase() throws ParseException {
		
		dbService.instantiateTestDataBase();
		return true;
	}
	
}

	

