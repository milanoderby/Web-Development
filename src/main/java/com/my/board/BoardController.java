package com.my.board;

import javax.validation.Valid;

import org.slf4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.my.board.mapper.BoardMapper;
import com.my.board.model.Board;

@Controller
public class BoardController {
	@Autowired
	BoardMapper boardMapper;
	
	@GetMapping("write")
	public String write() {
		return "write";
	}
	
	@PostMapping("write")
	public String writePost(@Valid Board board, BindingResult bindingResult, Model model) {
		if(bindingResult.hasErrors()) {
			model.addAttribute("msg", "Wrong Input Type! Refill the Email form");
			model.addAttribute("url", "../board");
			return "redirect";
		}
		int result = boardMapper.insertBoard(board);
		return "redirect:../board";
	}
	
	@GetMapping("/{id}")
	public String content(@PathVariable("id") long id, Model model) {
		Board board = boardMapper.getBoardById(id);
		model.addAttribute("board", board);
		return "content";
	}
	
	@PostMapping("/{id}")
	public String contentPost(@PathVariable("id") long id, @ModelAttribute Board board, Model model) {
		String password = boardMapper.getPasswordById(id);
		if(board.getPassword().equals(password)) {
			int result = boardMapper.updateBoardById(board);
			model.addAttribute("msg", "modify Accepted");
			model.addAttribute("url", "../board");
		}
		else {
			model.addAttribute("msg", "wrong Password");
			model.addAttribute("url", "../board/" + id);
		}
		return "redirect";
	}
}
