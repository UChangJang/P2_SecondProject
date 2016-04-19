package comma.sist.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.util.*;
import java.lang.reflect.*;

public class DispatcherServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private WebApplicationContext		wc;
	private List<String> 				list;
	
	public void init(ServletConfig config) throws ServletException {
		
		String path = config.getInitParameter("contextConfigLocation");	//path=application.xmlÀÇ À§Ä¡
		wc = new WebApplicationContext(path);
		list = wc.getFileName();
		System.out.println(list);

	}

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try{
			
			String cmd = request.getRequestURI();
			cmd = cmd.substring(request.getContextPath().length()+1);
			for(String strCls:list){
				
				Class clsName = Class.forName(strCls);
				if(clsName.isAnnotationPresent(Controller.class)==false){
					continue;
				}
				
				Method[] methods = clsName.getDeclaredMethods();
				for(Method m:methods){

					RequestMapping rm = m.getAnnotation(RequestMapping.class);
					if(rm.value().equals(cmd)){
						Object obj = clsName.newInstance();
						String jsp = (String)m.invoke(obj, request);
						RequestDispatcher rd = request.getRequestDispatcher(jsp);
						rd.forward(request, response);
						return;
					}
				}
				
			}
			
		}catch(Exception ex){
			System.out.println("service : "+ex.getMessage());
		}
		
	}

}
