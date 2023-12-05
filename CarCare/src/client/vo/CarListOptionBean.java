package client.vo;

public class CarListOptionBean {
  
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	public String getColor() {
		return color;
	}
	public void setColor(String color) {
		this.color = color;
	}
	public int getCc() {
		return cc;
	}
	public void setCc(int cc) {
		this.cc = cc;
	}
	public int getKm() {
		return km;
	}
	public void setKm(int km) {
		this.km = km;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getGrade() {
		return grade;
	}
	public void setGrade(String grade) {
		this.grade = grade;
	}
	public int getCar_id() {
		return car_id;
	}
	public void setCar_id(int car_id) {
		this.car_id = car_id;
	}
	@Override
	public String toString() {
	    return "CarListOptionBean [color=" + color + ", cc=" + cc + ", km=" + km + ", price=" + price + ", grade=" + grade + "]";
	}
	
	int id;

	int car_id;
	String color;
	int cc;
	int km;
	String price;
	String grade;
}
