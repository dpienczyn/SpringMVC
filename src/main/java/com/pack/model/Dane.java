package com.pack.model;

public class Dane {

	private String litera;
	private int klucz;
	
	private String LiteraZaszyfrowana;
	private int kluczd;
	private char wynik;
	
	public String getLitera() {
		return litera;
	}

	public void setLitera(String litera) {
		this.litera = litera;
	}
	
	public String getLiteraZaszyfrowana() {
		return LiteraZaszyfrowana;
	}

	public void setLiteraZaszyfrowana(String literaZaszyfrowana) {
		LiteraZaszyfrowana = literaZaszyfrowana;
	}

	public int getKluczd() {
		return kluczd;
	}

	public void setKluczd(int kluczd) {
		this.kluczd = kluczd;
	}

	public int getKlucz() {
		return klucz;
	}

	public void setKlucz(int klucz) {
		this.klucz = klucz;
	}
}
