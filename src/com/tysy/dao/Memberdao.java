package com.tysy.dao;

import java.util.List;

import com.tysy.pojo.Member;

public interface Memberdao {
	public List<Member> getMembers();
	public Member getMemByUsername(String username);
	public int addMem(Member mem);
	public int deletemem(Member mem);
	public int updatemem(Member mem);
	public Member getMemById(Integer id);
}
