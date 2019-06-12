package member.svc;

import member.dao.MemberDAO;
import member.model.MemberDTO;

public class RegisterService {
	
	public boolean register(MemberDTO dto) {
		MemberDAO dao = new MemberDAO();
		int insertResult = dao.insert(dto);
		if (insertResult > 0) {
			return true;
		}
		return false;
	}

}