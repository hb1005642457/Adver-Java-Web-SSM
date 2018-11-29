package com.tysy.service;

import java.util.List;

import com.tysy.pojo.Assess;

public interface IassessService {
	public List<Assess> getAssessByComid(Integer comid);
	public List<Assess> getAssesses();
	public int addAssess(Assess ass);
	public int deleteAssess(Integer id);
}
