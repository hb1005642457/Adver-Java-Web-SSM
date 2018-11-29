package com.tysy.service;

import java.util.List;

import com.tysy.pojo.Company;

public interface IcompanyService {
	public List<Company> selectall(Company com);
	public Long dataCount();
	public Company getComByUsername(String username);
	public int updateCom(Company com);
	public int deleteCom(Company com);
	public List<Company> getCompanys();
	public Company getComById(Integer id);
	public List<Company> selectallByCondition(Company com);
}
