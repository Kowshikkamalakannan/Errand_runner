package com.errandrunner.servlets;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.errandrunner.dao.UserDao;
import com.errandrunner.models.UserModel;

@WebServlet("/cook")
public class CookServlet extends HttpServlet {

	/**
	 * 
	 */
	 private UserDao userDao;
	
	public void init() {
        userDao = new UserDao();
    }
	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
		    throws ServletException, IOException {
		        doGet(request, response);
		    }

		    protected void doGet(HttpServletRequest request, HttpServletResponse response)
		    throws ServletException, IOException {
		        String action = request.getServletPath();
		        System.out.println("HERE ==============================" + action);
		        RequestDispatcher disp = request.getRequestDispatcher("dummy.jsp");
		        disp.forward(request, response);
		        
		        
		    }
		    
	
	 
	
}
