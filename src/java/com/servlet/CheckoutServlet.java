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
import com.dao.CartDao;
import com.dao.ArtDao;
import com.dao.ArtDaoImpl;

import com.dao.ArtCRUDdao;
import com.model.ArtDetails;
import com.model.Cart;
import com.model.User;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpSession;
import java.util.List;

import java.util.logging.Level;
import java.util.logging.Logger;

@WebServlet(name = "CheckoutServlet", urlPatterns = "/checkout")
public class CheckoutServlet extends HttpServlet {

    private CartDao cartdao;
    private ArtCRUDdao artdao;

    @Override
    public void init() {
        cartdao = new CartDao();
        artdao = new ArtCRUDdao();

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        HttpSession session = request.getSession(false);

        User user = (User) session.getAttribute("userobj");
        List<Cart> cartItemList = cartdao.selectCartByUserId(user.getId());
        RequestDispatcher dispatcher = request.getRequestDispatcher("checkout.jsp");
        request.setAttribute("cartItemList", cartItemList);
        dispatcher.forward(request, response);

    }

}


