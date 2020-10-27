package org.hcl.service;


import java.util.List;

import javax.transaction.Transactional;

import org.hcl.dao.HangarDao;
import org.hcl.entities.Hangar;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
@Service

public class HangarServiceImpl implements HangarService {
	@Autowired
	private HangarDao dao;
	@Override
	@Transactional
	public void insertHangar(Hangar hangar) {
		dao.insert(hangar);
	}
	
	@Transactional
	public List<Hangar> getAllHangar()
	{
		return dao.getAllHangar();
		
	}
}
