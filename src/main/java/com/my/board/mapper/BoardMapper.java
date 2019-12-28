package com.my.board.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.my.board.model.Board;

@Mapper
public interface BoardMapper {
	public List<Board> getBoardList();
	String selectNow();
}