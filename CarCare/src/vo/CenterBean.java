package vo;

import java.util.ArrayList;
import java.util.List;

public class CenterBean {

	private int id;
	private String name;
    private String number;
    private String address;

    private List<CarListOptionBean> options;
    private List<Integer> optionsIds;
    
    public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}


    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getNumber() {
        return number;
    }

    public void setNumber(String number) {
        this.number = number;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public List<CarListOptionBean> getOptions() {
        return options;
    }

    public void setOptions(List<CarListOptionBean> options) {
        this.options = options;
        
        optionsIds = new ArrayList<>();
        for (CarListOptionBean option : options) {
            optionsIds.add(option.getId());
        }
    }
    
    public List<Integer> getOptionsIds() {
        return optionsIds;
    }


}