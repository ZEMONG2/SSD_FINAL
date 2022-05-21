package com.ssa.myapp5;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

public class SensorController {

	@RequestMapping(value = "/main/arduino", method = RequestMethod.GET)
	   public String home(Model model, @RequestParam("idx") String idx, @RequestParam("heart") String heart, @RequestParam("spo2") String spo2) {
//	      String s = sensor;
//	      , @RequestParam("spo2") String spo2
	      model.addAttribute("heart", heart);
	      
	      System.out.println(heart);
	      System.out.println("-------------------");
	      
	      
	      return "home";
	   }
	
	
}
