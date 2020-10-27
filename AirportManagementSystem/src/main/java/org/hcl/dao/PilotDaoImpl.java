package org.hcl.dao;

import java.util.List;

import org.hcl.entities.Hangar;
import org.hcl.entities.Pilot;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
@Repository
public class PilotDaoImpl implements PilotDao {
	@Autowired
	private SessionFactory factory;
	@Override
	public void insert(Pilot pilot) {
		factory.getCurrentSession().save(pilot);
	}
	
	public List<Pilot> getAllPilot()
	{
		
		List<Pilot> pilots=factory.getCurrentSession().createQuery("from org.hcl.entities.Pilot").list();
	System.out.println(pilots);
	return pilots;
	}

}