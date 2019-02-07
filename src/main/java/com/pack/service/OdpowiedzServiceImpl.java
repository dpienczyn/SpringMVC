package com.pack.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.pack.dao.OdpDAO;
import com.pack.dao.PytanieDAO;
import com.pack.model.Odpowiedz;
import com.pack.model.Pytanie;

@Service
@Transactional
public class OdpowiedzServiceImpl implements OdpowiedzService{
	
	@Autowired
	private OdpDAO odpDao;

	@Override
	public Odpowiedz get(int odpId) {
		return odpDao.get(odpId);
	}

	@Override
	public List<Odpowiedz> getAllOdpowiedz(int odpId) {
		return odpDao.getAllOdpowiedz(odpId);
	}

	
	
}
