package com.tysy.pojo;

public class Announce {
	private Integer id;
	private String activity;
	private String content;
	
	public Announce() {
		super();
	}

	public Announce(Integer id, String activity, String content) {
		super();
		this.id = id;
		this.activity = activity;
		this.content = content;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getActivity() {
		return activity;
	}

	public void setActivity(String activity) {
		this.activity = activity;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	@Override
	public String toString() {
		return "Announce [id=" + id + ", activity=" + activity + ", content=" + content + "]";
	}
	
}
