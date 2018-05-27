package com.accp.web.util;

import javax.servlet.http.HttpServletRequest;

import org.springframework.util.ObjectUtils;
import org.springframework.web.context.request.RequestAttributes;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

public abstract class WebUtil {
	public static void setRequest(String name,Object value){
		RequestAttributes attributes = RequestContextHolder.currentRequestAttributes();
		if(!ObjectUtils.isEmpty(attributes)){
			attributes.setAttribute(name, value, RequestAttributes.SCOPE_REQUEST);
		}
	}
	
	@SuppressWarnings("unchecked")
	public static <T> T getRequest(String name){
		RequestAttributes attributes = RequestContextHolder.currentRequestAttributes();
		if(!ObjectUtils.isEmpty(attributes)){
			return (T) attributes.getAttribute(name, RequestAttributes.SCOPE_REQUEST);
		}
		return null;
	}
	
	public static void setSession(String name,Object value){
		RequestAttributes attributes = RequestContextHolder.currentRequestAttributes();
		if(!ObjectUtils.isEmpty(attributes)){
			attributes.setAttribute(name, value, RequestAttributes.SCOPE_SESSION);
		}
	}
	
	@SuppressWarnings("unchecked")
	public static <T> T getSession(String name){
		RequestAttributes attributes = RequestContextHolder.currentRequestAttributes();
		if(!ObjectUtils.isEmpty(attributes)){
			return (T) attributes.getAttribute(name, RequestAttributes.SCOPE_SESSION);
		}
		return null;
	}
	
	public static void removeSession(String name){
		RequestAttributes attributes = RequestContextHolder.currentRequestAttributes();
		if(!ObjectUtils.isEmpty(attributes)){
			attributes.removeAttribute(name, RequestAttributes.SCOPE_SESSION);
		}
	}
	
	public static HttpServletRequest getRequest() {
		return ((ServletRequestAttributes)RequestContextHolder
					.currentRequestAttributes()).getRequest();
	}
	
	public static String getRealPath() {
		return getRequest().getServletContext().getRealPath("/");
	}
	
	public static String getServerPath() {
		HttpServletRequest request = getRequest();
		return request.getScheme() + "://" + request.getServerName() + ":" 
				+ request.getServerPort() + "/" + request.getContextPath() + "/";
	}
}
