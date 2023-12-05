package client.vo;

import java.sql.Date;

public class TestDriveBean {
    public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getCenterId() {
		return centerId;
	}

	public void setCenterId(int centerId) {
		this.centerId = centerId;
	}

	public long getKakaouserId() {
		return kakaouserId;
	}

	public void setKakaouserId(long kakaouserId) {
		this.kakaouserId = kakaouserId;
	}

	public int getCarId() {
		return carId;
	}

	public void setCarId(int carId) {
		this.carId = carId;
	}

	public Date getReservationDate() {
		return reservationDate;
	}

	public void setReservationDate(Date reservationDate) {
		this.reservationDate = reservationDate;
	}

	public boolean isState() {
		return state;
	}

	public void setState(boolean state) {
		this.state = state;
	}

	private int id;
    private int centerId;
    private long kakaouserId;
    private int carId;
    private Date reservationDate;
    private boolean state;

    public TestDriveBean(int centerId, long kakaouserId, int caroptionId, Date date) {
        this.centerId = centerId;
        this.kakaouserId = kakaouserId;
        this.carId = caroptionId;
        this.reservationDate = date;
        this.state = false; 
    }
}