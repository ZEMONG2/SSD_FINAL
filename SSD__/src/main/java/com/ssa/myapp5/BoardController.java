package com.ssa.myapp5;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.ssa.domain.Board;
import com.ssa.domain.UserVO;
import com.ssa.mapper.BoardMapper;

@Controller
public class BoardController {

	/* 첫창- 로그인창 */
	@GetMapping("/")
	public String login() {
		return "login";
	}

	/* 회원가입 폼으로 이동 */
	@GetMapping("/register")
	public String register() {
		return "/register";
	}

	/* 메인으로 이동 */
	@GetMapping("/main")
	public String main(Model model) {
		ArrayList<Board> list = mapper.boardList();

		model.addAttribute("list", list);
		return "/main";
	}

	/* 지도로 이동 */
	@GetMapping("/map")
	public String map() {
		return "/map";
	}

	/*
	 * 
	 * 
	 * 모니터링 이동
	 * 
	 * @GetMapping("/monitoring") public String monitoring() { return "/monitoring";
	 * }
	 */

	/* 마이페이지 */
	@GetMapping("/mypage")
	public String mypage() {
		return "/mypage";
	}

//	게시판 컨트롤러

	@Autowired
	private BoardMapper mapper;

	@RequestMapping("/boardList")
	public String boardList(Model model) {
		ArrayList<Board> list = mapper.boardList();

		model.addAttribute("list", list);

		return "boardList";
	}

	/* 공지 작성 이동 */
	@GetMapping("/boardForm")
	public String boardFrom() {
		return "boardForm";
	}

	@PostMapping("/boardInsert.do")
	public String boardInsert(Board vo) {
		mapper.boardInsert(vo);

		return "redirect:/boardList.do";
	}

//	   @GetMapping("/boardContent.do")
//	   public String boardTitle(@RequestParam("idx") int idx, Model model) {
//	      
//	      Board vo = mapper.boardContent(idx);
//	      model.addAttribute("list",vo);
//	      System.out.println(mapper.boardTitle(idx));
//	      
//	      return "boardContent";
//	   }

	@GetMapping("/boardContent.do")
	public String boardContent(@RequestParam("idx") int idx, Model model) {

		Board vo = mapper.boardContent(idx);
		SimpleDateFormat dateParser = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS");
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

		try {
			Date date = dateParser.parse(vo.getIndate());
			vo.setIndate(dateFormat.format(date));
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		model.addAttribute("vo", vo);
		System.out.println(mapper.boardTitle(idx));

		return "boardContent";
	}

	@GetMapping("/boardDelete.do/{idx}")
	public String boardDelete(@PathVariable int idx) {

		mapper.boardDelete(idx);

		return "redirect:/boardList.do";
	}

	@RequestMapping(value = "/boardUpdate.do/{idx}", method = RequestMethod.GET)
	public String boardUpdate(@PathVariable int idx, Model model) {

		Board vo = mapper.boardContent(idx);

		model.addAttribute("vo", vo);

		return "boardUpdate";
	}

	@RequestMapping(value = "/boardUpdate.do", method = RequestMethod.POST)

	public String boardUpdatePost(Board vo) {

		mapper.boardUpdate(vo);

		return "redirect:/boardList.do";
	}

}
