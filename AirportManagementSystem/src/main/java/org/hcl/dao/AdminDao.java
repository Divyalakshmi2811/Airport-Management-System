package org.hcl.dao;

import org.hcl.entities.Admin;

public interface AdminDao {
	public void insert(Admin admin);
	
	
	
	public Admin verifyAdmin(Admin admin);
}
