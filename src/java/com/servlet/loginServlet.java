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

import com.dao.UserDaoImpl;
import com.DB.DBconnect;
import com.model.User;
import jakarta.servlet.http.HttpSession;

/**
 *
 * @author Prab1n
 */
@WebServlet("/login")
public class loginServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {

            UserDaoImpl dao = new UserDaoImpl(DBconnect.getConn());
            HttpSession session = request.getSession();

            String email = request.getParameter("email");
            String pwd = request.getParameter("password");

            if ("admin@gmail.com".equals(email) && "Admin77#".equals(pwd)) {
                User us = new User();

                us.setName("Admin");
                session.setAttribute("userobj", us);
                response.sendRedirect("admin/home.jsp");
            } else {
                User us = dao.login(email, pwd);
                if (us != null) {
                    session.setAttribute("userobj", us);
                    response.sendRedirect("index");
                } else {
                    session.setAttribute("failed", "Email & Password Invalid");
                    response.sendRedirect("loginAndSignin.jsp");
                }
           
//                response.sendRedirect("home.jsp");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

}
