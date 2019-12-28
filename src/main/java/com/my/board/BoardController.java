package com.my.board;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class BoardController {
	@GetMapping("/board/write")
	public String write() {
		
		return "write";
	}
	
	@PostMapping("/board/write")
	public String writePost() {
		
		return "board";
	}
}
