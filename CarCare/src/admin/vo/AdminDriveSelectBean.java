package admin.vo;


import java.sql.Date;

public class AdminDriveSelectBean {
	public AdminDriveSelectBean() {}
	//UpdateActionConst

	public AdminDriveSelectBean(int id, int carId, Date date, String model, String name, States state) {
		super();
		this.id = id;
		this.carId = carId;
		this.date = date;
		this.model = model;
		this.name = name;
		this.state = state;
	}
	public AdminDriveSelectBean(int id, Date date, String model, String name, int cc, String color, String grade,
			int km, double price, States state) {
		this.id = id;
		this.date = date;
		this.model = model;
		this.name = name;
		this.cc = cc;
		this.color = color;
		this.grade = grade;
		this.km = km;
		this.price = price;
		this.state = state;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public String getModel() {
		return model;
	}
	public void setModel(String model) {
		this.model = model;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getCc() {
		return cc;
	}
	public void setCc(int cc) {
		this.cc = cc;
	}
	public String getColor() {
		return color;
	}
	public void setColor(String color) {
		this.color = color;
	}
	public String getGrade() {
		return grade;
	}
	public void setGrade(String grade) {
		this.grade = grade;
	}
	public int getKm() {
		return km;
	}
	public void setKm(int km) {
		this.km = km;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	
	public int getCarId() {
		return carId;
	}
	public void setCarId(int carId) {
		this.carId = carId;
	}
	
	public States getState() {
		return state;
	}
	
	public void setState(States state) {
		this.state = state;
	}

	private int id;
	private int carId;
	private Date date;
	private String model;
	private String name;
	private int cc;
	private String color;
	private String grade;
	private int km;
	private double price;
	private States state;
	

	public enum States {
	    RESERVED(true),
	    FAILED(false),
	    ;
	
	    private final boolean value;
	
	    States(boolean value) {
	        this.value = value;
	    }
	
	    public boolean getValue() {
	        return value;
	    }
	}
}
