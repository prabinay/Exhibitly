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

@WebServlet(name = "cartServlet", urlPatterns = "/cart")
public class CartServlet extends HttpServlet {

    private CartDao cartdao;
    private ArtCRUDdao artdao;

    @Override
    public void init() {
        cartdao = new CartDao();
        artdao = new ArtCRUDdao();

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        try {
            switch (action) {
                case ("addtocart"):
                    addToCart(request, response);
                    break;
//                case ("updateCartQuantity"):
//                    updateCartQuantity(request, response);
//                    break;
                case ("remove"):
                    deleteCartItem(request, response);
                    break;
//                case ("update"):
//                    updateCartQuantity(request, response);
//                    break;
                default:
                    showCart(request, response);
                    break;
            }
        } catch (Exception ex) {
            throw new ServletException(ex);
        }
    }
//
//    public void updateCartQuantity(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//        int user_id = (int) request.getSession(false).getAttribute("id");
//        int id = Integer.parseInt(request.getParameter("id"));
//        String type = request.getParameter("type");
//        Cart cartItem = cartdao.selectCart(id);
//        int book_id = cartItem.getBook_id();
//        int quantity = 1;
//        switch (type) {
//            case "add":
//                quantity = cartItem.getQuantity() + 1;
//                break;
//            case "subtract":
//                quantity = cartItem.getQuantity() - 1;
//                break;
//            default:
//                quantity = 1;
//                break;
//        }
//        if (cartItem.getUser_id() == user_id) {
//            if (quantity >= 1) {
//                Cart updateCartItem = new Cart(id, user_id, book_id, quantity, cartItem.getCreated_date());
//                if (cartDAO.updateCart(updateCartItem)) {
//                    System.out.println("one Cart item Successfully updated.");
//                    response.sendRedirect("cart");
//                } else {
//                    System.out.println("Couldnot update cart item.");
//                }
//            } else {
//                cartDAO.deleteCartById(id);
//                System.out.println("one Cart item Successfully deleted.");
//                response.sendRedirect("cart");
//            }
//        } else {
//            System.out.println("user " + user_id + " - tried to update others cart.");
//        }
//    }

    public void deleteCartItem(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession(false);
        User user = (User) session.getAttribute("userobj");
        int id = Integer.parseInt(request.getParameter("id"));
        Cart cartItem = cartdao.selectCart(id);
        if (cartItem.getUserID() == user.getId()) {
            if (cartdao.deleteCartById(id)) {
//                System.out.println("one Cart item Successfully Deleted.");
//                String SuccessMessage = "One cart item has been successfully deleted.";
//                RequestDispatcher dispatcher = request.getRequestDispatcher("cart");
//                request.setAttribute("SuccessMessage", SuccessMessage);
//                dispatcher.forward(request, response);
                response.sendRedirect("cart");
            } else {
                System.out.println("Couldnot delete cart item.");
            }
        } else {
            System.out.println("user " + user.getId() + " - tried to delete others cart.");
        }
    }

//    public void updateCartItem(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//        int user_id = (int) request.getSession(false).getAttribute("id");
//        int id = Integer.parseInt(request.getParameter("id"));
//        int quantity = Integer.parseInt(request.getParameter("quantity"));
//        int book_id = Integer.parseInt(request.getParameter("book_id"));
//        Cart cartItem = cartDAO.selectCart(id);
//        System.out.println(cartItem.getUser_id());
//        if (cartItem.getUser_id() == user_id) {
//            Cart updateCartItem = new Cart(id, user_id, book_id, quantity, cartItem.getCreated_date());
//            if (cartDAO.updateCart(updateCartItem)) {
////                System.out.println("one Cart item Successfully updated.");
////                String SuccessMessage = "One cart item has been successfully deleted.";
////                RequestDispatcher dispatcher = request.getRequestDispatcher("cart");
////                request.setAttribute("SuccessMessage", SuccessMessage);
////                dispatcher.forward(request, response);
//                response.sendRedirect("cart");
//            } else {
//                System.out.println("Couldnot update cart item.");
//            }
//        } else {
//            System.out.println("user " + user_id + " - tried to update others cart.");
//        }
//    }
    public void addToCart(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession(false);

        if (session != null) {
            if (session.getAttribute("userobj") != null) {
                try {
                    User user = (User) session.getAttribute("userobj");
                    int art_id = Integer.parseInt(request.getParameter("id"));
                    int quantity = 1;
//                Date created_date = new Date(System.currentTimeMillis());

                    ArtDetails art = artdao.selectArt(art_id);
                    Cart cartItem = cartdao.selectCartByBookAndUserId(art_id, user.getId());
                    if (cartItem.getArtID() == art_id && cartItem.getUserID() == user.getId()) {
                        quantity = cartItem.getQuantity() + 1;
                        Cart updateCart = new Cart(cartItem.getCartID(), art_id, user.getId(), quantity, Double.parseDouble(art.getPrice()));
                        if (cartdao.updateCart(updateCart)) {
                            System.out.println("Quantity successfully updated!");
                            String successMessage = "Hurray! Successfully updated one item in the cart.";
                            RequestDispatcher dispatcher = request.getRequestDispatcher("index");
                            request.setAttribute("successMessage", successMessage);
                            dispatcher.forward(request, response);
                        } else {
                            System.out.println("Failed to update cart!");
                        }

                    } else {
                        Cart newCart = new Cart(art_id, user.getId(), quantity, Double.parseDouble(art.getPrice()));
                        cartdao.insertIntoCart(newCart);
                        System.out.println("Successfully inserted into cart.");
                        String successMessage = "Hurray! Successfully added one item to the cart.";
                        RequestDispatcher dispatcher = request.getRequestDispatcher("index");
                        request.setAttribute("successMessage", successMessage);
                        dispatcher.forward(request, response);
                    }
                } catch (ClassNotFoundException ex) {
                    Logger.getLogger(CartServlet.class.getName()).log(Level.SEVERE, null, ex);
                }
            } else {
                String errorMessage = "Sorrry! you should log in first to add items to the cart.";
                RequestDispatcher dispatcher = request.getRequestDispatcher("index");
                request.setAttribute("errorMessage", errorMessage);
                dispatcher.forward(request, response);
            }
        } else {
            String errorMessage = "Sorrry! you should log in first to add items to the cart.";
            RequestDispatcher dispatcher = request.getRequestDispatcher("index");
            request.setAttribute("errorMessage", errorMessage);
            dispatcher.forward(request, response);
        }
    }

    public void showCart(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession(false);
        if (session != null) {
            if (session.getAttribute("userobj") == null) {
                String errorMessage = "Ohh! I think you not logged in yet. Please login first.";
                RequestDispatcher dispatcher = request.getRequestDispatcher("index");
                request.setAttribute("errorMessage", errorMessage);
                dispatcher.forward(request, response);
            } else {
//                int user_id = (int) session.getAttribute();
                List<Cart> cartItemList = cartdao.selectAllCart();
                RequestDispatcher dispatcher = request.getRequestDispatcher("cart.jsp");
                request.setAttribute("cartItemList", cartItemList);
                dispatcher.forward(request, response);

            }
        } else {
            String errorMessage = "Ohh! It seems you not logged in yet. Please login first.";
            RequestDispatcher dispatcher = request.getRequestDispatcher("index");
            request.setAttribute("errorMessage", errorMessage);
            dispatcher.forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        try {
            switch (action) {
                case ("cart"):
                    addToCart(request, response);
                    break;
            }
        } catch (Exception ex) {
            throw new ServletException(ex);
        }
    }

}
