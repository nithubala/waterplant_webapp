package com.revature.waterplant_webapp.service;

import com.revature.waterplant_webapp.dao.UserDAO;
import com.revature.waterplant_webapp.dao.UserInterface;
import com.revature.waterplant_webapp.exception.DBException;
import com.revature.waterplant_webapp.exception.ServiceException;
import com.revature.waterplant_webapp.exception.ValidatorException;
import com.revature.waterplant_webapp.model.User;
import com.revature.waterplant_webapp.validator.UserValidator;

public class UserService {
	
	 private static UserInterface udao=new UserDAO();

	public User login(String email, String password) throws ServiceException {
		
		
		User user=null;
		try {
			user=udao.login(email, password);
		} catch (DBException e) {
			
			e.printStackTrace();
			throw new ServiceException("Unable to login");
		}
		return user;
		
		
	}

	public static void register(User user) throws ServiceException {
		
      try {
		UserValidator.ValidationBeforeRegistration(user);
		udao.register(user);
	} catch (ValidatorException e) {
		
		e.printStackTrace();
		throw new ServiceException(e.getMessage());
	}
      catch (DBException e) {
		
		e.printStackTrace();
		throw new ServiceException(e.getMessage());
	}
      
	}		
		


}
