package org.hcl.controller;

import java.util.List;

import org.hcl.entities.Pilot;
import org.hcl.service.PilotService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
@RequestMapping("/mypilot")
public class DisplayPilotController {
	
	@Autowired
	private PilotService pilotService;
	@GetMapping("/form")

	public String getMyPilot(Model model) 
	{
      
	List<Pilot> mypilot=pilotService.getAllPilot();
	model.addAttribute("mypilot", mypilot);
	return "mypilot";
	       
	    
	}
	
	
	

}
