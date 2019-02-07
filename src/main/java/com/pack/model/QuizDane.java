package com.pack.model;

public class QuizDane {

	int pkt=0;
	public int punkty(){
		pkt++;
		return pkt;
	}
	public int getPkt() {
		return pkt;
	}
	public void setPkt(int pkt) {
		this.pkt = pkt;
	}
}
