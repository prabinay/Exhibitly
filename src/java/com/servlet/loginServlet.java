/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 *
 * @author Prab1n
 */
@WebServlet("/login")
public class loginServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            try{
                String email = request.getParameter("email");
                String pwd = request.getParameter("password");
                
                if("admin@gmail.com".equals(email) && "admin".equals(pwd)){
                    response.sendRedirect("admin/home.jsp");
                } else{
                    response.sendRedirect("home.jsp");
                }
            }catch(Exception e){
                e.printStackTrace();
            }
    }

    
}
