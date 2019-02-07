package com.pack.service;

import java.util.List;

import com.pack.model.Odpowiedz;

public interface OdpowiedzService {

	public Odpowiedz get(int odpId);
	public List<Odpowiedz> getAllOdpowiedz(int odpId);
}
