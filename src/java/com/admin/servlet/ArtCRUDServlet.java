/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.admin.servlet;

import com.DB.DBconnect;
import com.model.User;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import com.dao.ArtCRUDdao;
import com.dao.ArtDaoImpl;
import com.model.ArtDetails;
import jakarta.servlet.http.Part;
import java.util.logging.Level;
import java.util.logging.Logger;

public class ArtCRUDServlet extends HttpServlet {

    private static final long serialVersionUID = 1;

    private ArtCRUDdao artcrud;

    @Override
    public void init() {
        this.artcrud = new ArtCRUDdao();
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getServletPath();

        try {
            switch (action) {
                case "/new":
                    showNewForm(request, response);
                    break;

                case "/admin/delete":
                    deleteArt(request, response);
                    break;
                case "/admin/edit":
                    showEditArt(request, response);
                    break;
                case "/admin/update":
                    editArt(request, response);
                    break;
                case "/admin/updateArt":
                    updateArt(request, response);
                    break;
//                    default:
//                        listUser(request, response);
//                        break;
                }
        } catch (SQLException ex) {
            throw new ServletException(ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(ArtCRUDServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

//        private void listUser(HttpServletRequest request, HttpServletResponse response)
//                throws SQLException, IOException, ServletException {
//            List< User> listUser = userDAO.selectAllUsers();
//            request.setAttribute("listUser", listUser);
//            RequestDispatcher dispatcher = request.getRequestDispatcher("user-list.jsp");
//            dispatcher.forward(request, response);
//        }
    
    private void showNewForm(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("admin/addArts.jsp");
        dispatcher.forward(request, response);
    }

    private void showEditArt(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, ServletException, IOException, ClassNotFoundException {
        int id = Integer.parseInt(request.getParameter("id"));
        ArtDetails existingArt = ArtCRUDdao.selectArt(id);
        RequestDispatcher dispatcher = request.getRequestDispatcher("../admin/updateArt.jsp");
        request.setAttribute("art", existingArt);
        dispatcher.forward(request, response);

    }

    private void updateArt(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException {
        try {
            int id = Integer.parseInt(request.getParameter("id"));
            String artName = request.getParameter("art_name");
            String artistName = request.getParameter("artist_name");
            String price = request.getParameter("price");
            String categories = request.getParameter("categories");
            String status = request.getParameter("status");
            Part part = request.getPart("art_image");
            String fileName = part.getSubmittedFileName();

            ArtDetails art = new ArtDetails(id, artName, artistName, price, categories, status, fileName);
            ArtCRUDdao.updateArt(art);
            response.sendRedirect("ArtCRUDServlet");

//            ArtDetails ad = new ArtDetails(id, artName, artistName, price, categories, status, fileName, "admin");
//
//            ArtDaoImpl dao = new ArtDaoImpl(DBconnect.getConn());
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void editArt(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException {
        try {

            int id = Integer.parseInt(request.getParameter("id"));
            String artName = request.getParameter("art_name");
            String artistName = request.getParameter("artist_name");
            String price = request.getParameter("price");
            String categories = request.getParameter("categories");
            String status = request.getParameter("status");
            Part part = request.getPart("art_image");
            String fileName = part.getSubmittedFileName();
            ArtDetails art = new ArtDetails(id, artName, artistName, price, categories, status, fileName);
            ArtCRUDdao.editArt(art);
            response.sendRedirect("ArtCRUDServlet");
        } catch (Exception e) {
            e.printStackTrace();
        }

    }

    private void deleteArt(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException, ClassNotFoundException {
        int id = Integer.parseInt(request.getParameter("id"));
        System.out.print("row" + id);
        try {
            ArtCRUDdao.deleteArt(id);
            response.sendRedirect("AllArtsServlet");
        } catch (Exception e) {
            System.out.println("row" + e);
        }

    }

}
