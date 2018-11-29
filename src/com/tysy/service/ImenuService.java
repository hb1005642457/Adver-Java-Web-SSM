package com.tysy.service;

import java.util.List;

import com.tysy.pojo.MenuO;
import com.tysy.pojo.MenuT;

public interface ImenuService {
	public List<MenuO> selectAllMenuO();
	public List<MenuT> selectAllMenuTByOid(Integer Oid);
}
