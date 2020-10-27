package org.hcl.service;
import java.util.List;

import javax.transaction.Transactional;

import org.hcl.dao.PilotDao;
import org.hcl.entities.Hangar;
import org.hcl.entities.Pilot;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
@Service

public class PilotServiceImpl implements PilotService {
	@Autowired
	private PilotDao dao;
	@Override
	@Transactional
	public void insertPilot(Pilot pilot) {
		dao.insert(pilot);
	}
	
	@Transactional
	public List<Pilot> getAllPilot()
	{
		return dao.getAllPilot();
		
	}
}
