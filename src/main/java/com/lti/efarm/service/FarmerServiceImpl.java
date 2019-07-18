package com.lti.efarm.service;



import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lti.efarm.dao.FarmerDao;
import com.lti.efarm.model.Farmer;


@Service
public class FarmerServiceImpl implements FarmerService
{
	
	@Autowired
	private FarmerDao farmerDAO;

	
	@Transactional
	public void saveFarmer(Farmer theFarmer)
	{
		farmerDAO.saveFarmer(theFarmer);

	}

	@Transactional
	public List<Farmer> getFarmer()
	{
		return farmerDAO.getFarmer();
	}

	@Transactional
	public Farmer getFarmer(int theId) 
	{
		return farmerDAO.getFarmer(theId);
	}



	

	

}
