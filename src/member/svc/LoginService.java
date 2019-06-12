package member.svc;

import member.dao.MemberDAO;
import member.model.MemberDTO;

public class LoginService {

	public MemberDTO loginUser(String user_id, String user_name) {

		MemberDAO dao = new MemberDAO();
		MemberDTO dto = dao.login(user_id, user_name);
		return dto;
	}



}