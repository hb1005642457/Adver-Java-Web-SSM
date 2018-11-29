package com.tysy.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.tysy.dao.Memberdao;
import com.tysy.pojo.Member;
@Service
public class MemberService implements ImemberService{
@Resource
	private Memberdao dao;
	@Override
	public List<Member> getMembers() {
		// TODO Auto-generated method stub
		return dao.getMembers();
	}
	@Override
	public Member getMemByUsername(String username) {
		// TODO Auto-generated method stub
		return dao.getMemByUsername(username);
	}
	@Override
	public int addMem(Member mem) {
		// TODO Auto-generated method stub
		return dao.addMem(mem);
	}
	@Override
	public int deletemem(Member mem) {
		// TODO Auto-generated method stub
		return dao.deletemem(mem);
	}
	@Override
	public int updatemem(Member mem) {
		// TODO Auto-generated method stub
		return dao.updatemem(mem);
	}
	@Override
	public Member getMemById(Integer id) {
		// TODO Auto-generated method stub
		return dao.getMemById(id);
	}
	
}
