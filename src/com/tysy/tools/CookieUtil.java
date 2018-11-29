package com.tysy.tools;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.Cookie;

public class CookieUtil {
	public static Map<String, Cookie> getCookieMap(Cookie[] cookies){
		Map<String, Cookie> cookiemap=null;
		if(cookies!=null){
			cookiemap=new HashMap<>();
			for (Cookie cookie : cookies) {
				cookiemap.put(cookie.getName(), cookie);
			}
		}
		return cookiemap;
	}
}
