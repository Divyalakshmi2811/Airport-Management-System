package org.hcl.service;

import java.util.List;

import javax.transaction.Transactional;

import org.hcl.dao.PlaneDao;
import org.hcl.entities.Hangar;
import org.hcl.entities.Plane;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service

public class PlaneServiceImpl implements PlaneService {
	@Autowired
	private PlaneDao dao;

	@Override
	@Transactional
	public void insertPlane(Plane plane) {
		dao.insert(plane);
	}

	@Transactional
	public List<Plane> getAllPlane() {
		return dao.getAllPlane();

	}
}
