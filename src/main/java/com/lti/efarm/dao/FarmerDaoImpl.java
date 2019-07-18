package com.lti.efarm.dao;




import java.util.List;

import javax.persistence.Query;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.Root;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import javax.persistence.criteria.CriteriaQuery;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.lti.efarm.model.Farmer;

@Repository

public class FarmerDaoImpl implements FarmerDao {

	@Autowired
	private SessionFactory sessionFactory;
	

	public void saveFarmer(Farmer theFarmer) 
	{
		
		Session currentSession=sessionFactory.getCurrentSession();
		currentSession.saveOrUpdate(theFarmer);

	}
	
	
	public Farmer getFarmer(int theId)
	{
		Session currentSession=sessionFactory.getCurrentSession();
		Farmer theFarmer=currentSession.get(Farmer.class, theId);
		return theFarmer;
	}
	
	public List<Farmer> getFarmer()
	{
		Session session=sessionFactory.getCurrentSession();
		CriteriaBuilder cb=session.getCriteriaBuilder();
		CriteriaQuery<Farmer> cq=cb.createQuery(Farmer.class);
		Root<Farmer> root=cq.from(Farmer.class);
		cq.select(root);
		Query query=session.createQuery(cq);
		return query.getResultList();
	}


	

}