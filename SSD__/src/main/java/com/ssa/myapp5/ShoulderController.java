package com.ssa.myapp5;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ssa.domain.Shoulder;
import com.ssa.mapper.ShoulderMapper;

@Controller
public class ShoulderController {

	@Autowired
	private ShoulderMapper mapper;
	
	  @GetMapping("/temp")
	  public String ShoulderData(@PathVariable String user_id,  Model model) {
	  Shoulder sd = mapper.ShoulderData(user_id);
	  System.out.print("체크중입니다");
      model.addAttribute("s_vo",sd);
	  return "redirect:/state_check.do";
	  
	  }
	 
	
	
	
}
