package com.tysy.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.tysy.dao.Deliverdao;
import com.tysy.pojo.Deliver;

@Service
public class DeliverService implements IdeliverService{
	@Resource
	private Deliverdao dao;


	@Override
	public int addDeliver(Deliver del) {
		// TODO Auto-generated method stub
		return dao.addDeliver(del);
	}

	@Override
	public int updateDeliver(Deliver del) {
		// TODO Auto-generated method stub
		return dao.updateDeliver(del);
	}

	@Override
	public List<Deliver> getDeliByMemid(Integer memid) {
		// TODO Auto-generated method stub
		return dao.getDeliByMemid(memid);
	}

	@Override
	public List<Deliver> getDeliByComid(Integer comid) {
		// TODO Auto-generated method stub
		return dao.getDeliByComid(comid);
	}
		
}
