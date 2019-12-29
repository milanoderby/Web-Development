package com.my.board.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.my.board.model.Board;

@Mapper
public interface BoardMapper {
	public List<Board> getBoardList();
	public Board getBoardById(long id);
	public String getPasswordById(long id);
	public String selectNow();
	public int insertBoard(Board board);
	public int updateBoardById(Board board);
}