package com.revature.waterplant_webapp.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.revature.waterplant_webapp.exception.ServiceException;
import com.revature.waterplant_webapp.model.User;
import com.revature.waterplant_webapp.service.UserService;




public class RegisterServlet extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
       
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	
    	String name= request.getParameter("name");
		String email  = request.getParameter("email");
		String password = request.getParameter("password");
		String address=request.getParameter("address");
		String mobilenumber=request.getParameter("mobilenum");
		long mobno=Long.parseLong(mobilenumber);
		
		User user = new User();
		user.setName(name);
		user.setEmailId(email);
		user.setPassword(password);
		user.setAddress(address);
		user.setMobileNo(mobno);
		
		try {
			UserService.register(user);
			response.sendRedirect("userlogin.jsp");
		} catch (ServiceException e) {
		    e.printStackTrace();
			response.sendRedirect("register.jsp?message=" + e.getMessage());
		}
		
	}

}
