/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.servlet;

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
import com.dao.HomeArtdao;
import com.model.ArtDetails;
import jakarta.servlet.RequestDispatcher;
import java.util.List;

public class IndexServlet extends HttpServlet {

    private HomeArtdao homearts;

    @Override
    public void init() {
        homearts = new HomeArtdao();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        List<ArtDetails> artlist = homearts.selectHomeArts();
        System.out.println("artlist is" + artlist);
        RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
        request.setAttribute("artlist", artlist);
        rd.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

}
