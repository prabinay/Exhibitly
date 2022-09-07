/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.admin.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 *
 * @author Prab1n
 */
import com.dao.*;
import com.model.ArtDetails;
import jakarta.servlet.RequestDispatcher;
import java.util.List;

public class AllArtsServlet extends HttpServlet {

    AllArtsDao allarts;

    @Override
    public void init() {
        allarts = new AllArtsDao();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        List<ArtDetails> artlist = allarts.selectAllArts();
        System.out.println("artlist is" + artlist);
        RequestDispatcher rd = request.getRequestDispatcher("allArts.jsp");
        request.setAttribute("artlist", artlist);
        rd.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

}
