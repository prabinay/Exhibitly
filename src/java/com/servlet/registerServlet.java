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

import com.model.User;
import com.dao.UserDaoImpl;
import com.DB.DBconnect;

/**
 *
 * @author Prab1n
 */
@WebServlet("/register")
public class registerServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            String name = request.getParameter("name");
            String email = request.getParameter("email");
            String phone = request.getParameter("phone");
            String pwd = request.getParameter("pwd");
            String check = request.getParameter("check");

//            System.out.println(name+" "+email+" "+phone+" "+pwd+" "+check);
            User us = new User();
            us.setName(name);
            us.setEmail(email);
            us.setPhone_no(phone);
            us.setPwd(pwd);

            
            
            if (check != null) {

                UserDaoImpl dao = new UserDaoImpl(DBconnect.getConn());
                boolean f = dao.userRegister(us);
                if (f) {
//                    System.out.println("User Registered Successfully");
                } else {
//                    System.out.println("Something wrong!");
                }
            }else{
//                System.out.println("Please accept terms & Conditions");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

}
