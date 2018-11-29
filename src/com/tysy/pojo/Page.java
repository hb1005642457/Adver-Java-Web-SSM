package com.tysy.pojo;

import java.util.List;


public class Page <T>{
	private int pagesize=4;
	private int pageno;
	private int datacount;
	private List<T> data;
	private int pagecount;
	private int pageStart;
	
	public int getPageStart() {
		return pageStart;
	}
	public void setPageStart(int pagesize,int pageno) {
		this.pageStart = (pageno-1)*pagesize;
	}
	public int getPagesize() {
		return pagesize;
	}
	public void setPagesize(int pagesize) {
		this.pagesize = pagesize;
		setPagecount(datacount, datacount);
		setPageStart(pagesize, pageno);
	}
	public int getPageno() {
		return pageno;
	}
	public void setPageno(int pageno) {
		this.pageno = pageno;
		setPageStart(pagesize, pageno);
	}
	public int getDatacount() {
		return datacount;
	}
	public void setDatacount(int datacount) {
		this.datacount = datacount;
		setPagecount(datacount, datacount);
	}
	public List<T> getData() {
		return data;
	}
	public void setData(List<T> data) {
		this.data = data;
	}
	public int getPagecount() {
		return pagecount;
	}
	public void setPagecount(int datacount,int pagesize) {
		if(this.datacount%this.pagesize==0){
			 this.pagecount = this.datacount / this.pagesize;
		} else {
           this.pagecount = this.datacount / this.pagesize + 1;
		}
	}
	
}
