package com.tysy.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.tysy.dao.Reportdao;
import com.tysy.pojo.Report;
@Service
public class ReportService implements IreportService{
@Resource
	private Reportdao dao;
	@Override
	public List<Report> getReportByComid(Integer comid) {
		// TODO Auto-generated method stub
		return dao.getReportByComid(comid);
	}

	@Override
	public List<Report> getReports() {
		// TODO Auto-generated method stub
		return dao.getReports();
	}

	@Override
	public int addReport(Report rep) {
		// TODO Auto-generated method stub
		return dao.addReport(rep);
	}

}
