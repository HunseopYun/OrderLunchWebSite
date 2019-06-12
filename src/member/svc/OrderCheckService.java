package member.svc;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import member.dao.MemberDAO;
import member.model.OrderDTO;

public class OrderCheckService {

	public boolean doCheck(String user_id) {

		MemberDAO dao = new MemberDAO();
		ArrayList list = dao.todayOrderList(user_id);

		if(list.size() == 0) {
			return false;
		}else {
		OrderDTO order = (OrderDTO) list.get(0);
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
		Date orderDate = order.getUser_date();

		String ods = formatter.format(orderDate);

		Date today = new Date();
		String tds = formatter.format(today);
		if(ods.equals(tds)) {
			return true;
		}
			return false;
		}
	}
}
