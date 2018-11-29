package com.tysy.dao;

import com.tysy.pojo.Vitae;

public interface Vitaedao {
	public Vitae selectVitaeByMemid(Integer memid);
	public int updateVitae(Vitae via);
	public int addVitae(Vitae via);
}
