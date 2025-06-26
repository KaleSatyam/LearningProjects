package com.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.userdao;
import com.model.User;

/**
 * Servlet implementation class registerservlet
 */
public class registerservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public registerservlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			PrintWriter out=response.getWriter();
			String userName=request.getParameter("user_name");
			String userEmail=request.getParameter("user_email");
			String userPassword=request.getParameter("user_password");
			String userPhone=request.getParameter("user_phone");
			String userAddress=request.getParameter("user_address");
			
			//validations
			if(userName.isEmpty()) {
				out.println("name is empty");
				return;
			}
			if(userPhone.length()>10 && userPhone.length()<10) {
				out.println("phone no not valid");
				return;
			}
			
			//creating object to store data
			User user=new User(userName, userEmail, userPassword, userPhone,"Default.jpg", userAddress,"normal");
			int uid=userdao.saveuser(user);
			
			HttpSession httpsession=request.getSession();
			httpsession.setAttribute("message","WelCome You are Registerd  Your Id --> "+uid);
			response.sendRedirect("Register.jsp");
			return;			
			
		}catch(Exception e) 
		{
			e.printStackTrace();
		}
	}

}
