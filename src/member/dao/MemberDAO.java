package member.dao;

import static member.db.JdbcUtils.*;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import member.model.MemberDTO;
import member.model.OrderDTO;

public class MemberDAO {


	public MemberDTO login(String user_id, String user_name) {
		String sql = "select * from member where user_id=? and user_name=?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		MemberDTO dto = null;

		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, user_id);
			pstmt.setString(2, user_name);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				dto = new MemberDTO(rs.getString("user_id"), rs.getString("user_name"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(conn, pstmt, rs);
		}
		return dto;
	}



	public int insert(MemberDTO dto) {
		String sql = "insert into member values(?,?)";
		Connection conn = null;
		PreparedStatement pstmt = null;
		int insertResult = 0;
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.getUser_id());
			pstmt.setString(2, dto.getUser_name());
			insertResult = pstmt.executeUpdate();
			if (insertResult > 0) {
				commit(conn);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(conn, pstmt, null);
		}
		return insertResult;
	}



	public int order(OrderDTO dto) {
		String sql = "insert into orderlist values(?,?,  sysdate)";
		Connection conn = null;
		PreparedStatement pstmt = null;
		int insertResult = 0;
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.getUser_id());
			pstmt.setString(2, dto.getUser_order());
			insertResult = pstmt.executeUpdate();
			if (insertResult > 0) {
				commit(conn);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(conn, pstmt, null);
		}

		return insertResult;
	}



	 public ArrayList<OrderDTO> orderlist(String id){
	        ArrayList<OrderDTO> list = new ArrayList<OrderDTO>();
	        Connection con = null;
	        PreparedStatement pstmt = null;
	        ResultSet rs = null;
	        String sql = "select * from orderlist where user_id=? and trunc(order_date) != trunc(CURRENT_DATE)order by  order_date desc";
	        try {
	            con = getConnection();
	            pstmt = con.prepareStatement(sql);
	            pstmt.setString(1, id);
	            rs = pstmt.executeQuery();
	            while(rs.next()) {
	                OrderDTO result = new OrderDTO();
	                result.setUser_id(rs.getString("user_id"));
	                result.setUser_order(rs.getString("user_order"));
	                result.setUser_date(rs.getDate("order_date"));
	                list.add(result);
	            }

	        } catch (Exception e) {
	            e.printStackTrace();
	        }finally {
	        	close(con, pstmt, null);
	        }

	        return list;
	    }

	 public ArrayList<OrderDTO> todayOrderList(String id){
	        ArrayList<OrderDTO> list = new ArrayList<OrderDTO>();
	        Connection con = null;
	        PreparedStatement pstmt = null;
	        ResultSet rs = null;
	        String sql = "select * from orderlist where user_id=? and trunc(order_date) = trunc(CURRENT_DATE)";
	        try {
	            con = getConnection();
	            pstmt = con.prepareStatement(sql);
	            pstmt.setString(1, id);
	            rs = pstmt.executeQuery();
	            while(rs.next()) {
	                OrderDTO result = new OrderDTO();
	                result.setUser_id(rs.getString("user_id"));
	                result.setUser_order(rs.getString("user_order"));
	                result.setUser_date(rs.getDate("order_date"));
	                list.add(result);
	            }

	        } catch (Exception e) {
	            e.printStackTrace();
	        }finally {
	        	close(con, pstmt, null);
	        }

	        return list;
	    }



	public int cancle(String user_id, String order_date) {
		String sql = "delete from orderlist where user_id=? and trunc(order_date) = ?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		int removeResult = 0;
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, user_id);
			pstmt.setString(2, order_date);
			removeResult = pstmt.executeUpdate();
			if (removeResult > 0) {
				commit(conn);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(conn, pstmt, null);
		}

		return removeResult;
	}


}
