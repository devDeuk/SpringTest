package org.hdcd.service;

import java.util.List;

import org.hdcd.common.domain.PageRequest;
import org.hdcd.domain.Board;

public interface BoardService {

	public void register(Board board) throws Exception;

	public Board read(Integer boardNo) throws Exception;

	public void modify(Board board) throws Exception;

	public void remove(Integer boardNo) throws Exception;

	public List<Board> list(PageRequest pageRequest) throws Exception;
	
	public int count() throws Exception;

}
