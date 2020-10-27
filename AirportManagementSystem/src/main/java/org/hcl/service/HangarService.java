package org.hcl.service;
import java.util.List;

import org.hcl.entities.Hangar;

public interface HangarService {
	public void insertHangar(Hangar hangar);
	
	public List<Hangar> getAllHangar();
}

