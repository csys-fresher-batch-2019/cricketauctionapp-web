package com.chainsys;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.playingeleven.Login;
@WebServlet("/Register")

public class Register extends HttpServlet {
	
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		String name=request.getParameter("uname");
		String password=request.getParameter("psw");
		Login l=new Login();
		String loginInfo=l.login(name,password);
		if(loginInfo=="admin")
		{
			response.sendRedirect("admin.jsp");
		}
		else
			response.sendRedirect("user.jsp");
	}

	

}
