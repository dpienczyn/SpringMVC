package com.pack.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "odp")
public class Odpowiedz implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 2220195094864310921L;
	
	@Id
    @GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "odpId")
	private int odpId;
	
	@Column
	private String odpprawidlowa;
	
	@OneToOne
	@JoinColumn(name = "pytanieId")
	private Pytanie pytanie;

	public int getOdpId() {
		return odpId;
	}

	public void setOdpId(int odpId) {
		this.odpId = odpId;
	}

	public String getOdpprawidlowa() {
		return odpprawidlowa;
	}

	public void setOdpprawidlowa(String odpprawidlowa) {
		this.odpprawidlowa = odpprawidlowa;
	}

	public Pytanie getPytanie() {
		return pytanie;
	}

	public void setPytanie(Pytanie pytanie) {
		this.pytanie = pytanie;
	}
}
