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

/**
 *
 * @author Prab1n
 */
public class CartDao {

    private static final String INSERT_INTO_CART = "INSERT INTO cart" + "  ( artID, userID, quantity, price) VALUES " + " (?, ?, ?, ?);";
    private static final String SELECT_ALL_CART = "select * from cart";
    private static final String SELECT_CART_BY_ID = "select * from cart where cartID = ?";
    private static final String SELECT_CART_BY_USER_ID = "select * from cart INNER JOIN art_details ON  cart.artID=  art_details.cartID where cart.userID = ?";
//    private static final String SELECT_CART_BY_USER_ID = "select * from cart where user_id=?";
    private static final String SELECT_CART_BY_BOOK_AND_USER_ID = "select * from cart where user_id = ? and book_id = ?";
    private static final String UPDATE_CART = "update cart set userID = ?,artID = ?, quantity = ?, price=? where cartID = ?;";
    private static final String DELETE_CART_ITEM = "delete from cart where cartID = ?;";

    private static final String CART_COUNT = "SELECT count(*) FROM cart";

//    public int countCart() {
//        try {
//            Connection connection = DBconnect.getConn();
//            PreparedStatement preparedStatement = connection.prepareStatement(CART_COUNT);
//            ResultSet rs = preparedStatement.executeQuery();
//            int count = 0;
//            if (rs.next()) {
//                count = rs.getInt(1);
//            }
//            return count;
//        } catch (Exception e) {
//            System.out.println(e);
//        }
//        return 0;
//    }

    public List<Cart> selectAllCart() {
        List<Cart> allCart = new ArrayList<>();
        try {
            Connection connection = DBconnect.getConn();
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_CART);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("CartID");
                int user_id = rs.getInt("userID");
                int book_id = rs.getInt("artID");
                int quantity = rs.getInt("quantity");
                Double price = rs.getDouble("price");
                allCart.add(new Cart(id, user_id, book_id, quantity,price));
            }

        } catch (Exception e) {
            System.out.println(e);
        }
        return allCart;
    }

    public Cart selectCart(int id) {
        Cart cartItem = new Cart();
        try {
            Connection connection = DBconnect.getConn();
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_CART_BY_ID);
            preparedStatement.setInt(1, id);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                int user_id = rs.getInt("userID");
                int art_id = rs.getInt("artID");
                int quantity = rs.getInt("quantity");
                Double price = rs.getDouble("price");
                cartItem = new Cart(id, user_id, art_id, quantity, price);
            }

        } catch (Exception e) {
            System.out.println(e);
        }
        return cartItem;
    }

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
       

                userCart.add(new Cart(id, userID, art_id, quantity, price,art_name,artist_name,artprice));
            }

        } catch (Exception e) {
            System.out.println(e);
        }
        return userCart;
    }

//    public List<Cart> selectCartByUserId(int user_id) {
//        List<Cart> userCart = new ArrayList<>();
//        try {
//            Connection connection = DBconnect.getConn();
//            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_CART_BY_USER_ID);
//            preparedStatement.setInt(1, user_id);
//            ResultSet rs = preparedStatement.executeQuery();
//            while (rs.next()) {
//                int id = rs.getInt("id");
//                int book_id = rs.getInt("book_id");
//                int quantity = rs.getInt("quantity");
//                Double price = rs.getDouble("price");
//                userCart.add(new Cart(id, user_id, book_id, quantity, price));
//            }
//
//        } catch (Exception e) {
//            System.out.println(e);
//        }
//        return userCart;
//    }
//    
    
//    
    public Cart selectCartByBookAndUserId(int book_id, int user_id) {
        Cart cartItem = new Cart();
        try {
            Connection connection = DBconnect.getConn();
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_CART_BY_BOOK_AND_USER_ID);
            preparedStatement.setInt(1, user_id);
            preparedStatement.setInt(2, book_id);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("id");
                Double quantity = rs.getDouble("quantity");
                Date created_date = rs.getDate("created_date");
                cartItem = new Cart(id, user_id, book_id, quantity);
            }

        } catch (Exception e) {
            System.out.println(e);
        }
        return cartItem;
    }

    public void insertIntoCart(Cart newCartItem) {
        try {
            Connection connection = DBconnect.getConn();
            PreparedStatement preparedStatement = connection.prepareStatement(INSERT_INTO_CART);
//            preparedStatement.setInt(1, newCartItem.getCartID());
            preparedStatement.setInt(1, newCartItem.getArtID());
            preparedStatement.setInt(2, newCartItem.getUserID());
            preparedStatement.setInt(3, newCartItem.getQuantity());
            preparedStatement.setDouble(4, newCartItem.getPrice());
//            preparedStatement.setDate(4, newCartItem.getCreated_date());
            preparedStatement.executeUpdate();

        } catch (Exception e) {
            System.out.println(e);
        }
    }

    
    public boolean updateCart(Cart cartUpdate) {
        boolean updated = false;
        try {
            Connection connection = DBconnect.getConn();
            PreparedStatement preparedStatement = connection.prepareStatement(UPDATE_CART);
            preparedStatement.setInt(1, cartUpdate.getUserID());
            preparedStatement.setInt(2, cartUpdate.getArtID());
            preparedStatement.setInt(3, cartUpdate.getQuantity());
            preparedStatement.setDouble(4, cartUpdate.getPrice());
            preparedStatement.setInt(5, cartUpdate.getCartID());
            updated = preparedStatement.executeUpdate() > 0;
        } catch (Exception e) {
            System.out.println(e);
        }
        return updated;
    }

    public boolean deleteCartById(int id) {
        boolean deleted = false;
        try {
            Connection connection = DBconnect.getConn();
            PreparedStatement preparedStatement = connection.prepareStatement(DELETE_CART_ITEM);
            preparedStatement.setInt(1, id);
            deleted = preparedStatement.executeUpdate() > 0;
        } catch (Exception e) {
            System.out.println(e);
        }
        return deleted;
    }
    
}
