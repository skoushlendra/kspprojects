package com.signup;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.opensymphony.xwork2.ActionSupport;

public class SignupDAO extends ActionSupport
{
	private static final long serialVersionUID = 1L;

	public boolean insertRecord(SignupBean bean)
	{
		boolean success = false;
		try
		{
			Class.forName("oracle.jdbc.drivebean.OracleDRiver");
			Connection con = DriverManager.getConnection("jdbc:oracle:thin:1521:hostname", "username", "password");
			PreparedStatement pstm = con.prepareStatement("insert into tableName values(?,?,?,?,?,?,?) ");
			pstm.setString(1, bean.getfName());
			pstm.setString(2, bean.getlName());
			pstm.setString(3, bean.getEmailId());
			pstm.setString(4, bean.getGender());
			pstm.setString(5, bean.getMobile());
			pstm.setString(6, bean.getUserId());
			pstm.setString(7, bean.getPassword());
			pstm.executeUpdate();
			success = true;
		}
		catch (ClassNotFoundException e)
		{
			e.printStackTrace();
		}
		catch (SQLException e)
		{
			e.printStackTrace();
		}
		catch (NumberFormatException e)
		{
			e.printStackTrace();
		}
		return success;
	}
}
