/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.admin.servlet;

import com.DB.DBconnect;
import com.dao.ArtCRUDdao;
import com.dao.ArtDaoImpl;
import com.model.ArtDetails;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.servlet.http.Part;
import java.io.IOException;

import jakarta.servlet.annotation.WebServlet;

@WebServlet("/update_arts")
@MultipartConfig
public class updateArt extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            int id = Integer.parseInt(request.getParameter("id"));
            String artName = request.getParameter("art_name");
            String artistName = request.getParameter("artist_name");
            String price = request.getParameter("price");
            String categories = request.getParameter("categories");
            String status = request.getParameter("status");
            Part part = request.getPart("art_image");
            String fileName = part.getSubmittedFileName();

//            ArtDetails art = new ArtDetails(id, artName, artistName, price, categories, status, fileName);
//            ArtCRUDdao.updateArt(art);
//            response.sendRedirect("ArtCRUDServlet");
            ArtDetails ad = new ArtDetails();
            ad.setArtID(id);
            ad.setArtName(artName);
            ad.setArtistName(artistName);
            ad.setPrice(price);
            ad.setArtCategory(categories);
            ad.setStatus(status);
            ad.setPhotoName(fileName);
            

            ArtDaoImpl dao = new ArtDaoImpl(DBconnect.getConn());

            boolean f = dao.UpdateArts(ad);
            HttpSession session = request.getSession();

            if (f) {
//                add image to folder 
//                String path = getServletContext().getRealPath("" )+ "img";
//
//                File file = new File(path);
//                part.write(path + File.separator + fileName);

                session.setAttribute("success", "Art is  successfully updated");
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
