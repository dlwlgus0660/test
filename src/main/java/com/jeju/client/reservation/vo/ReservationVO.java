package com.jeju.client.reservation.vo;


public class ReservationVO {
	private int RSV_NUMBER; // 예약번호
	private String MEM_ID =""; // 아이디
	private String CAR_MODEL_NUMBER; // 차량번호
	private String RSV_NAME=""; // 예약자 명
	private String RSV_CELLPHONE="";//예약자 핸드폰번호
	private String RSV_APPLY_DATE=""; // 예약 신청일 
	private String RSV_STATE="입금대기"; // 예약 상태
	private int RSV_PRICE=0; // 이용 금액
	private String RSV_INSU =""; // 인수일
	private String RSV_BANNAD=""; //반납
	private String CAR_NAME=""; // 차종명
	private String CAR_IMAGE=""; // 차량 이미지
	private String CAR_FUEL=""; //연료 옵션
	private int CAR_PRICE=0; //차량 가격
	private String CAR_INSURANCE=""; //일반 보험
	private String CAR_ADV_INSURANCE=""; //고급 보험 
	
	public int getRSV_NUMBER() {
		return RSV_NUMBER;
	}
	public void setRSV_NUMBER(int rSV_NUMBER) {
		RSV_NUMBER = rSV_NUMBER;
	}
	public String getMEM_ID() {
		return MEM_ID;
	}
	public void setMEM_ID(String mEM_ID) {
		MEM_ID = mEM_ID;
	}
	public String getCAR_MODEL_NUMBER() {
		return CAR_MODEL_NUMBER;
	}
	public void setCAR_MODEL_NUMBER(String cAR_MODEL_NUMBER) {
		CAR_MODEL_NUMBER = cAR_MODEL_NUMBER;
	}
	public String getRSV_NAME() {
		return RSV_NAME;
	}
	public void setRSV_NAME(String rSV_NAME) {
		RSV_NAME = rSV_NAME;
	}
	public String getRSV_APPLY_DATE() {
		return RSV_APPLY_DATE;
	}
	public void setRSV_APPLY_DATE(String rSV_APPLY_DATE) {
		RSV_APPLY_DATE = rSV_APPLY_DATE;
	}
	public String getRSV_STATE() {
		return RSV_STATE;
	}
	public String getRSV_CELLPHONE() {
		return RSV_CELLPHONE;
	}
	public void setRSV_CELLPHONE(String rSV_CELLPHONE) {
		RSV_CELLPHONE = rSV_CELLPHONE;
	}
	public void setRSV_STATE(String rSV_STATE) {
		RSV_STATE = rSV_STATE;
	}
	public int getRSV_PRICE() {
		return RSV_PRICE;
	}
	public void setRSV_PRICE(int rSV_PRICE) {
		RSV_PRICE = rSV_PRICE;
	}
	public String getRSV_INSU() {
		return RSV_INSU;
	}
	public void setRSV_INSU(String rSV_INSU) {
		RSV_INSU = rSV_INSU;
	}
	public String getRSV_BANNAD() {
		return RSV_BANNAD;
	}
	public void setRSV_BANNAD(String rSV_BANNAD) {
		RSV_BANNAD = rSV_BANNAD;
	}
	public String getCAR_NAME() {
		return CAR_NAME;
	}
	public void setCAR_NAME(String cAR_NAME) {
		CAR_NAME = cAR_NAME;
	}
	public String getCAR_IMAGE() {
		return CAR_IMAGE;
	}
	public void setCAR_IMAGE(String cAR_IMAGE) {
		CAR_IMAGE = cAR_IMAGE;
	}
	public String getCAR_FUEL() {
		return CAR_FUEL;
	}
	public void setCAR_FUEL(String cAR_FUEL) {
		CAR_FUEL = cAR_FUEL;
	}
	public int getCAR_PRICE() {
		return CAR_PRICE;
	}
	public void setCAR_PRICE(int cAR_PRICE) {
		CAR_PRICE = cAR_PRICE;
	}
	public String getCAR_INSURANCE() {
		return CAR_INSURANCE;
	}
	public void setCAR_INSURANCE(String cAR_INSURANCE) {
		CAR_INSURANCE = cAR_INSURANCE;
	}
	public String getCAR_ADV_INSURANCE() {
		return CAR_ADV_INSURANCE;
	}
	public void setCAR_ADV_INSURANCE(String cAR_ADV_INSURANCE) {
		CAR_ADV_INSURANCE = cAR_ADV_INSURANCE;
	}
	
	
}