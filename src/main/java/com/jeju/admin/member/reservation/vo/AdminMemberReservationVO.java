package com.jeju.admin.member.reservation.vo;

import java.sql.Timestamp;

import com.jeju.admin.common.vo.CommonVO;

public class AdminMemberReservationVO extends CommonVO {
	private int rsv_number = 0; //예약번호
	private String mem_id = ""; //아이디
	private String ren_car_number = ""; //차량 번호
	private String car_name = "";//차량명
	private String rsv_name = ""; //예약자명
	private String rsv_phone = ""; //예약자 핸드폰번호
	private Timestamp rsv_apply_date; //예약 신청일
	private String rsv_state = ""; //예약 상태
	private int rsv_price = 0; //이용금액
	private Timestamp rsv_expected_date; //대여 예상 일시
	
	// getter and setters
	
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
	public String getRen_car_number() {
		return ren_car_number;
	}
	public void setRen_car_number(String ren_car_number) {
		this.ren_car_number = ren_car_number;
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
	public String getRsv_phone() {
		return rsv_phone;
	}
	public void setRsv_phone(String rsv_phone) {
		this.rsv_phone = rsv_phone;
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
