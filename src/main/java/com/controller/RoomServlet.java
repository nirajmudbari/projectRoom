package com.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.RoomDao;
import com.dao.SignUpDao;
import com.model.Room;
import com.model.UserBean;

@WebServlet("/addRoom.do")
public class RoomServlet extends HttpServlet{
	public RoomServlet(){
		
	}
	
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
    	String roomType=request.getParameter("roomType");
    	Double price=Double.parseDouble(request.getParameter("price"));
    	String description=request.getParameter("description");
    	String location=request.getParameter("location");
    	String facilities = "";
    	String water = request.getParameter("water_facilities");
    	if(water != null) {
    		facilities = addFaciilities(facilities, water);
    	}
    	String electricity = request.getParameter("electricity_facilities"); 
    	if(electricity != null) {
    		facilities = addFaciilities(facilities, electricity);
    	}
    	 
    	String internet = request.getParameter("internet_facilities"); 
    	if(internet != null) {
    		facilities = addFaciilities(facilities, internet);
    	}
    	 
    	String parking = request.getParameter("parking_facilities"); 
    	if(parking != null) {
    		facilities = addFaciilities(facilities, parking);
    	}
    	   	
    
    	Room room = new Room();
   
    	room.setRoomType(roomType);
    	room.setPrice(price);
    	room.setDescription(description);
    	room.setLocation(location);
    	room.setFacilities(facilities);
    	
    	RoomDao roomDao=new RoomDao();
    	roomDao.addRoom(room);
    	
    	
    	
	}
	private String  addFaciilities(String facilities, String facility) {
		if(!facilities.isEmpty()) {
			facilities +=",";
		}
		facilities+=facility;
		return facilities;
	}
}
