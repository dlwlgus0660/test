package com.jeju.admin.car.reservation.vo;

import com.jeju.admin.common.vo.CommonVO;

public class AdminCarReservationVO extends CommonVO{
	private int ren_number = 0; //대여번호
	private int rsv_number = 0; //예약번호
	private String mem_id = "";
	private String rsv_insu = "";
	private String rsv_bannad = "";
	private String rsv_state = "";
	private String car_name = "";
	private String rsv_name = "";
	private String rsv_cellphone = "";
	private String ren_take_date = "";
	private String ren_return_date = "";
	private int ren_add_price = 0;
	private String ren_overtime = "";
	private String ren_license_number = "";
	private String ren_car_number = "";
	public int getRen_number() {
		return ren_number;
	}
	public void setRen_number(int ren_number) {
		this.ren_number = ren_number;
	}
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
	public String getRsv_insu() {
		return rsv_insu;
	}
	public void setRsv_insu(String rsv_insu) {
		this.rsv_insu = rsv_insu;
	}
	public String getRsv_bannad() {
		return rsv_bannad;
	}
	public void setRsv_bannad(String rsv_bannad) {
		this.rsv_bannad = rsv_bannad;
	}
	public String getRsv_state() {
		return rsv_state;
	}
	public void setRsv_state(String rsv_state) {
		this.rsv_state = rsv_state;
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
	public String getRsv_cellphone() {
		return rsv_cellphone;
	}
	public void setRsv_cellphone(String rsv_cellphone) {
		this.rsv_cellphone = rsv_cellphone;
	}
	public String getRen_take_date() {
		return ren_take_date;
	}
	public void setRen_take_date(String ren_take_date) {
		this.ren_take_date = ren_take_date;
	}
	public String getRen_return_date() {
		return ren_return_date;
	}
	public void setRen_return_date(String ren_return_date) {
		this.ren_return_date = ren_return_date;
	}
	public int getRen_add_price() {
		return ren_add_price;
	}
	public void setRen_add_price(int ren_add_price) {
		this.ren_add_price = ren_add_price;
	}
	public String getRen_overtime() {
		return ren_overtime;
	}
	public void setRen_overtime(String ren_overtime) {
		this.ren_overtime = ren_overtime;
	}
	public String getRen_license_number() {
		return ren_license_number;
	}
	public void setRen_license_number(String ren_license_number) {
		this.ren_license_number = ren_license_number;
	}
	public String getRen_car_number() {
		return ren_car_number;
	}
	public void setRen_car_number(String ren_car_number) {
		this.ren_car_number = ren_car_number;
	}
	
	
}
