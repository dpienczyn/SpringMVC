package com.pack.controller;

import java.io.File;
import java.io.PrintWriter;
import java.util.Scanner;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.pack.model.Dane;
import com.pack.model.XorDane;

@Controller
public class XorController {

	@RequestMapping(value = "/xor", method = RequestMethod.GET)
	public ModelAndView podaj(ModelAndView model) {
	XorDane x = new XorDane();
	model.addObject("x", x);
	model.setViewName("xor");
		return model;
	}
	
	@RequestMapping(value="/xor",  method = RequestMethod.POST)
    public ModelAndView xor(@ModelAttribute("x") XorDane x, @RequestParam String action){
		ModelAndView mv = new ModelAndView();
		
		char[] r = x.getHaslo().toCharArray();
		char[] k = x.getKlucz().toCharArray();
		String tmp;
		String result = "";
		StringBuilder str = new StringBuilder();
		for(int i=0; i<r.length; i++){
			tmp = Integer.toBinaryString(r[i]);
			int t = Integer.parseInt(tmp);
			System.out.println("Text "+t);
				String hy = Integer.toBinaryString(k[i]);
				int s = Integer.parseInt(hy);
				System.out.println("Klucz "+s);
				
					int w = r[i]^k[i];
					
					String ch = new Character((char) w).toString();
					
					System.out.println(ch);
					System.out.println(w);
					
					result+=ch;
					
				}
			System.out.println(str);
			mv.addObject("t", result);
			mv.addObject("haslo", x.getHaslo());
			mv.addObject("klucz", x.getKlucz());
		return mv;
		
	}
}
