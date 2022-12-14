/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.admin.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;

import com.model.ArtDetails;
import com.dao.ArtDaoImpl;
import com.DB.DBconnect;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.http.HttpSession;
import java.io.File;

@WebServlet("/add_arts")
@MultipartConfig
public class AddArtServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            String artName = request.getParameter("art_name");
            String artistName = request.getParameter("artist_name");
            String price = request.getParameter("price");
            String categories = request.getParameter("categories");
            String status = request.getParameter("status");
            Part part = request.getPart("art_image");
            String fileName = part.getSubmittedFileName();

            ArtDetails ad = new ArtDetails(artName, artistName, price, categories, status, fileName, "admin");

            
            ArtDaoImpl dao = new ArtDaoImpl(DBconnect.getConn());

            boolean f = dao.addArts(ad);
            HttpSession session = request.getSession();

            if (f) {
//                add image to folder 
//                String path = getServletContext().getRealPath("" )+ "img";
//
//                File file = new File(path);
//                part.write(path + File.separator + fileName);
 
                session.setAttribute("success", "Art is added successfully");
                response.sendRedirect("admin/AllArtsServlet");
            } else {
                session.setAttribute("failed", "Something wrong on Server");
                response.sendRedirect("admin/AllArtsServlet");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

}
