package com.tysy.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.tysy.dao.Vitaedao;
import com.tysy.pojo.Vitae;
@Service
public class VitaeService implements IvitaeService{
@Resource
	private Vitaedao dao;
	@Override
	public Vitae selectVitaeByMemid(Integer memid) {
		// TODO Auto-generated method stub
		return dao.selectVitaeByMemid(memid);
	}

	@Override
	public int updateVitae(Vitae via) {
		// TODO Auto-generated method stub
		return dao.updateVitae(via);
	}

	@Override
	public int addVitae(Vitae via) {
		// TODO Auto-generated method stub
		return dao.addVitae(via);
	}
	
}
