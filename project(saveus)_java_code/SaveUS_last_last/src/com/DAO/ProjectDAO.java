package com.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.VO.ProjectVO;

public class ProjectDAO {
	Connection conn = null;
	PreparedStatement pst = null;
	ResultSet rs = null;

	int cnt = 0;

	public void Connect() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			String url = "jdbc:oracle:thin:@127.0.0.1:1521:xe";
			String dbid = "hr";
			String dbpw = "hr";
			conn = DriverManager.getConnection(url, dbid, dbpw);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public void close() {
		try {
			if (rs != null)
				rs.close();
			if (pst != null)
				pst.close();
			if (conn != null)
				conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public int Join(String id, String pw, String name, String gender, String birth, String email, String tel,
			String addr) {

		try {
			Connect();

			String sql = "insert into SU_member values(?,?,?,?,?,?,?,?,0,sysdate)";
			pst = conn.prepareStatement(sql);
			pst.setString(1, id);
			pst.setString(2, pw);
			pst.setString(3, name);
			pst.setString(4, gender);
			pst.setString(5, birth);
			pst.setString(6, email);
			pst.setString(7, tel);
			pst.setString(8, addr);

			cnt = pst.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return cnt;
	}// Join 메소드 끝

	public int Delete(String id) {

		try {
			Connect();

			String sql = "delete from SU_member where id=?";
			pst = conn.prepareStatement(sql);
			pst.setString(1, id);

			cnt = pst.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return cnt;
	}// Delete 메소드 끝

	public int Update(String pw, String email, String tel, String addr, String getId) {

		try {
			Connect();

			String sql = "update SU_member set pw=?, email=?, tel=?, addr=? where id=?";
			pst = conn.prepareStatement(sql);
			pst.setString(1, pw);
			pst.setString(2, email);
			pst.setString(3, tel);
			pst.setString(4, addr);
			pst.setString(5, getId);

			cnt = pst.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return cnt;
	}// Update 메소드 끝

	public int UpPoint(String id) {

		try {
			Connect();

			String sql = "update SU_member set point=point+10 where id=?";
			pst = conn.prepareStatement(sql);
			pst.setString(1, id);

			cnt = pst.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return cnt;
	}// Update 메소드 끝

	public boolean Login(String id, String pw) {

		boolean check = true;

		try {
			Connect();

			String sql = "select * from SU_member where id=? and pw=?";
			pst = conn.prepareStatement(sql);
			pst.setString(1, id);
			pst.setString(2, pw);

			rs = pst.executeQuery();

			if (rs.next()) {
				check = true;
			} else {
				check = false;
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return check;

	}// Login 메소드 끝

	public boolean idCheck(String id) {

		boolean check = true;

		try {
			Connect();

			String sql = "select * from SU_member where id=? ";
			pst = conn.prepareStatement(sql);
			pst.setString(1, id);

			rs = pst.executeQuery();

			if (rs.next()) {
				check = true;

			} else {
				check = false;
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return check;

	}

	public ArrayList<ProjectVO> memberSelect() {

		ProjectVO vo = null;
		ArrayList<ProjectVO> list = new ArrayList<ProjectVO>();

		try {
			Connect();

			String sql = "select * from SU_member where id!='admin' order by join_insert desc";
			pst = conn.prepareStatement(sql);

			rs = pst.executeQuery();

			while (rs.next()) {
				String id = rs.getString(1);
				String pw = rs.getString(2);
				String name = rs.getString(3);
				String gender = rs.getString(4);
				String birth = rs.getString(5);
				String email = rs.getString(6);
				String tel = rs.getString(7);
				String addr = rs.getString(8);
				int point = rs.getInt(9);
				String date = rs.getString(10);

				vo = new ProjectVO(id, pw, name, gender, birth, email, tel, addr, point, date);

				list.add(vo);

			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return list;
	}

	public ProjectVO myInfo(String id) {

		ProjectVO vo = null;

		try {
			Connect();

			String sql = "select * from SU_member where id=?";
			pst = conn.prepareStatement(sql);
			pst.setString(1, id);

			rs = pst.executeQuery();

			while (rs.next()) {
				id = rs.getString(1);
				String pw = rs.getString(2);
				String name = rs.getString(3);
				String gender = rs.getString(4);
				String birth = rs.getString(5);
				String email = rs.getString(6);
				String tel = rs.getString(7);
				String addr = rs.getString(8);
				int point = rs.getInt(9);
				String date = rs.getString(10);

				vo = new ProjectVO(id, pw, name, gender, birth, email, tel, addr, point, date);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return vo;
	}

	public int Donate(String point, String id) {

		try {
			Connect();

			String sql = "update SU_member set point=point-? where id=?";
			pst = conn.prepareStatement(sql);
			pst.setString(1, point);
			pst.setString(2, id);

			cnt = pst.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return cnt;
	}// Update 메소드 끝

	public int manage(String point,String id) {

		try {
			Connect();

			String sql = "update SU_member set point=point+? where id=?";
			pst = conn.prepareStatement(sql);
			pst.setString(1, point);
			pst.setString(2, id);

			cnt = pst.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return cnt;
	}// Update 메소드 끝
}
