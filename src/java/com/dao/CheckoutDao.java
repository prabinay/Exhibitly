/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
 /*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.Date;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.DB.DBconnect;
import com.model.Cart;
import com.model.OrderDetails;

/**
 *
 * @author Prab1n
 */
public class CheckoutDao {

    private static final String INSERT_INTO_ORDER = "INSERT INTO orders" + "  ( orderID, address, payment, country, state, postcode, contact_no, order_date, order_status, userID) VALUES " + " (?, ?, ?, ?,?, ?, ?, ?, ?,?);";
    private static final String SELECT_ALL_CART = "select * from cart";
    private static final String SELECT_CART_BY_ID = "select * from cart where cartID = ?";
    private static final String SELECT_CART_BY_USER_ID = "select * from cart INNER JOIN art_details ON  cart.artID=  art_details.artID where cart.userID = ?";
//    private static final String SELECT_CART_BY_USER_ID = "select * from cart where user_id=?";
    private static final String SELECT_CART_BY_BOOK_AND_USER_ID = "select * from cart where userID = ? and artID = ?";
    private static final String UPDATE_CART = "update cart set userID = ?,artID = ?, quantity = ?, price=? where cartID = ?;";
    private static final String DELETE_CART_ITEM = "delete from cart where cartID = ?;";

    private static final String CART_COUNT = "SELECT count(*) FROM cart";

//
//    public List<Cart> selectAllCart() {
//        List<Cart> allCart = new ArrayList<>();
//        try {
//            Connection connection = DBconnect.getConn();
//            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_CART);
//            ResultSet rs = preparedStatement.executeQuery();
//            while (rs.next()) {
//                int id = rs.getInt("CartID");
//                int user_id = rs.getInt("userID");
//                int book_id = rs.getInt("artID");
//                int quantity = rs.getInt("quantity");
//                Double price = rs.getDouble("price");
//                allCart.add(new Cart(id, user_id, book_id, quantity,price));
//            }
//
//        } catch (Exception e) {
//            System.out.println(e);
//        }
//        return allCart;
//    }
//    public Cart selectCart(int id) {
//        Cart cartItem = new Cart();
//        try {
//            Connection connection = DBconnect.getConn();
//            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_CART_BY_ID);
//            preparedStatement.setInt(1, id);
//            ResultSet rs = preparedStatement.executeQuery();
//            while (rs.next()) {
//                int user_id = rs.getInt("userID");
//                int art_id = rs.getInt("artID");
//                int quantity = rs.getInt("quantity");
//                Double price = rs.getDouble("price");
//                cartItem = new Cart(id, user_id, art_id, quantity, price);
//            }
//
//        } catch (Exception e) {
//            System.out.println(e);
//        }
//        return cartItem;
//    }
    public List<Cart> selectCartByUserId(int userID) {
        List<Cart> userCart = new ArrayList<>();
        try {
            Connection connection = DBconnect.getConn();
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_CART_BY_USER_ID);
            preparedStatement.setInt(1, userID);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("cartID");
                int art_id = rs.getInt("artID");
                int quantity = rs.getInt("quantity");
                Double price = rs.getDouble("price");

                String art_name = rs.getString("artName");
                String artist_name = rs.getString("artistName");
                Double artprice = Double.parseDouble(rs.getString("price"));

                userCart.add(new Cart(id, userID, art_id, quantity, price, art_name, artist_name, artprice));
            }

        } catch (Exception e) {
            System.out.println(e);
        }
        return userCart;
    }

    public void insertOrder(OrderDetails order) {
        try {
            Connection connection = DBconnect.getConn();
            PreparedStatement preparedStatement = connection.prepareStatement(INSERT_INTO_ORDER);
//            preparedStatement.setInt(1, newCartItem.getCartID());
            preparedStatement.setString(1, order.getOrderID());
            preparedStatement.setString(2, order.getAddress());
            preparedStatement.setString(3, order.getPayment());
            preparedStatement.setString(4, order.getCountry());
            preparedStatement.setString(5, order.getState());
            preparedStatement.setString(6, order.getPostcode());
            preparedStatement.setString(7, order.getContactno());
            preparedStatement.setDate(8, order.getOrder_date());
            preparedStatement.setString(9, order.getStatus());
            preparedStatement.setInt(10, order.getUserID());
            
            
            preparedStatement.executeUpdate();

        } catch (Exception e) {
            System.out.println(e);
        }
    }

}
