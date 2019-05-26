package main;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UserDao extends DBAccess{
	public String[] getUser(String id,String pass) {
		String sql = "select user_id,user_name,dept_id,post_id from user where user_id = ? and pass = ?";

		String[] name = new String[4];
		ResultSet rs = null;

		try {
			connect();
			PreparedStatement ps = getConnection().prepareStatement(sql);
			ps.setString(1,id);
			ps.setString(2,pass);
			rs = ps.executeQuery();

			while(rs.next()) {
				name[0]=rs.getString("user_id");
				name[1]=rs.getString("user_name");
				name[2]=rs.getString("dept_id");
				name[3]=rs.getString("post_id");

			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			disconnect();
		}

		return name;
	}

	public String[] getPost(String dept,String post) {
		String sql = "select dept.dept_name,dept_post.post_name from dept left join dept_post on dept.dept_id = dept_post.dept_id "
				+ "where dept_post.dept_id= ? and dept_post.post_id = ?";

		String[] name2 = new String[2];
		ResultSet rs = null;

		try {
			connect();
			PreparedStatement ps = getConnection().prepareStatement(sql);
			ps.setString(1,dept);
			ps.setString(2,post);
			rs = ps.executeQuery();

			while(rs.next()) {
				name2[0]=rs.getString("dept.dept_name");
				name2[1]=rs.getString("dept_post.post_name");
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			disconnect();
		}

		return name2;
	}
}