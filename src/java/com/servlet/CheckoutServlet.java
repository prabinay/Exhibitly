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
import com.dao.ArtDao;
import com.dao.ArtDaoImpl;

import com.dao.ArtCRUDdao;
import com.dao.CheckoutDao;
import com.model.ArtDetails;
import com.model.Cart;
import com.model.OrderDetails;
import com.model.OrderList;
import com.model.User;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpSession;
import java.nio.charset.Charset;
import java.sql.Date;
import java.util.List;
import java.util.Random;

import java.util.logging.Level;
import java.util.logging.Logger;

@WebServlet(name = "CheckoutServlet", urlPatterns = "/checkout")
public class CheckoutServlet extends HttpServlet {

    private CartDao cartdao;
    private ArtCRUDdao artdao;
    private CheckoutDao orderdao;
    private OrderlistDao orderlistdao;

    @Override
    public void init() {
        cartdao = new CartDao();
        artdao = new ArtCRUDdao();
        orderdao = new CheckoutDao();
        orderlistdao = new OrderlistDao();

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        HttpSession session = request.getSession(false);

        User user = (User) session.getAttribute("userobj");
        List<Cart> cartItemList = cartdao.selectCartByUserId(user.getId());
        RequestDispatcher dispatcher = request.getRequestDispatcher("checkout.jsp");
        request.setAttribute("cartItemList", cartItemList);
        dispatcher.forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

//        byte[] array = new byte[7]; // length is bounded by 7
//        new Random().nextBytes(array);
//        String orderid = new String(array, Charset.forName("UTF-8"));
//        System.out.println(orderid);
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("userobj");

//        
        String orderid = java.util.UUID.randomUUID().toString();

        try {
            String address = request.getParameter("address");
            String payment = "Cash on Delivery";
            String country = request.getParameter("country");
            String state = request.getParameter("state");
            String postcode = request.getParameter("postcode");
            String contactno = request.getParameter("contactno");
            String status = "Pending";
            Date order_date = new Date(System.currentTimeMillis());

            OrderDetails order = new OrderDetails(orderid, address, payment, country, state, postcode, contactno, status, order_date, user.getId());

            orderdao.insertOrder(order);

            List<Cart> cartlist = cartdao.selectCartByUserId(user.getId());
            for (Cart cart : cartlist) {
                int quantity = cart.getQuantity();
                Double price = cart.getPrice();
                int artid = cart.getArtID();
                double total_price = quantity * price;

                OrderList orderlist = new OrderList(orderid, quantity, price, artid, total_price);
                orderlistdao.insertOrderlist(orderlist);
                
            }

            response.sendRedirect("index");

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

}
