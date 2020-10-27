package org.hcl.service;
import java.util.List;

import org.hcl.entities.Hangar;
import org.hcl.entities.Plane;

public interface PlaneService {
	public void insertPlane(Plane plane);
	
	public List<Plane> getAllPlane();
}

