package com.signup;

import com.opensymphony.xwork2.ActionSupport;

public class SignupBean extends ActionSupport
{
	private static final long serialVersionUID = 1L;

	private String fName;
	private String lName;
	private String emailId;
	private String gender;
	private String mobile;
	private String userId;
	private String password;

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

	public SignupBean(String fName, String lName, String emailId, String gender, String mobile, String userId, String password)
	{
		this.fName = fName;
		this.lName = lName;
		this.emailId = emailId;
		this.gender = gender;
		this.mobile = mobile;
		this.userId = userId;
		this.password = password;

	}
}
