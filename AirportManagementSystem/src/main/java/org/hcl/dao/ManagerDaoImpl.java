package org.hcl.dao;

import org.hcl.entities.Manager;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
@Repository
public class ManagerDaoImpl implements ManagerDao {
	@Autowired
	private SessionFactory factory;
	@Override
	public void insert(Manager manager) {
		factory.getCurrentSession().save(manager);
	}

}