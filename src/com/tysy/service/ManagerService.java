package com.tysy.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.tysy.dao.Managerdao;
import com.tysy.pojo.Manager;

@Service
public class ManagerService implements ImanagerService{
	@Resource
	private Managerdao dao;

	@Override
	public Manager getManaByUsername(String username) {
		// TODO Auto-generated method stub
		return dao.getManaByUsername(username);
	}
	
}
