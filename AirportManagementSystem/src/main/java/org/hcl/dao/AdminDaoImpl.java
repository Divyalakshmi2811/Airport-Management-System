package org.hcl.dao;

import javax.transaction.Transactional;

import org.hcl.entities.Admin;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
@Repository
public class AdminDaoImpl implements AdminDao {
	@Autowired
	private SessionFactory factory;
	@Override
	public void insert(Admin admin) {
		factory.getCurrentSession().save(admin);
	}
	
	@Override
	@Transactional
	public Admin verifyAdmin(Admin admin) {
		Session session = factory.getCurrentSession();
		System.out.println(admin.getVendorId());
		System.out.println(admin.getPassword());
		String query="from org.hcl.entities.Admin u where u.vendorId=:vendorId and u.password=:password";
		Admin verifiedAdmin = (Admin) session.createQuery(query).setParameter("vendorId", admin.getVendorId()).setParameter("password", admin.getPassword()).uniqueResult();
		if(verifiedAdmin!=null) {
		System.out.println(verifiedAdmin.getVendorId());
		return verifiedAdmin;
		}else {
		return null;

		}

}
}