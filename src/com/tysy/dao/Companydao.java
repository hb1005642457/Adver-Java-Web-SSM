package com.tysy.dao;

import java.util.List;

import com.tysy.pojo.Company;
import com.tysy.pojo.Member;

public interface Companydao {
	public List<Company> selectall(Company com);
	public Long dataCount();
	public Company getComByUsername(String username);
	public int updateCom(Company com);
	public int deleteCom(Company com);
	public List<Company> getCompanys();
	public Company getComById(Integer id);
	public List<Company> selectallByCondition(Company com);
	
}
