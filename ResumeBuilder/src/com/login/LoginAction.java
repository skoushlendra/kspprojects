package com.login;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;

import org.apache.struts2.dispatcher.SessionMap;
import org.apache.struts2.interceptor.SessionAware;

import utility.ResumeBuilderValidation;

import com.opensymphony.xwork2.ActionSupport;

public class LoginAction extends ActionSupport implements SessionAware
{
	private static final long serialVersionUID = 1L;
	
	private String username;
	private String password;
	
	private LoginBean bean;
	private LoginDAO dao;
	
	private ArrayList<String> userDataList = new ArrayList<String>();
	private SessionMap<String, Object> sessionMap;
	
	public String getUsername()
	{
		return username;
	}
	
	public void setUsername(String username)
	{
		this.username = username;
	}
	
	public String getPassword()
	{
		return password;
	}
	
	public void setPassword(String password)
	{
		this.password = password;
	}
	
	public String execute() throws Exception
	{
		String result=SUCCESS;

		userDataList.add(bean.getUsername());
		userDataList.add(bean.getRole());
		userDataList.add(bean.getFirstName());
		userDataList.add(bean.getLastName());
		userDataList.add(bean.getFirstName()+" "+bean.getLastName());
		
		sessionMap.put("userData", userDataList);
		sessionMap.put("status", "true");
		System.out.println("success");
		return result;
	}
	
	public void validate()
	{
		try
		{
			if(validateFieldErrors())
			{
				bean = new LoginBean(username, password);
				dao = new LoginDAO(bean);
				if(dao.authenticatedUser())
				{
					if(dao.userVerification())
					{
						addActionMessage("Welcome "+bean.getFirstName());
					}
					else
					{
						addActionError("Your username and password mismatch. Please try again.");
					}
				}
				else 
				{
					addActionError("Username does not exist.");
				}
			}
		}
		catch (SQLException sqlexception)
		{
			System.out.println(sqlexception.getErrorCode());
		}
		catch (Exception e)
		{
			e.getMessage();
		}
		System.out.println("validation");
	}
	
	private boolean validateFieldErrors()
	{
		boolean validation = true;
		ResumeBuilderValidation validate = new ResumeBuilderValidation();
		
		if(validate.isLengthZero(username))
		{
			addFieldError("username", "Username must be entered.");
			validation = false;
		}
		else if(!validate.isAlphanum(username))
		{
			addFieldError("username", "Username can be alphanumeric only.");
			validation = false;
		}
		
		if(validate.isLengthZero(password))
		{
			addFieldError("password", "Password must be entered.");
			validation = false;
		}
		else if(!validate.notContainSpace(password))
		{
			addFieldError("password", "Password cannot contain spaces.");
			validation = false;
		}
		
		return validation;
	}

	public void setSession(Map<String, Object> sessionMap)
	{
		this.sessionMap = (SessionMap<String, Object>) sessionMap;
	}
}
