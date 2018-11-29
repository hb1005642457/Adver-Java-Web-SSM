package com.tysy.dao;

import com.tysy.pojo.Announce;

public interface Announcedao {
	public Announce selectAll();
	public int updateAnnounce(Announce ann);
}
