package org.hcl.dao;

import java.util.List;

import org.hcl.entities.Hangar;
import org.hcl.entities.Plane;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
@Repository
public class PlaneDaoImpl implements PlaneDao {
	@Autowired
	private SessionFactory factory;
	@Override
	public void insert(Plane plane) {
		factory.getCurrentSession().save(plane);
	}
	
	public List<Plane> getAllPlane()
	{
		
		List<Plane> planes=factory.getCurrentSession().createQuery("from org.hcl.entities.Plane").list();
	System.out.println(planes);
	return planes;
	}
	

}