package org.hcl.dao;

import java.util.List;

import org.hcl.entities.Hangar;
import org.hcl.entities.Plane;

public interface PlaneDao {
	public void insert(Plane plane);
	
	public List<Plane> getAllPlane();
}



