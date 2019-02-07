package com.pack.service;

import java.util.List;

import com.pack.model.Pytanie;

public interface PytanieService {

	public Pytanie get(int pytanieId);
	public List<Pytanie> getAllPytanie(int pytanieId);
}
