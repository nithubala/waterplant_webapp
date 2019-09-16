package com.revature.waterplant_webapp.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.revature.waterplant_webapp.exception.ServiceException;
import com.revature.waterplant_webapp.service.AdminService;


public class UpdateStockServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String noOfCans=request.getParameter("noofcans");
		int addCans=Integer.parseInt(noOfCans);
		
		try {
			AdminService.updateStock(addCans);
			response.sendRedirect("adminaction.jsp");
		} catch (ServiceException e) {
			e.printStackTrace();
			response.sendRedirect("updatestock.jsp?message=" + e.getMessage());
		}
	}

	
}
