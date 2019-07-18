package com.lti.efarm.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.lti.efarm.model.Farmer;
import com.lti.efarm.service.FarmerService;



@Controller
@RequestMapping("/farmer")
public class FarmerController
{
	@Autowired
	private FarmerService farmerService;

	
	@GetMapping("/showFarmer")
	public String showSignInForFarmer(ModelMap theModel)
	{
		Farmer theFarmer=new Farmer();
		theModel.addAttribute("farmer",theFarmer);
		return "farmer-reg";
	}
	
	@PostMapping("saveFarmer")
		public String saveFarmer(@ModelAttribute("farmer") Farmer theFarmer)
		{
		farmerService.saveFarmer(theFarmer);
			return "redirect:/farmer/list";
		}
	@GetMapping("/list")
		public String listFarmers(ModelMap theModel)
		{
		List<Farmer> theFarmers=farmerService.getFarmer();
		theModel.addAttribute("farmers", theFarmers);
		return "list-farmers";
		}
	
	@GetMapping("showRegFarmer")
	public String saveFarmerDetails(ModelMap theModel)
	{
		Farmer theFarmer=new Farmer();
		theModel.addAttribute("farmer",theFarmer);
		return "farmer-reg";
	}
	
	
	
}