package client.vo;

public class ActionForward {
	
	public ActionForward(String path, boolean redirect) {
		this.path = path;
		this.redirect = redirect;
	};
	
	public String getPath() {
		return path;
	}
	public boolean isRedirect() {
		return redirect;
	}

	private final String path;	
    private final boolean redirect;
	

}
