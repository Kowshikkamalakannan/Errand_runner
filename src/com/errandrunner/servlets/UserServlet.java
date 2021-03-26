package com.errandrunner.servlets;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.errandrunner.dao.CookDao;
import com.errandrunner.dao.ErunnerDao;
import com.errandrunner.dao.UserDao;
import com.errandrunner.models.CookModel;
import com.errandrunner.models.ErunnerModel;
import com.errandrunner.models.UserModel;



@WebServlet(urlPatterns = {"/user", "/user/sign-up/user", "/user/sign-up/cook", "/user/sign-up/erunner", "/user/sign-in"})
public class UserServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
   

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
    	 String action = request.getServletPath().split("/")[2];
	        
    	  switch(action) {
    	  	case "sign-up": 
    	  		NewUser.doPostNewUser(request, response);
    	  		break;
    	  	case "sign-in": 
    	  		Login.login(request, response);
    	  		break;
    	  	default:
    	  		HelperFunctions.notFound(request, response);
    	  }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        String action = request.getServletPath().split("/")[2];

        switch (action) {
            case "sign-up":
                NewUser.doGetNewUser(request, response);
                break;
            default:
            	RequestDispatcher dispatcher = request.getRequestDispatcher("not-found.jsp");
    	        dispatcher.forward(request, response);
    	        return;
        }
       
    }
}

class NewUser {
	
	static void doGetNewUser(HttpServletRequest request, HttpServletResponse response) {
		try {
			String action = request.getServletPath().split("/")[3];
			String file = null;
			switch (action) {
				case "user":
					file = "userRegister.jsp";
					break;
				case "cook":
					file = "cookRegister.jsp";
					break;
				case "erunner":
					file = "errandRegister.jsp";
					break;
				default: 
					file = "not-found.jsp";
					break;
				
			}
			
			RequestDispatcher dispatcher = request.getRequestDispatcher(file);
	        dispatcher.forward(request, response);
	        
		} catch (Exception ex) {
			
		}
	}
	
	static void doPostNewUser(HttpServletRequest request, HttpServletResponse response) {
		try {
			String action = request.getServletPath().split("/")[3];
			switch(action) {
				case "user":
					createUser(request, response, "user");
					 
				    break;
				case "cook":
					createCook(request, response);
					break;
				case "erunner":
					createERunner(request, response);
					break;
				default: 
					HelperFunctions.notFound(request, response);
					return;
			}
			response.sendRedirect("/ErrandRunner");
			
		} catch(Exception ex) {
			
		}
	}
	
	 
    static private UserModel createUser(HttpServletRequest request, HttpServletResponse response, String userType)
    throws SQLException, IOException, ServletException {
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String password = request.getParameter("psw");
        String hexPassword = HelperFunctions.toHex(password);
        
        UserModel newUser = new UserModel(name, email, phone, hexPassword, userType);
        new UserDao().saveUser(newUser);
        return newUser;
    }
    
    static private void createCook(HttpServletRequest request, HttpServletResponse response)
    throws SQLException, IOException, ServletException {
        String address = request.getParameter("address");
        
        UserModel user = createUser(request, response, "cook");
        CookModel cook = new CookModel(address, user);
        new CookDao().saveCook(cook);
        
    }
    
    static private void createERunner(HttpServletRequest request, HttpServletResponse response)
    throws SQLException, IOException, ServletException {
    	UserModel user = createUser(request, response, "erunner");
    	String aadhar = request.getParameter("aadhar");
    	String job1 = request.getParameter("job1");
      	String job2 = request.getParameter("job2");
      	String jobs = job1 + "," + job2;
      	
    	ErunnerModel runner = new ErunnerModel(aadhar, jobs, user);
    	new ErunnerDao().save(runner);
    	
    }
}

class Login {
	
	static void login(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		 String phone = request.getParameter("phone");
	     String password = request.getParameter("psw");
	     //System.out.println(phone);
	     authenticate(phone, password, request,response);
	     
	     
	}
	
	static void authenticate(String phone, String password,HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		String hexPassword = HelperFunctions.toHex(password);
		UserModel user = new UserDao().getUserByPhone(phone);
		//request.getSession().removeAttribute("message");
		if(user != null) {
			String userPassword = user.getPassword();
			if(userPassword.equals(hexPassword)) {
				
				Cookie cookie = new Cookie(user.getName(), user.getId() + "");
				response.addCookie(cookie);
				response.sendRedirect("/ErrandRunner/userHome.jsp");
				
			} else {
				System.out.println("Invalid Password");
				request.setAttribute("message", "Invalid Password");
				response.sendRedirect(request.getHeader("Referer"));
				//new MainServlet().doGet(request, response);
				//request.getRequestDispatcher("/home.jsp").forward(request, response);
				//response.sendRedirect(request.getRequestURI());
				
			}
		} else {
			System.out.println("User doesn't exist");
			request.setAttribute("message", "User doesn't exist");
			response.sendRedirect(request.getHeader("Referer"));
			//request.getRequestDispatcher("/home.jsp").forward(request, response);
			
		}
		
	}
}

//private void homePage(HttpServletRequest request, HttpServletResponse response)
//	    throws ServletException, IOException {
//	        
//	    }
//
//private void showNewForm(HttpServletRequest request, HttpServletResponse response)
//throws ServletException, IOException {
//    RequestDispatcher dispatcher = request.getRequestDispatcher("userRegister.jsp");
//    dispatcher.forward(request, response);
//}
//
//private void showEditForm(HttpServletRequest request, HttpServletResponse response)
//throws SQLException, ServletException, IOException {
//    int id = Integer.parseInt(request.getParameter("id"));
//    UserModel existingUser = userDao.getUser(id);
//    RequestDispatcher dispatcher = request.getRequestDispatcher("userRegister.jsp");
//    request.setAttribute("user", existingUser);
//    dispatcher.forward(request, response);
//
//}
//private void updateUser(HttpServletRequest request, HttpServletResponse response)
//	    throws SQLException, IOException {
//	        int id = Integer.parseInt(request.getParameter("id"));
//	        String name = request.getParameter("name");
//	        String email = request.getParameter("email");
//	        String phone = request.getParameter("phone");
//	        String password = request.getParameter("password");
//
//	        UserModel user = new UserModel(id,name,email,phone,password,"user");
//	        userDao.updateUser(user);
//	        response.sendRedirect("list");
//	    }
//
//	    private void deleteUser(HttpServletRequest request, HttpServletResponse response)
//	    throws SQLException, IOException {
//	        int id = Integer.parseInt(request.getParameter("id"));
//	        userDao.deleteUser(id);
//	        response.sendRedirect("list");
//	    }
