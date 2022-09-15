/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.servlet;

import com.dao.ViewbyCategoryDao;
import com.model.ArtDetails;
import jakarta.servlet.RequestDispatcher;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;

/**
 *
 * @author Prab1n
 */
@WebServlet(name = "IndexbyCategoryServlet", urlPatterns = {"/landscape"})
public class IndexbyCategoryServlet extends HttpServlet {

    private ViewbyCategoryDao arts;

    @Override
    public void init() {
        arts = new ViewbyCategoryDao();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        List<ArtDetails> artlist = arts.selectHomeArts();
        System.out.println("artlist is" + artlist);
        RequestDispatcher rd = request.getRequestDispatcher("landscape.jsp");
        request.setAttribute("artlist", artlist);
        rd.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

}
