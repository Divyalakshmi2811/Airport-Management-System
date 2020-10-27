package org.hcl.dao;
import org.hcl.entities.Hangar;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import java.util.List;

import javax.transaction.Transactional;
@Repository
public class HangarDaoImpl implements HangarDao {
	@Autowired
	private SessionFactory factory;
	@Override
	public void insert(Hangar hangar) {
		factory.getCurrentSession().save(hangar);
	}
	public List<Hangar> getAllHangar()
	{
		
		List<Hangar> hangars=factory.getCurrentSession().createQuery("from org.hcl.entities.Hangar").list();
	System.out.println(hangars);
	return hangars;
	}
	
	

}