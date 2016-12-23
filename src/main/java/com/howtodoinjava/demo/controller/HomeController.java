package com.howtodoinjava.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.howtodoinjava.demo.model.NextoryAutomationScripts;

@Controller
public class HomeController extends NextoryAutomationScripts{

	// this method required for  all web applications ( Mandatory "/" )
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(){
		System.out.println("home page");
		return "home";
	}
	 
	 @RequestMapping(value = "/run_testNG", method = RequestMethod.GET)
		public String runTestNG(Model model){
			System.out.println("run testNG");
			//loading homepage
			loadingHomepage();
			model.addAttribute("str", "Test Case Passed");
			return "success";
		}
	 
	 @RequestMapping(value = "/login_testNG", method = RequestMethod.GET)
		public String loginTestNG(Model model){
			System.out.println("login testNG");
			loginScriptForTestNG();
			model.addAttribute("str", "Test Case Passed");
			return "success";
		}
	 
	 @RequestMapping(value = "/Sampleismail_testNG", method = RequestMethod.GET)
		public String  sample1(Model model){
			System.out.println("login2 testNG ismail sample");
			model.addAttribute("str", "Test Case Passed");
			return "success";
		}
}
