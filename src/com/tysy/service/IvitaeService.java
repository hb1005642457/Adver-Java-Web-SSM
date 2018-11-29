package com.tysy.service;

import com.tysy.pojo.Vitae;

public interface IvitaeService {
	public Vitae selectVitaeByMemid(Integer memid);
	public int updateVitae(Vitae via);
	public int addVitae(Vitae via);
}
