package com.mc.controller;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.validation.Valid;

import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.mc.model.Student;

@Controller
public class StudentAdmissionController {
	
	
	@InitBinder
	public void initBinder(WebDataBinder binder) {
		
		binder.setDisallowedFields(new String[] {"mobile"});
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd");
		binder.registerCustomEditor(Date.class, "birthday", new CustomDateEditor(dateFormat, false));
		 
		binder.registerCustomEditor(String.class, "name", new StudentNameEditor());
	
	}
	
	
	@RequestMapping(value="/admissionForm.html", method=RequestMethod.GET)
	public ModelAndView getAdmissionForm(){
		ModelAndView model = new ModelAndView("AdmissionForm");
		return model;
	}
		
	@ModelAttribute
	public void welcomeMessage(Model model){  //this "mess" value can use in both form AdmissionForm.jsp and AdmissionSuccess.jsp
		model.addAttribute("mess", "Welcome to Spring MVC");
	}
	
	@RequestMapping(value="/submitAdmissionForm.html", method=RequestMethod.POST)
	public ModelAndView submitAdmissionForm(@Valid @ModelAttribute("student") Student student1, BindingResult result){
		
		if (result.hasErrors()){
			ModelAndView model = new ModelAndView("AdmissionForm");  //this is an .jsp file (see viewResolver)
			return model;
		}
		
		ModelAndView model = new ModelAndView("AdmissionSuccess");  //this is an .jsp file (see viewResolver)
		model.addObject("headerMessage","MT College");
		//model.addObject("student",student1);
		
		return model;
	
	}
	
	
}
