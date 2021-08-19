package com.project.phonebook.dao;

import java.util.List;
import com.project.phonebook.vo.PhoneBookVO;

public interface PhoneBookDAO {
	public List<PhoneBookVO> getList();
	public List<PhoneBookVO> search(String keyword);
	public int insert(PhoneBookVO vo);
	public int delete(Long id);
}
