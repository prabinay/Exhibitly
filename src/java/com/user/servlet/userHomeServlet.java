/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.user.servlet;

import java.io.IOException;

import jakarta.servlet.ServletException;

import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


import com.DB.DBconnect;
import com.dao.HomeArtdao;



import com.dao.HomeArtdao;
import com.model.ArtDetails;
import jakarta.servlet.RequestDispatcher;
import java.util.List;
/**
 * /**
 *
 * @author Prab1n
 */
public class userHomeServlet extends HttpServlet {

//    HomeArtdao homearts;
//
//    @Override
//    public void init() {
//        homearts = new HomeArtdao();
//    }
//
//    @Override
//    protected void doGet(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//    }
//
//    protected void doGets(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//        List<ArtDetails> artlist = homearts.selectAllArts();
//        
//        RequestDispatcher rd = request.getRequestDispatcher("home.jsp");
//        request.setAttribute("arts", artlist);
//        rd.forward(request, response);
//    }

}
