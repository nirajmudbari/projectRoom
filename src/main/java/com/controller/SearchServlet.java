package com.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.connection.Mysql;
import com.cosineSimilarity.Data;
import com.cosineSimilarity.DocumentParser;

@WebServlet("/search.do")
public class SearchServlet extends HttpServlet {
	
	public SearchServlet(){
		
	}
	
	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
    	String roomType=request.getParameter("roomType");
    	Double priceFrom=Double.parseDouble(request.getParameter("priceFrom"));
    	Double priceTo=Double.parseDouble(request.getParameter("priceTo"));
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
    	
    	
    	Data query1=new Data();
    	query1.setFacilities(facilities.split(","));
    	query1.setRoomType(roomType);
    	Connection con=null;

    	


    	try
    	{
    		con=Mysql.createConnection();
    		String query = "SELECT * from room";
    		Statement statement=con.createStatement();
    		ResultSet resultSet;
    		resultSet=statement.executeQuery(query);

    		List<Data> datas = new ArrayList<Data>();

    		System.out.println("details");
    		while (resultSet.next()){
    			Data data=new Data();
    			int id=resultSet.getInt("id");
    			String rType=resultSet.getString("roomType");
    			String price=resultSet.getString("price");
    			String description=resultSet.getString("description");
    			String location=resultSet.getString("location");
    			String rfacilities=resultSet.getString("facilities");
    			System.out.println(id+" "+rType+" "+price+" "+description+" "+location+" "+rfacilities);
    			
    			data.setId(id);
    			data.setRoomType(rType);
    			data.setFacilities(rfacilities.split(","));
    			datas.add(data);




    		}
    		System.out.println("list :"+datas.toString());

    		con.close();

    		for(Data data:datas){
    			DocumentParser dp = new DocumentParser();
    			dp.formatData(data, query1);
    			dp.tfIdfCalculator(); 
    			dp.getCosineSimilarity(); 


    		}
    	}
    	catch (Exception e)
    	{
    		System.err.println("Got an exception! ");
    		System.err.println(e.getMessage());
    	}
    	
	}
	private String  addFaciilities(String facilities, String facility) {
		if(!facilities.isEmpty()) {
			facilities +=",";
		}
		facilities+=facility;
		return facilities;
	
	}
	
	


}
	
    	

	
	
	
    
	


