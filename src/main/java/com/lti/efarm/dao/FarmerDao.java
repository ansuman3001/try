package com.lti.efarm.dao;

import java.util.List;

import com.lti.efarm.model.Farmer;

public interface FarmerDao
{
	public void saveFarmer(Farmer theFarmer);
	public List<Farmer> getFarmer();
	public Farmer getFarmer(int theId);
	
}
