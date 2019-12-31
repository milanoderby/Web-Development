package com.my.board;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.my.board.mapper.BoardMapper;
import com.my.board.model.Board;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	@Autowired
	BoardMapper boardMapper;
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@GetMapping({"/"})
	public String home(Model model) {
		logger.info("Welcome home!");
		String result = boardMapper.selectNow();
		logger.info(result);
		
		List<Board> boardList = boardMapper.getBoardList();
		
		model.addAttribute("boardList", boardList);
		return "board";
	}
}
