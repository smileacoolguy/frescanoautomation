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
			model.addAttribute("str", "Login Test Run completed");
			return "success";
		}
	 
	 @RequestMapping(value = "/Sampleismail_testNG", method = RequestMethod.GET)
		public String  sample1(Model model){
			System.out.println("login2 testNG ismail sample");
			model.addAttribute("str", "Test Run Completed");
			return "success";
		}
	 
	 @RequestMapping(value = "/setfirefoxbrowser", method = RequestMethod.GET)
		public String  resetfirefoxbrowsercontroller(Model model){
		 resetfirefoxbrowser();
			System.out.println("Firefoxset");
			model.addAttribute("str", "Firefox is setup");
			return "success";
		}
	 @RequestMapping(value = "/setgooglebrowser", method = RequestMethod.GET)
		public String  resetgooglebrowsercontroller(Model model){
		 resetgooglebrowser();
			System.out.println("Google chrome setup");
			model.addAttribute("str", "Google chrome is setup");
			return "success";
		}
	 @RequestMapping(value = "/setphantombrowser", method = RequestMethod.GET)
		public String  resetphantombrowsercontroller(Model model){
		 resetphantombrowser();
			System.out.println("Phantom browser setup");
			model.addAttribute("str", "Phantom is setup");
			return "success";
		}
	 
	 @RequestMapping(value = "/setsubscriptiontypebase", method = RequestMethod.GET)
		public String  setsubscriptiontypebasecontroller(Model model){
		 subscriptionbase();
		System.out.println("subscription type base setup");
			model.addAttribute("str", "subscription type base selected");
			return "success";
		}
	 @RequestMapping(value = "/setsubscriptiontypestandard", method = RequestMethod.GET)
		public String  setsubscriptiontypestandardcontroller(Model model){
		 subscriptionstandard();
			System.out.println("subscription type standard setup");
			model.addAttribute("str", "subscription type standard selected");
			return "success";
		}
	 
	 
	 
	 @RequestMapping(value = "/setsubscriptiontypepremium", method = RequestMethod.GET)
		public String  setsubscriptiontypepremiumcontroller(Model model){
		 subcriptionpremium();
			System.out.println("subscription type premium setup");
			model.addAttribute("str", "subscription type premium selected");
			return "success";
		}
}
