package com.jeju.admin.qna.vo;

import java.sql.Date;

public class AdminQnaVO {
	private int inq_number = 0;
	private String mem_id = "";
	private String inq_title = "";
	private String inq_content = "";
	private String inq_reply = "";
	private Date inq_regdate;
	private String inq_state = "";

	public int getInq_number() {
		return inq_number;
	}

	public void setInq_number(int inq_number) {
		this.inq_number = inq_number;
	}

	public String getMem_id() {
		return mem_id;
	}

	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}

	public String getInq_title() {
		return inq_title;
	}

	public void setInq_title(String inq_title) {
		this.inq_title = inq_title;
	}

	public String getInq_content() {
		return inq_content;
	}

	public void setInq_content(String inq_content) {
		this.inq_content = inq_content;
	}

	public String getInq_reply() {
		return inq_reply;
	}

	public void setInq_reply(String inq_reply) {
		this.inq_reply = inq_reply;
	}

	public Date getInq_regdate() {
		return inq_regdate;
	}

	public void setInq_regdate(Date inq_regdate) {
		this.inq_regdate = inq_regdate;
	}

	public String getInq_state() {
		return inq_state;
	}

	public void setInq_state(String inq_state) {
		this.inq_state = inq_state;
	}

}
