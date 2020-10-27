package org.hcl.service;

import javax.transaction.Transactional;

import org.hcl.dao.ManagerDao;
import org.hcl.entities.Manager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
@Service

public class ManagerServiceImpl implements ManagerService {
	@Autowired
	private ManagerDao dao;
	@Override
	@Transactional
	public void insertManager(Manager manager) {
		dao.insert(manager);
	}
}
