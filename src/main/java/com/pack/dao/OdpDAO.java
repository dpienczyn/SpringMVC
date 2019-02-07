package com.pack.dao;

import java.util.List;

import com.pack.model.Odpowiedz;

public interface OdpDAO {

	public Odpowiedz get(int odpId);
	public List<Odpowiedz> getAllOdpowiedz(int odpId);
}
