package com.logout;

import java.util.Map;

import org.apache.struts2.dispatcher.SessionMap;
import org.apache.struts2.interceptor.SessionAware;
import com.opensymphony.xwork2.ActionSupport;

public class LogoutAction extends ActionSupport implements SessionAware
{
	private static final long serialVersionUID = 1L;
	
	private SessionMap<String, Object> sessionMap;
	
	public String execute() throws Exception
	{
		String result=SUCCESS;

		sessionMap.invalidate();
		return result;
	}

	public void setSession(Map<String, Object> sessionMap)
	{
		this.sessionMap = (SessionMap<String, Object>) sessionMap;
	}
}
