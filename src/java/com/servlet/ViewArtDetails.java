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
import jakarta.servlet.annotation.WebServlet;
import java.util.List;

public class ViewArtDetails extends HttpServlet {

    private HomeArtdao homearts;

    @Override
    public void init() {
        homearts = new HomeArtdao();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String artno = request.getParameter("id");
        
        System.out.println("artno is " +artno);
        if(artno == null) {
            artno = "" + 0;
        }
        
        int artID =Integer.parseInt(artno);
        
        ArtDetails artlist = homearts.viewArtDetails(artID);
        System.out.println("artlist is" + artlist);
         System.out.println("artlist Name is" + artlist.getArtName());
        RequestDispatcher rd = request.getRequestDispatcher("viewDetails.jsp");
        request.setAttribute("artlist", artlist);
        rd.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

}
