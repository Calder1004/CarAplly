package client.vo;

import java.sql.Date;
import java.util.Objects;

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

	public int getCarOptionId() {
		return carOptionId;
	}

	public void setCarOptionId(int carOptionId) {
		this.carOptionId = carOptionId;
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
    private int carOptionId;
    private Date reservationDate;
    private boolean state;

    public TestDriveBean(int centerId, long kakaouserId, int carOptionId, Date date) {
        this.centerId = Objects.requireNonNull(centerId);
        this.kakaouserId = Objects.requireNonNull(kakaouserId);
        this.carOptionId = Objects.requireNonNull(carOptionId);
        this.reservationDate = date;
        this.state = false; 
    }

	@Override
	public boolean equals(Object obj) {
		// TODO Auto-generated method stub
		return super.equals(obj);
	}
}