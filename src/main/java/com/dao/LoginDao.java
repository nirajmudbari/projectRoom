package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.connection.Mysql;
import com.model.LoginBean;

public class LoginDao {
	public static String authenticateUser(LoginBean loginBean) {

		String email = loginBean.getEmail();
		String pass = loginBean.getPassword();
		System.out.println("nhdsjhdg" + email);

		String dbemail = null;
		String dbpassword = null;

		Connection conn = null;

		try {
			conn = Mysql.createConnection(); // establishing connection

			String sqll = "select * from userbean where email=? and password=?";
			PreparedStatement pss = conn.prepareStatement(sqll);

			pss.setString(1, email);
			pss.setString(2, pass);

			java.sql.ResultSet rss = pss.executeQuery();

			while (rss.next()) {
				dbemail = rss.getString(5);
				dbpassword = rss.getString(7);

				// int id=rs.getInt("id");
				// Id = Integer.toString(id);
				// loginBean.setId(id);
				// System.out.println("shekharR"+id);
				System.out.println("nhdsj" + dbemail);

			}
			if (email.equals(dbemail) && pass.equals(dbpassword)) {
				return "User";
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return "error"; // Just returning appropriate message otherwise

	}
}
