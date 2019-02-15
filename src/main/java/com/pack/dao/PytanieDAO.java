package com.pack.dao;

import java.util.List;


import com.pack.model.Pytanie;

public interface PytanieDAO {

	public Pytanie get(int pytanieId);
	public List<Pytanie> getAllPytanie(int pytanieId);
}
