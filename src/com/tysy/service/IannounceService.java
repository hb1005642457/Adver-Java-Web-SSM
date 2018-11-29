package com.tysy.service;


import com.tysy.pojo.Announce;

public interface IannounceService {
	public Announce selectAll();
	public int updateAnnounce(Announce ann);
}
