package com.pack.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.pack.model.Pytanie;

@Repository
public class PytanieDaoImpl implements PytanieDAO{
	
	@Autowired
    private SessionFactory sessionFactory;

	@Override
	public Pytanie get(int pytanieId) {
		return (Pytanie) sessionFactory.getCurrentSession().get(Pytanie.class, pytanieId);
	}

	@SuppressWarnings("unchecked")
	public List<Pytanie> getAllPytanie(int pytanieId) {
		return sessionFactory.getCurrentSession().createQuery("from Pytanie p where p.pytanieId=:pytanieId").setParameter("pytanieId",pytanieId).list();
	}
}
