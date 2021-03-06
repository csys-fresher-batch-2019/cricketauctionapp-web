package com.playingeleven;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.TimeZone;

import logger.Logger;

public class DbConnection {
	private static final Logger log = Logger.getInstance();

	/*
	 * public static Connection getConnection() throws SQLException {
	 * 
	 * Connection connection = null; try { String server = "cslh2009";
	 * Class.forName("oracle.jdbc.driver.OracleDriver"); String url =
	 * "jdbc:oracle:thin:@" + server + ":1521:XE"; connection =
	 * DriverManager.getConnection(url, "system", "asdf12fdsa");
	 * log.getInput(connection); } catch (ClassNotFoundException e) { throw new
	 * RuntimeException("Driver class not found"); } catch (SQLException e) {
	 * 
	 * throw new RuntimeException("invalid DB credentials" + e.getMessage()); }
	 * return connection;
	 * 
	 * }
	 */

	public static Connection getConnection() throws SQLException {

		TimeZone timeZone = TimeZone.getTimeZone("Asia/Kolkata");
		TimeZone.setDefault(timeZone);
		Connection connection = null;
		try {
			String server = "13.235.147.120";
			Class.forName("oracle.jdbc.driver.OracleDriver");
			String url = "jdbc:oracle:thin:@" + server + ":1521:XE";
			connection = DriverManager.getConnection(url, "sundar", "sundar");
			log.getInput(connection);
		} catch (ClassNotFoundException e) {
			throw new RuntimeException("Driver class not found");
		} catch (SQLException e) {

			throw new RuntimeException("invalid DB credentials" + e.getMessage());
		}
		return connection;

	}
}
