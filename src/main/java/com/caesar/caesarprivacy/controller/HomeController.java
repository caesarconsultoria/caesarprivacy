package com.caesar.caesarprivacy.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {

	 @GetMapping("/")
	 public String home() {
	     return "index"; // Retorna o nome do template JSP ou Thymeleaf sem o sufixo
	 }
	 
	 @GetMapping("/operadores")
	    public String operadores() {
	    return "operadores"; // O prefixo e sufixo serão adicionados automaticamente
	 }
	
}
