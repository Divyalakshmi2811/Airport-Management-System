package org.hcl.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.hcl.dao.AdminDao;
import org.hcl.dao.AdminDaoImpl;
import org.hcl.entities.Admin;
import org.hcl.entities.Manager;
import org.hcl.service.ManagerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/login")
public class LoginController {
	
	
	@Autowired
	private AdminDao admindao;
	@GetMapping("/form")
	
	public String getLoginPage(Model model) {
	Admin admin=new Admin();
	model.addAttribute("admin", admin);
	return "login";
	}
	
	@PostMapping("/processlogin")
	public String getProfilepage(@Valid @ModelAttribute("admin") Admin admin,BindingResult result,HttpServletRequest request,Model model) {
	Admin validAdmin=admindao.verifyAdmin(admin);
	if(validAdmin!=null) {
	HttpSession session = request.getSession();
	session.setAttribute("validAdmin", validAdmin);
	model.addAttribute("validAdmin",session.getAttribute("validAdmin"));
	return "success";
	
	
	
	}
	return "home";
	
		
		
		
		
		
	}
}

