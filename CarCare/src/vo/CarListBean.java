package vo;

import java.util.List;

public class CarListBean {
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	public CarListBean() {
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
    
	public List<CarListOptionBean> getOptions() {
        return options;
    }

    public void setOptions(List<CarListOptionBean> options) {
        this.options = options;
    }
    @Override
    public String toString() {
    	// TODO Auto-generated method stub
    	return "brand:" + brand + "model:" + model;
    }
    
	private List<CarListOptionBean> options;
	
	int id;


	String brand;
	String model;
	
}