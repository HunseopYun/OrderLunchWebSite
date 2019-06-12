package member.model;

public class MemberDTO {
	private String user_id;
	private String user_name;
	private String user_order;
	private String user_date;
	private String user_attach;
	private String user_title;
	private String user_content;


	public MemberDTO(String user_id, String user_name) {
		super();
		this.user_id = user_id;
		this.user_name = user_name;

	}


	public String getUser_id() {
		return user_id;
	}


	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}


	public String getUser_name() {
		return user_name;
	}


	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}


	public String getUser_order() {
		return user_order;
	}


	public void setUser_order(String user_order) {
		this.user_order = user_order;
	}


	public String getUser_date() {
		return user_date;
	}


	public void setUser_date(String user_date) {
		this.user_date = user_date;
	}


	public String getUser_attach() {
		return user_attach;
	}


	public void setUser_attach(String user_attach) {
		this.user_attach = user_attach;
	}


	public String getUser_title() {
		return user_title;
	}


	public void setUser_title(String user_title) {
		this.user_title = user_title;
	}


	public String getUser_content() {
		return user_content;
	}


	public void setUser_content(String user_content) {
		this.user_content = user_content;
	}





}
