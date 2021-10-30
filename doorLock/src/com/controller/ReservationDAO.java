package com.controller;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.websocket.Session;

import org.apache.jasper.tagplugins.jstl.core.Out;

import com.VO.ReservationVO;
import com.VO.hostVO;
import com.VO.userVO;

public class ReservationDAO {
	Connection conn = null;
	PreparedStatement psmt = null;
	ResultSet rs = null;
	int cnt = 0;
	ReservationVO vo = null;
	boolean check = false;
	ArrayList<ReservationVO> al = null;

	public void connection() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			String url = "jdbc:oracle:thin:@project-db-stu.ddns.net:1524:xe";
			String db_id = "campus_b_4_1025";
			String db_pw = "smhrd4";
			conn = DriverManager.getConnection(url, db_id, db_pw);

		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("연결실패");
		}

	}

	public void close() {
		try {
			if (rs != null) {
				rs.close();
			}
			if (psmt != null) {
				psmt.close();
			}
			if (conn != null) {
				conn.close();
			}
		} catch (Exception e2) {
			e2.printStackTrace();

		}
	}
	
	public void Reservation(String reservation_num,String room_num,String hotel_uid,String customer_id,
							String checkin_date,String checkout_date,String is_checkin,
							String reservation_key,String num_of_people,String status) {
		try {
			connection();
			String sql = "insert into reservations values(?,?,?,?,?,?,null,null,?,?)";
			psmt = conn.prepareStatement(sql);
			
			psmt.setString(1, reservation_num);
			psmt.setString(2, room_num);
			psmt.setString(3, hotel_uid);
			psmt.setString(4, customer_id);
			psmt.setString(5, checkin_date);
			psmt.setString(6, checkout_date);
			psmt.setString(7, num_of_people);
			psmt.setString(8, status);
			psmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
			
		}finally {
			close();
		}
	}
	
	
public ArrayList<ReservationVO> Reservation_info(String customer_id) {
		
		al = new ArrayList<ReservationVO>();
		
		try {
			connection();

			String sql = "select * from reservations where customer_id = ?";

			
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, customer_id);
			
			rs = psmt.executeQuery();
			
			while (rs.next()) {

				String reservation_num = rs.getString(1);
				String room_num = rs.getString(2);
				String hotel_uid = rs.getString(3);
				String customer_id1= rs.getString(4);
				String checkin_date = rs.getString(5);
				String checkout_date = rs.getString(6);
				String is_checkin = rs.getString(7);
				String reservation_key = rs.getString(8);
				String num_of_people = rs.getString(9);
				String status = rs.getString(10);

				al.add(new ReservationVO(reservation_num, room_num, hotel_uid, customer_id, checkin_date, checkout_date, is_checkin, reservation_key, num_of_people, status) );
			}
		} catch (Exception e) {
			System.out.println("조회실패!");
			e.printStackTrace();
		} finally {
			close();
		}
		
		return al;
	}
	
	
}
