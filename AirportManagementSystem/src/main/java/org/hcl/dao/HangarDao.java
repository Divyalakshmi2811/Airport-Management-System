package org.hcl.dao;


import java.util.List;

import org.hcl.entities.Hangar;

public interface HangarDao {
	public void insert(Hangar hangar);
	
	public List<Hangar> getAllHangar();
}
