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

public class loginservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public loginservlet() {
        super();
        // T
    }

	@SuppressWarnings("unused")
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			PrintWriter out=response.getWriter();
			String email=request.getParameter("email");
			String password=request.getParameter("password");
			
			//validations
			
			//authenticate
		
			
			User user=userdao.getuserbyemailandpsssword(email, password);
			//System.out.println(user);
			
			HttpSession httpsession=request.getSession();
			httpsession.setAttribute("current-user",user);
			if(user.getUserType().equals("admin"))
			{
				//admin
				response.sendRedirect("Admin.jsp");
			}else if (user.getUserType().equals("normal"))
			{
				//normal
				response.sendRedirect("Normal.jsp");
			}else
			{
				out.print("We are not find any user");
			}
			
			if(user==null) {
				//out.print("<h1>User not found check email and password</h1>");
				httpsession.setAttribute("message"," Invalid details try with another one");
				response.sendRedirect("Login.jsp");
				return;
			}else 
			
			{
				
				//out.print("<h1>User found </h1>  "+user.getUserName());
				
				httpsession.setAttribute("current-user",user);
				if(user.getUserType().equals("admin"))
				{
					
					//admin
					response.sendRedirect("Admin.jsp");
				}else if (user.getUserType().equals("normal"))
				
				{
					//normal
					response.sendRedirect("Normal.jsp");
				}else
				
				{
					out.print("We are not find any user");
				}
			}
			

			
			
			
			
			
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}

}
