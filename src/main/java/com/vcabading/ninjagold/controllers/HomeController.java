package com.vcabading.ninjagold.controllers;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.vcabading.ninjagold.models.DateTime;
import com.vcabading.ninjagold.models.NinjaGold;

/////////////////////////////////////////////////////////////////
//HOME CONTROLLER
/////////////////////////////////////////////////////////////////

@Controller
public class HomeController {
	
	@GetMapping("/")
	public String index(Model model, HttpSession session) {
		return "redirect:/gold";
	}
	
	@GetMapping("/gold")
	public String gold(Model model, HttpSession session) {
		if (session.getAttribute("ninjagold") == null) {
			NinjaGold ninjagold = new NinjaGold();
			ArrayList<String> events = new ArrayList<String>();
		    session.setAttribute("ninjagold", ninjagold);
		    session.setAttribute("events", events);
		}
		model.addAttribute("ninjagold", session.getAttribute("ninjagold"));
		model.addAttribute("events", session.getAttribute("events"));
		return "index.jsp";
	}
	
	@PostMapping("/gold/{location}") 
	public String goldLocation(@PathVariable("location") String location,
					HttpSession session) {
		int min;
		int max;
		if ( location.equals("farm")) {
			min = 10;
			max = 20;
		} else if ( location.equals("cave") ) {
			min = 5;
			max = 10;
		} else if ( location.equals("house") ) {
			min = 2;
			max = 5;
		} else if ( location.equals("casino") ) {
			min = -50;
			max = 50;
		} else {
			return "redirect:/";
		}
		
		//	---- Create Event String ---------------------------------------
		NinjaGold ninjagold = (NinjaGold) session.getAttribute("ninjagold");
		int goldEarned = ninjagold.addGold(min, max);
		ArrayList<String> events = (ArrayList<String>) session.getAttribute("events");
		String date = DateTime.getDate();
		String time = DateTime.getTime();
		String event = "You entered a " + location + " and earned " + goldEarned + " gold.";
		event += " ( " + date + " " + time + " )";
		events.add(event);
		session.setAttribute("events", events);
		return "redirect:/";
	}
}