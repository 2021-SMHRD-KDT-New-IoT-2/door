package com.VO;

public class ReservationVO {
	private String reservation_num;
	private String room_num;
	private String hotel_uid;
	private String customer_id;
	private String checkin_date; 
	private String checkout_date; 
	private String is_checkin; 
	private String reservation_key; 
	private String num_of_people; 
	private String status;
	
	public ReservationVO() {}

	public ReservationVO(String reservation_num, String room_num, String hotel_uid, String customer_id,
			String checkin_date, String checkout_date, String is_checkin, String reservation_key, String num_of_people,
			String status) {
		super();
		this.reservation_num = reservation_num;
		this.room_num = room_num;
		this.hotel_uid = hotel_uid;
		this.customer_id = customer_id;
		this.checkin_date = checkin_date;
		this.checkout_date = checkout_date;
		this.is_checkin = is_checkin;
		this.reservation_key = reservation_key;
		this.num_of_people = num_of_people;
		this.status = status;
	}



	public String getReservation_num() {
		return reservation_num;
	}



	public void setReservation_num(String reservation_num) {
		this.reservation_num = reservation_num;
	}



	public String getRoom_num() {
		return room_num;
	}



	public void setRoom_num(String room_num) {
		this.room_num = room_num;
	}



	public String getHotel_uid() {
		return hotel_uid;
	}



	public void setHotel_uid(String hotel_uid) {
		this.hotel_uid = hotel_uid;
	}



	public String getCustomer_id() {
		return customer_id;
	}



	public void setCustomer_id(String customer_id) {
		this.customer_id = customer_id;
	}



	public String getCheckin_date() {
		return checkin_date;
	}



	public void setCheckin_date(String checkin_date) {
		this.checkin_date = checkin_date;
	}



	public String getCheckout_date() {
		return checkout_date;
	}



	public void setCheckout_date(String checkout_date) {
		this.checkout_date = checkout_date;
	}



	public String getIs_checkin() {
		return is_checkin;
	}



	public void setIs_checkin(String is_checkin) {
		this.is_checkin = is_checkin;
	}



	public String getReservation_key() {
		return reservation_key;
	}



	public void setReservation_key(String reservation_key) {
		this.reservation_key = reservation_key;
	}



	public String getNum_of_people() {
		return num_of_people;
	}



	public void setNum_of_people(String num_of_people) {
		this.num_of_people = num_of_people;
	}



	public String getStatus() {
		return status;
	}



	public void setStatus(String status) {
		this.status = status;
	}


}
