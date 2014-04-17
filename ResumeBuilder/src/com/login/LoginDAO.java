package com.login;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import dao.DAO;

public class LoginDAO
{
	private LoginBean bean;
	
	private String firstName;
	private String lastName;
	private String role;
	
	DAO dao;
	Connection con;
	PreparedStatement pstm;
	CallableStatement cstm;
	ResultSet rs;
	
	public LoginDAO()
	{
		
	}
	
	public LoginDAO(LoginBean bean) throws SQLException, Exception
	{
		this.bean = bean;
		/*dao = DAO.getInstance();
		con = dao.getConnection();*/
	}
	
	public boolean userVerification()
	{
		boolean verifiedUser = false;
		try
		{
			/*String getDBUSERByUserIdSql = "{call getLogin(?,?,?,?,?)}";
			cstm = dao.getCSTM(getDBUSERByUserIdSql);
			
			cstm.setString(1, bean.getUsername());
			cstm.setString(2, bean.getPassword());
			cstm.registerOutParameter(3, java.sql.Types.VARCHAR);
			cstm.registerOutParameter(4, java.sql.Types.VARCHAR);
			cstm.registerOutParameter(5, java.sql.Types.VARCHAR);
			cstm.executeUpdate();
			
			firstName = cstm.getString(3);
			lastName = cstm.getString(4);
			role = cstm.getString(5);*/
			
			bean.setFirstName("Koushlendra Singh");
			bean.setLastName("Parihar");
			bean.setRole("admin");
			bean.setUsername(bean.getUsername());
			
			verifiedUser = true;
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
		return verifiedUser;
	}
	
	public boolean authenticatedUser()
	{
		boolean authenticatedUser = false;
		try
		{
			authenticatedUser = true;
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
		return authenticatedUser;
	}
}
