package com.pack.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "pytanie")
public class Pytanie implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 2014945416407270519L;

	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "pytanieId")
	private int pytanieId;
	
	@Column
	private String opis;
	
	@Column
	private String odp1;
	
	@Column
	private String odp2;
	
	@Column
	private String odp3;

	@Column
	private String odppopr;
	
	public int getPytanieId() {
		return pytanieId;
	}

	public void setPytanieId(int pytanieId) {
		this.pytanieId = pytanieId;
	}

	public String getOpis() {
		return opis;
	}

	public void setOpis(String opis) {
		this.opis = opis;
	}

	public String getOdp1() {
		return odp1;
	}

	public void setOdp1(String odp1) {
		this.odp1 = odp1;
	}

	public String getOdp2() {
		return odp2;
	}

	public void setOdp2(String odp2) {
		this.odp2 = odp2;
	}

	public String getOdp3() {
		return odp3;
	}

	public void setOdp3(String odp3) {
		this.odp3 = odp3;
	}

	public String getOdppopr() {
		return odppopr;
	}

	public void setOdppopr(String odppopr) {
		this.odppopr = odppopr;
	}
	
}
