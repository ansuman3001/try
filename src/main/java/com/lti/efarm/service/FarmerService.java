package com.lti.efarm.service;

import java.util.List;


import com.lti.efarm.model.Farmer;
import com.lti.efarm.service.FarmerService;

public interface FarmerService
{

	public void saveFarmer(Farmer theFarmer);
	
	public List<Farmer> getFarmer();
	public Farmer getFarmer(int theId);
	
}
