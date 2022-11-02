/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.dao;

import com.DB.DBconnect;
import com.model.OrderDetails;
import com.model.OrderList;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Prab1n
 */
public class OrderlistDao {

    public void insertOrderlist(OrderList orderlist) {

        String INSERT_INTO_ORDER = "insert into order_list ( orderID, artID,quantity, "
                + "total_price,unit_price) values (?,?,?,?,?)";

        try {
            Connection connection = DBconnect.getConn();
            PreparedStatement preparedStatement = connection.prepareStatement(INSERT_INTO_ORDER);
//            preparedStatement.setInt(1, newCartItem.getCartID());
            preparedStatement.setString(1, orderlist.getOrderID());
            preparedStatement.setInt(2, orderlist.getArtID());
            preparedStatement.setInt(3, orderlist.getQuantity());
            preparedStatement.setDouble(4, orderlist.getTotal_price());
            preparedStatement.setDouble(5, orderlist.getUnit_price());

            preparedStatement.executeUpdate();

        } catch (Exception e) {
            System.out.println(e);
        }
    }
    

    public List<OrderList> selectAllOrderlist() {
        String SELECT_ORDERS = "select * from order_list "
                + "INNER JOIN orders ON  order_list.orderID= orders.orderID "
                + "INNER JOIN art_details ON order_list.artID = art_details.artID;";

        List<OrderList> list = new ArrayList<>();
        OrderList ad = null;
        try {
//            String sql = "select * from orders";
            Connection conn = DBconnect.getConn();
            PreparedStatement ps = conn.prepareStatement(SELECT_ORDERS);

            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                ad = new OrderList();
                ad.setOrderID(rs.getString("orderID"));
                ad.setArtID(rs.getInt("artID"));
                ad.setQuantity(rs.getInt("quantity"));
                ad.setTotal_price(rs.getDouble("total_price"));
                ad.setUnit_price(rs.getDouble("unit_price"));
                ad.setPayment(rs.getString("payment"));
                ad.setAddress(rs.getString("address"));
                ad.setContactno(rs.getString("contact_no"));
                ad.setOrder_date(rs.getDate("order_date"));
                ad.setStatus(rs.getString("order_status"));
                ad.setArtName(rs.getString("artName"));
                ad.setArtistName(rs.getString("artistName"));
                ad.setArtCategory(rs.getString("artCategory"));
                ad.setPhoto(rs.getString("photo"));
                

                list.add(ad);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }
}
