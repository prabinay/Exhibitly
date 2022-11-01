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
import com.dao.*;
import com.model.ArtDetails;
import com.model.OrderDetails;
import jakarta.servlet.RequestDispatcher;
import java.util.List;

import com.dao.OrdersDao;
import com.model.OrderDetails;
import com.model.OrderList;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;


//@WebServlet(name = "OrdersDisplayServlet", urlPatterns = "/all_orders")
public class OrdersDisplayServlet extends HttpServlet {

    OrderlistDao order_list;

    @Override
    public void init() {
        order_list = new OrderlistDao();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        List<OrderList> orderlist = order_list.selectAllOrderlist();
        System.out.println("orderlist is" + orderlist);
        RequestDispatcher rd = request.getRequestDispatcher("orders.jsp");
        request.setAttribute("orderlist", orderlist);
        rd.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

}

