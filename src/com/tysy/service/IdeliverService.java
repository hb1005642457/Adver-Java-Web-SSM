package com.tysy.service;

import java.util.List;

import com.tysy.pojo.Deliver;

public interface IdeliverService {
	public List<Deliver> getDeliByMemid(Integer memid);
	public List<Deliver> getDeliByComid(Integer comid);
	public int addDeliver(Deliver del);
	public int updateDeliver(Deliver del);
}
