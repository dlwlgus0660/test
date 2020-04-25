package com.jeju.admin.review.vo;

import java.sql.Date;

import com.jeju.admin.common.vo.CommonVO;

public class AdminReviewVO extends CommonVO {

	private int re_number = 0;
	private String mem_id = "";
	private String re_title = "";
	private String re_content = "";
	private String re_image1 = "";
	private String re_image2 = "";
	private String re_image3 = "";
	private Date re_regdate;
	private String re_reply = "";

	public int getRe_number() {
		return re_number;
	}

	public void setRe_number(int re_number) {
		this.re_number = re_number;
	}

	public String getMem_id() {
		return mem_id;
	}

	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}

	public String getRe_title() {
		return re_title;
	}

	public void setRe_title(String re_title) {
		this.re_title = re_title;
	}

	public String getRe_content() {
		return re_content;
	}

	public void setRe_content(String re_content) {
		this.re_content = re_content;
	}

	public String getRe_image1() {
		return re_image1;
	}

	public void setRe_image1(String re_image1) {
		this.re_image1 = re_image1;
	}

	public String getRe_image2() {
		return re_image2;
	}

	public void setRe_image2(String re_image2) {
		this.re_image2 = re_image2;
	}

	public String getRe_image3() {
		return re_image3;
	}

	public void setRe_image3(String re_image3) {
		this.re_image3 = re_image3;
	}

	public Date getRe_regdate() {
		return re_regdate;
	}

	public void setRe_regdate(Date re_regdate) {
		this.re_regdate = re_regdate;
	}

	public String getRe_reply() {
		return re_reply;
	}

	public void setRe_reply(String re_reply) {
		this.re_reply = re_reply;
	}

}
