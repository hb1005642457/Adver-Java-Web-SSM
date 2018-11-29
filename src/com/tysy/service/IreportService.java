package com.tysy.service;

import java.util.List;

import com.tysy.pojo.Report;

public interface IreportService {
	public List<Report> getReportByComid(Integer comid);
	public List<Report> getReports();
	public int addReport(Report rep);
}
