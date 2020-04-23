package com.jeju.admin.refund.vo;

import java.sql.Timestamp;



public class AdminRefundVO {
	
	//환불 관리 리스트
	private int rsv_number = 0; //예약번호
	private String mem_id = ""; //아이디
	private String car_name = ""; //차량명
	private String rsv_name = ""; //예약자명
	private Timestamp rsv_apply_date; //예약 신청일
	private String rsv_state = ""; //환불 상태
	private int rsv_price = 0; //이용금액
	private Timestamp rsv_expected_date; //대여 예상 일시
	
	//환불 상세 내역
	
	
	public int getRsv_number() {
		return rsv_number;
	}
	public void setRsv_number(int rsv_number) {
		this.rsv_number = rsv_number;
	}
	public String getMem_id() {
		return mem_id;
	}
	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}
	public String getCar_name() {
		return car_name;
	}
	public void setCar_name(String car_name) {
		this.car_name = car_name;
	}
	public String getRsv_name() {
		return rsv_name;
	}
	public void setRsv_name(String rsv_name) {
		this.rsv_name = rsv_name;
	}
	public Timestamp getRsv_apply_date() {
		return rsv_apply_date;
	}
	public void setRsv_apply_date(Timestamp rsv_apply_date) {
		this.rsv_apply_date = rsv_apply_date;
	}
	public String getRsv_state() {
		return rsv_state;
	}
	public void setRsv_state(String rsv_state) {
		this.rsv_state = rsv_state;
	}
	public int getRsv_price() {
		return rsv_price;
	}
	public void setRsv_price(int rsv_price) {
		this.rsv_price = rsv_price;
	}
	public Timestamp getRsv_expected_date() {
		return rsv_expected_date;
	}
	public void setRsv_expected_date(Timestamp rsv_expected_date) {
		this.rsv_expected_date = rsv_expected_date;
	}
	
	
	
}
