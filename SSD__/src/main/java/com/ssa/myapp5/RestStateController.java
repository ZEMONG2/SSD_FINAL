package com.ssa.myapp5; 

import com.ssa.domain.Shoulder;
import com.ssa.domain.UserVO;
import com.ssa.service.UserService;
import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;


@RestController
@RequestMapping("api")
public class RestStateController {
   
   @Autowired
   private UserService service;
   
   @GetMapping("/state/{user_id}")
   public ArrayList<UserVO> getUser(@PathVariable("user_id") String user_id) {
      ArrayList<UserVO> vo = service.UserListId(user_id);
      return vo;
   }

   @GetMapping("/team/{user_team}")
   public ArrayList<UserVO> UserTeamList(@PathVariable("user_team") int user_team) {
      ArrayList<UserVO> vo = service.UserTeamList(user_team);
      return vo;
   }
   
   @GetMapping("/temp/{user_id}")
   public ArrayList<Shoulder> UserTemp(@PathVariable("user_id") String user_id) {
      ArrayList<Shoulder> vo = service.UserTemp(user_id);
      return vo;
   }
   
//   @GetMapping("/change_state/{user_id}/{user_state}")
//	 public String ChangeState(@PathVariable("user_id") String user_id,@PathVariable("user_state") String user_state) {
//		 
//		 service.ChangeState(user_id, user_state);
//		 System.out.println("근태 저장완료");
//		 System.out.println("근태 : "+user_state);
//		 System.out.println("아이디 : "+user_id);
//	
//	 return "redirect:/change_info";
//	 }
   
}
