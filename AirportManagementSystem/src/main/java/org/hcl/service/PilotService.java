package org.hcl.service;

import java.util.List;

import org.hcl.entities.Hangar;
import org.hcl.entities.Pilot;

public interface PilotService {
	public void insertPilot(Pilot pilot);
	public List<Pilot> getAllPilot();
}

