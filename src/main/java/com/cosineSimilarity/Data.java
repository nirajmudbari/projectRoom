package com.cosineSimilarity;

public class Data {
	
	private int id;
    private String roomType;
    private String[] facilities;

    public Data() {
    }

    public Data(String roomType, String[] facilities) {
        this.roomType = roomType;
        this.facilities = facilities;

    }

    public String getRoomType() {
        return roomType;
    }
    

    public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public void setRoomType(String roomType) {
        this.roomType = roomType;
    }

    public String[] getFacilities() {
        return facilities;
    }

    public void setFacilities(String[] facilities) {
        this.facilities = facilities;
    }

    @Override
    public String toString() {
        return "Data{" +
                "roomType='" + roomType + '\'' +
                ", facilities='" + facilities + '\'' +
                '}'+"\n";
    }
}