package member.svc;

import member.dao.MemberDAO;

public class CancleService {

	public boolean doCheck(String user_id, String order_date) {
			MemberDAO dao = new MemberDAO();

			int result = dao.cancle(user_id, order_date);

			if(result > 0) {
				return true;
			}else {
				return false;
			}
	}

}
