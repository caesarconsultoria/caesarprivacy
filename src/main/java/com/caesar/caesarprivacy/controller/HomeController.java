package com.caesar.caesarprivacy.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {

	 @GetMapping("/")
	 public String home() {
	     return "index"; // Retorna o nome do template JSP ou Thymeleaf sem o sufixo
	 }
	 
	 @GetMapping("/companies")
	    public String contacts() {
	    return "apps-crm-companies"; // O prefixo e sufixo serão adicionados automaticamente
	 }
	
}
