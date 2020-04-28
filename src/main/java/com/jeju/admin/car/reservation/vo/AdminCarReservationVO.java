package com.jeju.admin.car.reservation.vo;

import com.jeju.admin.common.vo.CommonVO;

public class AdminCarReservationVO extends CommonVO{
	private int ren_number = 0; //대여번호
	private String ren_car_number = ""; //차량번호
	private String car_name = ""; //차량명
	private int rsv_number = 0; //예약번호
	private String rsv_name = "";//예약자명
	private String ren_license_number = "";//운전면허증
	private String ren_take_date = "";//실 대여 일시
	private String ren_state = ""; //이용 상태
	private String ren_return_date = "";//실 반납 일시
	private String ren_overtime = "";//초과시간
	private int ren_add_price = 0;//추가 비용
	
	public int getRen_number() {
		return ren_number;
	}
	public void setRen_number(int ren_number) {
		this.ren_number = ren_number;
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
	public int getRsv_number() {
		return rsv_number;
	}
	public void setRsv_number(int rsv_number) {
		this.rsv_number = rsv_number;
	}
	public String getRsv_name() {
		return rsv_name;
	}
	public void setRsv_name(String rsv_name) {
		this.rsv_name = rsv_name;
	}
	public String getRen_license_number() {
		return ren_license_number;
	}
	public void setRen_license_number(String ren_license_number) {
		this.ren_license_number = ren_license_number;
	}
	public String getRen_take_date() {
		return ren_take_date;
	}
	public void setRen_take_date(String ren_take_date) {
		this.ren_take_date = ren_take_date;
	}
	public String getRen_state() {
		return ren_state;
	}
	public void setRen_state(String ren_state) {
		this.ren_state = ren_state;
	}
	public String getRen_return_date() {
		return ren_return_date;
	}
	public void setRen_return_date(String ren_return_date) {
		this.ren_return_date = ren_return_date;
	}
	public String getRen_overtime() {
		return ren_overtime;
	}
	public void setRen_overtime(String ren_overtime) {
		this.ren_overtime = ren_overtime;
	}
	public int getRen_add_price() {
		return ren_add_price;
	}
	public void setRen_add_price(int ren_add_price) {
		this.ren_add_price = ren_add_price;
	}
	

	
}
