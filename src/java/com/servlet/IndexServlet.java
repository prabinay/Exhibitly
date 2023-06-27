/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.servlet;

import com.dao.CartDao;
import java.io.IOException;
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
import com.model.Cart;
import com.model.User;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpSession;
import java.util.List;

@WebServlet(name = "InexServlet", urlPatterns = {"/index"})
public class IndexServlet extends HttpServlet {

    private HomeArtdao homearts;
    private CartDao cartDao;

    @Override
    public void init() {
        homearts = new HomeArtdao();
        cartDao = new CartDao();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
                HttpSession session = request.getSession(false);

                        User user = (User) session.getAttribute("userobj");
        List<ArtDetails> artlist = homearts.selectHomeArts();
        List<Cart> cartItemList = cartDao.selectCartByUserId(user.getId());
        request.setAttribute("cartItemList", cartItemList);
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
