package DB;
import java.sql.*;
public class DBConn {
	
	static final String JDBC = "com.mysql.jdbc.Driver";
	static final String DB_URL = "jdbc:mysql://localhost:3306/ourbbs";
	static final String USER = "root";
	static final String PASS = "";
	
	public static ResultSet executeQ(String sql) throws SQLException, ClassNotFoundException{
		
		Class.forName(JDBC);
		Connection conn = DriverManager.getConnection(DB_URL,USER,PASS);
		Statement stmt = conn.createStatement();
		
		ResultSet rs = stmt.executeQuery(sql);
		
		return rs;
	}

	public static void executeU(String sql) throws SQLException, ClassNotFoundException{
		
		Class.forName(JDBC);
		Connection conn = DriverManager.getConnection(DB_URL,USER,PASS);
		Statement stmt = conn.createStatement();
		
		stmt.executeUpdate(sql);
		
	}
	public static void main(String[] args){	
	}		
}