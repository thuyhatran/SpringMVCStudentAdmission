package com.mc.controller;

import org.springframework.stereotype.Controller;

import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.mc.model.Student;

@Controller
public class StudentAdmissionController {
	@RequestMapping(value="/admissionForm.html", method=RequestMethod.GET)
	public ModelAndView getAdmissionForm(){
		ModelAndView model = new ModelAndView("AdmissionForm");
		return model;
	}
	
	
	@ModelAttribute
	public void welcomeMessage(Model model){  //this "mess" value can use in both form
		model.addAttribute("mess", "Welcome to Spring MVC");
	}
	
	
	
//	@RequestMapping(value="/submitAdmissionForm.html", method=RequestMethod.POST)
//	public ModelAndView submitAdmissionForm(@RequestParam("studentName") String student_name, @RequestParam("studentHobby") String student_hobby){
//		// studentName, studentHobby are the same to the ones in AsmissionForm.jsp
//		Student student1 = new Student();
//		student1.setName(student_name);
//		student1.setHobby(student_hobby);
//		
//		System.out.println("student 1:   " + student1);
//		
//		ModelAndView model = new ModelAndView("AdmissionSuccess");
//		model.addObject("headerMessage","MT College");
//		model.addObject("student",student1);
//		
//		return model;
//		
//	}
	
	
	@RequestMapping(value="/submitAdmissionForm.html", method=RequestMethod.POST)
	public ModelAndView submitAdmissionForm(@ModelAttribute("student") Student student1){
		ModelAndView model = new ModelAndView("AdmissionSuccess");  //this is an .jsp file (see viewResolver)
		model.addObject("headerMessage","MT College");
		model.addObject("student",student1);
		
		return model;
	}
	

}
