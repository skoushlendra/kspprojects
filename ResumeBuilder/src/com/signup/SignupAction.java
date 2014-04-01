package com.signup;

import com.login.LoginDAO;
import com.opensymphony.xwork2.ActionSupport;

public class SignupAction extends ActionSupport
{
	private static final long serialVersionUID = 1L;

	private String fName;
	private String lName;
	private String emailId;
	private String gender;
	private String mobile;
	private String userId;
	private String password;
	private String conformPassword;

	public String getfName()
	{
		return fName;
	}

	public void setfName(String fName)
	{
		this.fName = fName;
	}

	public String getlName()
	{
		return lName;
	}

	public void setlName(String lName)
	{
		this.lName = lName;
	}

	public String getEmailId()
	{
		return emailId;
	}

	public void setEmailId(String emailId)
	{
		this.emailId = emailId;
	}

	public String getGender()
	{
		return gender;
	}

	public void setGender(String gender)
	{
		this.gender = gender;
	}

	public String getMobile()
	{
		return mobile;
	}

	public void setMobile(String mobile)
	{
		this.mobile = mobile;
	}

	public String getUserId()
	{
		return userId;
	}

	public void setUserId(String userId)
	{
		this.userId = userId;
	}

	public String getPassword()
	{
		return password;
	}

	public void setPassword(String password)
	{
		this.password = password;
	}

	public String getConformPassword()
	{
		return conformPassword;
	}

	public void setConformPassword(String conformPassword)
	{
		this.conformPassword = conformPassword;
	}

	public String execute()
	{
		String result = ERROR;
		SignupBean bean = new SignupBean(fName, lName, emailId, gender, mobile, userId, password);
		SignupDAO dao = new SignupDAO();
		if (dao.insertRecord(bean))
		{
			result = SUCCESS;
		}
		return result;
	}
	
	public void validate()
	{
		LoginDAO loginDAO = new LoginDAO();
		if (loginDAO.authenticatedUser())
		{
			addActionError("Userid ");
		}
	}
}
