package com.pack.controller;

import java.util.List;
import java.util.Scanner;

import org.jboss.logging.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.pack.model.Dane;
import com.pack.model.Odpowiedz;

import com.pack.model.Pytanie;
import com.pack.model.QuizDane;
import com.pack.service.OdpowiedzService;
import com.pack.service.PytanieService;


@RequestMapping(value="/quiz")
@Controller
public class QuizController {
	
	private static final Logger logger = Logger
            .getLogger(QuizController.class);
	
	@Autowired
	private PytanieService pytService;
	
	@Autowired
	private OdpowiedzService odpService;
	
	@RequestMapping(value = " ")
	public ModelAndView start(ModelAndView model) {
		model.setViewName("quiz");
		return model;
	}
	
	@RequestMapping(value="/{pytanieId}",  method = RequestMethod.GET)
    public ModelAndView rozwiaz(@PathVariable int pytanieId, ModelAndView model,Odpowiedz odp){
        new Pytanie();
		Pytanie list = pytService.get(pytanieId);
        List<Pytanie> lista = pytService.getAllPytanie(pytanieId);
        model.addObject("lista", lista);
        model.setViewName("quiz");
        return model;
	}
	
	@RequestMapping(value="/{pytanieId}/wynik",  method = RequestMethod.POST)
    public ModelAndView rozwiazanie(@PathVariable int pytanieId,@ModelAttribute("result") ModelAndView model,Odpowiedz odp, @RequestParam String action){
		//Odpowiedz odpo = odpService.get(odpId);
        Pytanie pyt = new Pytanie();
		List<Pytanie> lista = pytService.getAllPytanie(pytanieId);
        
        if(action.equals("dalej")){
            if(action.equals("odp1")){
            	System.out.println("Prawdziwe");
            	model.addObject("r", "Prawdziwe");
            }if(action.equals(pyt.getOdppopr())){
            	System.out.println("Prawdziwe odp2");
            	model.addObject("r", "Prawdziwe odp2");
            }if(action.equals(pyt.getOdppopr())){
            	System.out.println("Prawdziwe odp2");
            	model.addObject("r", "Prawdziwe odp2");
            }else
            	System.out.println("Nieprawdziwe");
            model.addObject("r", "NIEPrawdziwe");
            }
        model.addObject("lista", lista);
        model.setViewName("result");
        return model;
	}
}
