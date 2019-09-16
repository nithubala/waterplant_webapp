package com.revature.waterplant_webapp.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.revature.waterplant_webapp.exception.ServiceException;
import com.revature.waterplant_webapp.model.User;
import com.revature.waterplant_webapp.service.UserService;


public class AdminLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		System.out.println("Email:" + email+"Pasword:" +password );
		
		User user = null;
        
        try {
        	UserService us=new UserService();
        	user = us.login(email, password);
        	System.out.println(user);
        	if(user!=null) {
        		if (user.getRole().equals("A")) {
					
					response.sendRedirect("adminaction.jsp");
        		}
				}
			else {
				response.sendRedirect("adminlogin.jsp?message=Invalid Login Credentials");
			}
		} catch (ServiceException e) {
			
			e.printStackTrace();
			response.sendRedirect("adminlogin.jsp?message="+ e.getMessage());
		}
	
	}
		
	}

	


