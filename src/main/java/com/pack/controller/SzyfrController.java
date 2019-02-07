package com.pack.controller;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.pack.model.Dane;

@Controller
public class SzyfrController {

	@RequestMapping(value = "/szyfr", method = RequestMethod.GET)
	public ModelAndView podaj(ModelAndView model) {
	Dane d = new Dane();
	model.addObject("d", d);
	model.setViewName("szyfr");
		return model;
	}
	
	@RequestMapping(value="/szyfr",  method = RequestMethod.POST)
    public ModelAndView zaszyfruj(@ModelAttribute("d") Dane vdana, @RequestParam String action){
		
        ModelAndView mv = new ModelAndView();
       
        System.out.println("Ciag liter..."+vdana.getLitera());
        byte[] b = vdana.getLitera().getBytes();
        int k = vdana.getKlucz();
        if(k>=26&&k<1){
        	mv.addObject("y","Wybierz klucz z przedzia³u od 1 do 25");
        }
        int kla = 26-k;
		String kluc = Integer.toString(kla);
		mv.addObject("klu", kluc);
        int h=0;
        String result = "";
        for(byte n: b){
			int k1 = 65-k;
			int k2 = 97-k;
			if(n==32){
				h = n;
			}if(n>=65&&n<=90){
				h=65+(n-k1)%26;
			}if(n>=97&&n<=122){
				h = 97+(n-k2)%26;
			}
			char t = (char)h;
			result+=t;
			
				System.out.print(t);
			
			mv.addObject("litera", result);
			mv.addObject("t",result);
			
			
			if(action.equals("Odszyfruj")){
				String ty = Character.toString(t);
				byte[] text = ty.getBytes();
				for(byte tekst : text){
					int a = 0;
					
					int k3 = 65-k;
					int k4 = 97-k;
					if(tekst == 32){
						a = tekst;
						System.out.println(tekst);
					}if(tekst >= 65 && tekst <= 90){
						a=65+(tekst-k3)%26;
					}if(tekst>=97&&tekst<=122){
						a=97+(tekst-k4)%26;
					}
					char f =(char)a;
				}
				
			}
        }        
        mv.addObject("litera",vdana.getLitera());
        mv.addObject("klucz", vdana.getKlucz());
        return mv;
    }
}