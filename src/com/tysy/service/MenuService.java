package com.tysy.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.tysy.dao.Menudao;
import com.tysy.pojo.MenuO;
import com.tysy.pojo.MenuT;
@Service
public class MenuService implements ImenuService{
@Resource
	private Menudao dao;
	@Override
	public List<MenuO> selectAllMenuO() {
		// TODO Auto-generated method stub
		return dao.selectAllMenuO();
	}

	@Override
	public List<MenuT> selectAllMenuTByOid(Integer Oid) {
		// TODO Auto-generated method stub
		return dao.selectAllMenuTByOid(Oid);
	}

}
