package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.connection.Mysql;
import com.model.Room;

public class RoomDao {
	public String addRoom(Room room){
		String roomType=room.getRoomType();
		Double price=room.getPrice();
		String description=room.getDescription();
		String location=room.getLocation();
		String facilities=room.getFacilities();
	
		Connection con=null;
		System.out.println();
		try{
			con=Mysql.createConnection();

			String sql="insert into room(roomType,price,description,location,facilities) values(?,?,?,?,?)";

			PreparedStatement  ps = con.prepareStatement(sql);

			ps.setString(1, roomType);
			ps.setDouble(2, price);
			ps.setString(3,description);
			ps.setString(4, location);
			ps.setString(5, facilities);

			int i  = ps.executeUpdate();

			if(i!=0) 
				return "sucess";

		}

		catch(SQLException e){
			System.out.println(e);
		} 

		
		
		
		return "error";
	}

}
