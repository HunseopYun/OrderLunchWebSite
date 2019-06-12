package member.model;

import java.sql.Date;

public class OrderDTO {

	private String user_id;
	private String user_order;
	private Date user_date;



	public OrderDTO() {
		super();
	}


	public OrderDTO(String user_id, String user_order) {
		super();
		this.user_id = user_id;
		this.user_order = user_order;

	}




	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getUser_order() {
		return user_order;
	}
	public void setUser_order(String user_order) {
		this.user_order = user_order;
	}
	public Date getUser_date() {
		return user_date;
	}
	public void setUser_date(Date user_date) {
		this.user_date = user_date;
	}






}
