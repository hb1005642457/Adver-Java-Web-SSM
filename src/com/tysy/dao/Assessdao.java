package com.tysy.dao;

import java.util.List;

import com.tysy.pojo.Assess;

public interface Assessdao {
	public List<Assess> getAssessByComid(Integer comid);
	public List<Assess> getAssesses();
	public int addAssess(Assess ass);
	public int deleteAssess(Integer id);
}
