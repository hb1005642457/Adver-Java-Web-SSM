package com.tysy.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.tysy.dao.Companydao;
import com.tysy.pojo.Company;
@Service
public class CompanyService implements IcompanyService{
@Resource
	private Companydao dao;


	@Override
	public List<Company> selectall(Company com) {
		// TODO Auto-generated method stub
		return dao.selectall(com);
	}


	@Override
	public Long dataCount() {
		// TODO Auto-generated method stub
		return dao.dataCount();
	}


	@Override
	public Company getComByUsername(String username) {
		// TODO Auto-generated method stub
		return dao.getComByUsername(username);
	}


	@Override
	public int updateCom(Company com) {
		// TODO Auto-generated method stub
		return dao.updateCom(com);
	}


	@Override
	public int deleteCom(Company com) {
		// TODO Auto-generated method stub
		return dao.deleteCom(com);
	}


	@Override
	public List<Company> getCompanys() {
		// TODO Auto-generated method stub
		return dao.getCompanys();
	}


	@Override
	public Company getComById(Integer id) {
		// TODO Auto-generated method stub
		return dao.getComById(id);
	}


	@Override
	public List<Company> selectallByCondition(Company com) {
		// TODO Auto-generated method stub
		return dao.selectallByCondition(com);
	}

}
