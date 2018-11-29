package com.tysy.dao;

import java.util.List;

import com.tysy.pojo.MenuO;
import com.tysy.pojo.MenuT;

public interface Menudao {
	public List<MenuO> selectAllMenuO();
	public List<MenuT> selectAllMenuTByOid(Integer Oid);
}
