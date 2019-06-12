package member.svc;

import member.dao.MemberDAO;
import member.model.OrderDTO;

public class OrderService {

	public boolean order(OrderDTO dto) {
		MemberDAO dao = new MemberDAO();
		int insertResult = dao.order(dto);
		if (insertResult > 0) {
			return true;
		}
		return false;
	}

}
