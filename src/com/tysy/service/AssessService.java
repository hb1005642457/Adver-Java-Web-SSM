package com.tysy.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.tysy.dao.Assessdao;
import com.tysy.pojo.Assess;
@Service
public class AssessService implements IassessService{
@Resource
	private Assessdao dao;
	@Override
	public List<Assess> getAssessByComid(Integer comid) {
		// TODO Auto-generated method stub
		return dao.getAssessByComid(comid);
	}

	@Override
	public List<Assess> getAssesses() {
		// TODO Auto-generated method stub
		return dao.getAssesses();
	}


	@Override
	public int addAssess(Assess ass) {
		// TODO Auto-generated method stub
		return dao.addAssess(ass);
	}

	@Override
	public int deleteAssess(Integer id) {
		// TODO Auto-generated method stub
		return dao.deleteAssess(id);
	}
	

}
