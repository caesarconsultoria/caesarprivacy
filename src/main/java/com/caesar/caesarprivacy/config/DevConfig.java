package com.caesar.caesarprivacy.config;

import java.text.ParseException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Profile;

import com.caesar.caesarprivacy.services.DBService;

@Configuration
@Profile("dev")
public class DevConfig {

		
		@Autowired
		private DBService dbService;	
		
		//pega o valor da chave "spring.jpa.hibernate.ddl.auto" disposta no arquivo "application-dev.proporties"
		@Value("${spring.jpa.hibernate.ddl-auto}")
		private String strategy;
		
		
		/**
		 * Método responsável por instanciar o banco de dados no profile de teste
		 * @return
		 * @throws ParseException 
		 */
		@Bean
		public boolean instantiateDatabase() throws ParseException {
			
			
			//valida se o valor do atributo strategy é diferente de create
			if(!"create".equals(strategy)) {
				return false;
			}
			
			dbService.instantiateTestDataBase();
			return true;
	}
}
		
	

