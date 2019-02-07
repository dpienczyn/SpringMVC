package com.pack.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.pack.model.Odpowiedz;
import com.pack.model.Pytanie;

@Repository
public class OdpowiedzDaoImpl implements OdpDAO{

	@Autowired
    private SessionFactory sessionFactory;
	
	@Override
	public Odpowiedz get(int odpId) {
		return (Odpowiedz) sessionFactory.getCurrentSession().get(Odpowiedz.class, odpId);
	}

	@SuppressWarnings("unchecked")
	public List<Odpowiedz> getAllOdpowiedz(int odpId) {
		return sessionFactory.getCurrentSession().createQuery("from Odpowiedz o where o.odpId=:odpId").setParameter("odpId",odpId).list();
	}

}
