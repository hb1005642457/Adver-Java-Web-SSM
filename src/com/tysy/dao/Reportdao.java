package com.tysy.dao;

import java.util.List;

import com.tysy.pojo.Report;

public interface Reportdao {
	public List<Report> getReportByComid(Integer comid);
	public List<Report> getReports();
	public int addReport(Report rep);
}
