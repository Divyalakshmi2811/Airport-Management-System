package org.hcl.dao;

import java.util.List;

import org.hcl.entities.Hangar;
import org.hcl.entities.Pilot;

public interface PilotDao {
	public void insert(Pilot pilot);
	
	public List<Pilot> getAllPilot();
	
	
	
	
}