package com.howtodoinjava.demo.controller;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.howtodoinjava.demo.model.CampaignRedeemAccepted;

@Controller
public class Campaigntestingcontroller extends CampaignRedeemAccepted{
	 @RequestMapping(value = "/campaignredeemmember", method = RequestMethod.GET)
		public String  campaignredeemmembercontroller(Model model){
		  browserselect();
		  URLlaunch();
		  checkthemembertypecode();		  
		  killbrowserprocesses();
		 System.out.println("Campaign Free member Test setup completed");
			model.addAttribute("str", "Campaign Free member Test setup completed");
			return "success";
		}
}
