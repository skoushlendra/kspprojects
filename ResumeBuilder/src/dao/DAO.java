package dao;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class DAO
{
	/*
	 * Can modify user name and password as per Oracle Server Installation.
	 */
	private final String driverClassName = "oracle.jdbc.driver.OracleDriver";	
	private final String connectionUrl = "jdbc:oracle:thin:@localhost:1521:xe";
	
	private final String dbUser = "resumebuilder";
	private final String dbPwd = "resume123";
	
	private static DAO dao = null;
	private Connection con = null;
	private PreparedStatement pstm = null;
	private CallableStatement cstm = null;

	/*
	 * =================================================Restricted Area============================================= 
	 * ======================================Please do not modify below mention code========================================
	 */

	private DAO() throws Exception
	{
		Class.forName(driverClassName);
		con = DriverManager.getConnection(connectionUrl, dbUser, dbPwd);
	}

	public static DAO getInstance() throws Exception
	{
		if (dao == null)
		{
			dao = new DAO();
		}
		return dao;
	}
	
	public void clearInstance()
	{
		DAO.dao = null;
	}

	public Connection getConnection() throws SQLException, Exception
	{
		getInstance();
		return con;
	}

	public PreparedStatement getPSTM(String query) throws SQLException, Exception
	{
		getConnection();
		pstm = con.prepareStatement(query);
		return pstm;
	}

	public CallableStatement getCSTM(String query) throws SQLException, Exception
	{
		getConnection();
		cstm = con.prepareCall(query);
		return cstm;
	}

	public void closeConnection() throws SQLException
	{
		if (con != null)
		{
			con.close();
			con = null;
		}
	}
}