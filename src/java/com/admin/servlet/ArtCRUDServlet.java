///*
// * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
// * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
// */
//package com.admin.servlet;
//
//import com.model.User;
//
//
//import java.io.IOException;
//import java.sql.SQLException;
//import java.util.List;
//
//import jakarta.servlet.RequestDispatcher;
//import jakarta.servlet.ServletException;
//import jakarta.servlet.annotation.WebServlet;
//import jakarta.servlet.http.HttpServlet;
//import jakarta.servlet.http.HttpServletRequest;
//import jakarta.servlet.http.HttpServletResponse;
//
//import com.dao.ArtCRUDdao;
//import com.model.ArtDetails;
//
//
//public class ArtCRUDServlet extends HttpServlet {
//
//    @WebServlet("/")
//    public class UserServlet extends HttpServlet {
//
//        private static final long serialVersionUID = 1;
//        private ArtCRUDdao userDAO;
//
//        public void init() {
//            userDAO = new UserDAO();
//        }
//
//        protected void doPost(HttpServletRequest request, HttpServletResponse response)
//                throws ServletException, IOException {
//            doGet(request, response);
//        }
//
//        protected void doGet(HttpServletRequest request, HttpServletResponse response)
//                throws ServletException, IOException {
//            String action = request.getServletPath();
//
//            try {
//                switch (action) {
//                    case "/new":
//                        showNewForm(request, response);
//                        break;
//                    case "/insert":
//                        insertUser(request, response);
//                        break;
//                    case "/delete":
//                        deleteUser(request, response);
//                        break;
//                    case "/edit":
//                        showEditForm(request, response);
//                        break;
//                    case "/update":
//                        updateUser(request, response);
//                        break;
//                    default:
//                        listUser(request, response);
//                        break;
//                }
//            } catch (SQLException ex) {
//                throw new ServletException(ex);
//            }
//        }
//
//        private void listUser(HttpServletRequest request, HttpServletResponse response)
//                throws SQLException, IOException, ServletException {
//            List< User> listUser = userDAO.selectAllUsers();
//            request.setAttribute("listUser", listUser);
//            RequestDispatcher dispatcher = request.getRequestDispatcher("user-list.jsp");
//            dispatcher.forward(request, response);
//        }
//
//        private void showNewForm(HttpServletRequest request, HttpServletResponse response)
//                throws ServletException, IOException {
//            RequestDispatcher dispatcher = request.getRequestDispatcher("user-form.jsp");
//            dispatcher.forward(request, response);
//        }
//
//        private void showEditForm(HttpServletRequest request, HttpServletResponse response)
//                throws SQLException, ServletException, IOException {
//            int id = Integer.parseInt(request.getParameter("id"));
//            User existingUser = userDAO.selectUser(id);
//            RequestDispatcher dispatcher = request.getRequestDispatcher("user-form.jsp");
//            request.setAttribute("user", existingUser);
//            dispatcher.forward(request, response);
//
//        }
//
//        private void insertUser(HttpServletRequest request, HttpServletResponse response)
//                throws SQLException, IOException {
//            String name = request.getParameter("name");
//            String email = request.getParameter("email");
//            String country = request.getParameter("country");
//            User newUser = new User(name, email, country);
//            userDAO.insertUser(newUser);
//            response.sendRedirect("list");
//        }
//
//        private void updateUser(HttpServletRequest request, HttpServletResponse response)
//                throws SQLException, IOException {
//            int id = Integer.parseInt(request.getParameter("id"));
//            String name = request.getParameter("name");
//            String email = request.getParameter("email");
//            String country = request.getParameter("country");
//
//            User book = new User(id, name, email, country);
//            userDAO.updateUser(book);
//            response.sendRedirect("list");
//        }
//
//        private void deleteUser(HttpServletRequest request, HttpServletResponse response)
//                throws SQLException, IOException {
//            int id = Integer.parseInt(request.getParameter("id"));
//            userDAO.deleteUser(id);
//            response.sendRedirect("list");
//
//        }
//    }
//}
