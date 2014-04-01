package com.interceptors;

import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.apache.struts2.ServletActionContext;
import org.apache.struts2.StrutsStatics;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.Interceptor;

public class ClearCacheInterceptor implements Interceptor
{
	static final Logger ClearCacheLogger = Logger.getLogger(ClearCacheInterceptor.class);
	private static final long serialVersionUID = 1L;
	
	public void destroy()
	{
	}
	
	public void init()
	{
	}
	
	public String intercept(ActionInvocation invocation) throws Exception
	{
		HttpServletResponse response=ServletActionContext.getResponse();
		response.setHeader("Cache-Control", "no-store");
        response.setHeader("Pragma", "no-cache");
        response.setDateHeader("Expires", 0);
		System.out.println("Cache clean");
        return invocation.invoke();
	}
}
