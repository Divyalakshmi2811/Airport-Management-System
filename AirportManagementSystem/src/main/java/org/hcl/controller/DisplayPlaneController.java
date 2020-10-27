package org.hcl.controller;

import java.util.List;

import org.hcl.entities.Plane;
import org.hcl.service.PlaneService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
@RequestMapping("/myplane")
public class DisplayPlaneController {
	
	@Autowired
	private PlaneService planeService;
	@GetMapping("/form")

	public String getMyPlane(Model model) 
	{
      
	List<Plane> myplane=planeService.getAllPlane();
	model.addAttribute("myplane", myplane);
	return "myplane";
	       
	    
	}
	
	
	

}
