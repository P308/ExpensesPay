package login;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UserDao extends DBAccess{
	public String[] getUser(String id,String pass) {
		String sql = "select user_name,auth_no from user where user_id = ? and pass = ?";

		String[] name = new String[2];
		ResultSet rs = null;

		try {
			connect();
			PreparedStatement ps = getConnection().prepareStatement(sql);
			ps.setString(1,id);
			ps.setString(2,pass);
			rs = ps.executeQuery();

			while(rs.next()) {
				name[0]=rs.getString("user_name");
				name[1]=rs.getString("auth_no");
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			disconnect();
		}

		return name;
	}
}