package org.hcl.controller;

import java.util.List;

import org.hcl.entities.Hangar;
import org.hcl.service.HangarService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
@RequestMapping("/myhangar")
public class DisplayHangar {
	
	@Autowired
	private HangarService hangarService;
	@GetMapping("/form")

	public String getMyHangar(Model model) 
	{
      
	List<Hangar> myhangar=hangarService.getAllHangar();
	model.addAttribute("myhangar", myhangar);
	return "myhangar";
	       
	    
	}
	
	
	

}
