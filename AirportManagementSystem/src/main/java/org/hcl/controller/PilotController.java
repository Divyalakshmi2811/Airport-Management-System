package org.hcl.controller;

import javax.validation.Valid;


import org.hcl.entities.Admin;
import org.hcl.entities.Pilot;
import org.hcl.service.AdminService;
import org.hcl.service.PilotService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/registerpilot")
public class PilotController {
	
	@Autowired
	private PilotService pilotservice;
	@GetMapping("/form")
	public String showPersonsForm(Model model) {
		Pilot pilot =new Pilot();
		model.addAttribute(pilot);
		return "registerpilot";
	}
	@PostMapping("/processpilot")
	public String processForm(@ModelAttribute("pilot") @Valid Pilot pilot,BindingResult result) {
		if(result.hasErrors())
		return "registerpilot";
		pilotservice.insertPilot(pilot);
		return "confirmpilot";
	}
}
		
		