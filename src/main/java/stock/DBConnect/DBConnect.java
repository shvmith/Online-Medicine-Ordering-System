package stock.DBConnect;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect {
	private static String url = "jdbc:mysql://localhost:3306/online_stock_management_system";
	private static String username = "root";
	private static String password = "0050";
	private static Connection con;

	public static Connection getConnection() {

		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection(url, username, password);
		} catch (Exception e) {
			System.out.println("DB not Success");
		}
		return con;
	}

}

