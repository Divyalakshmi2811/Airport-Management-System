package org.hcl.service;

import javax.transaction.Transactional;

import org.hcl.dao.AdminDao;
import org.hcl.entities.Admin;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
@Service

public class AdminServiceImpl implements AdminService {
	@Autowired
	private AdminDao dao;
	@Override
	@Transactional
	public void insertUser(Admin admin) {
		dao.insert(admin);
	}
}
