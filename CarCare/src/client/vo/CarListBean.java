package client.vo;

public class CarListBean {
	
	public CarListBean() {}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}

	public String getBrand() {
		return brand;
	}
	public void setBrand(String brand) {
		this.brand = brand;
	}
	public String getModel() {
		return model;
	}
	public void setModel(String model) {
		this.model = model;
	}

    public int getCarId() {
    	return carId;
    }
    
    public void setCarId(int carId) {
    	this.carId = carId;
    }
	
	int id;
	int carId;
	String brand;
	String model;
	
}