package vo;

import java.sql.Date;

public class TestDriveBean {
    private int id;
    private int centerId;
    private int userId;
    private int carId;
    private Date reservationDate;
    private boolean state;

    public TestDriveBean(int centerId, int userId, int carId, Date reservationDate) {
        this.centerId = centerId;
        this.userId = userId;
        this.carId = carId;
        this.reservationDate = reservationDate;
        this.state = false; 
    }

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

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
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
}