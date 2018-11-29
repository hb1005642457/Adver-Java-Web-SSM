package com.tysy.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.tysy.dao.Announcedao;
import com.tysy.pojo.Announce;
@Service
public class AnnounceService implements IannounceService{
@Resource
	private Announcedao dao;
	@Override
	public Announce selectAll() {
		// TODO Auto-generated method stub
		return dao.selectAll();
	}
	@Override
	public int updateAnnounce(Announce ann) {
		// TODO Auto-generated method stub
		return dao.updateAnnounce(ann);
	}

}
