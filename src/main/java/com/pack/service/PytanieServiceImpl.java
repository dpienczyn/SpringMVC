package com.pack.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.pack.dao.PytanieDAO;
import com.pack.model.Pytanie;

@Service
@Transactional
public class PytanieServiceImpl implements PytanieService{

	@Autowired
	private PytanieDAO pytanieDAO;
	
	@Override
	public Pytanie get(int pytanieId) {
		return pytanieDAO.get(pytanieId);
	}

	@Override
	public List<Pytanie> getAllPytanie(int pytanieId) {
		return pytanieDAO.getAllPytanie(pytanieId);
	}

}
