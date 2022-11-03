/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.dao;


import com.model.ArtDetails;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.DB.DBconnect;
import com.model.OrderDetails;
import java.sql.Connection;

/**
 *
 * @author Prab1n
 */
public class OrdersDao {

    public List<OrderDetails> selectAllOrders() {

        
        List<OrderDetails> list = new ArrayList<>();
        OrderDetails ad = null;
        try {
            String sql = "select * from orders ";
            Connection conn = DBconnect.getConn();
            PreparedStatement ps = conn.prepareStatement(sql);

            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                ad = new OrderDetails();
                ad.setOrderID(rs.getString(1));
                ad.setAddress(rs.getString(2));
                ad.setPayment(rs.getString(3));
                ad.setCountry(rs.getString(4));
                ad.setState(rs.getString(5));
                ad.setPostcode(rs.getString(6));
                ad.setContactno(rs.getString(7));
                ad.setOrder_date(rs.getDate(8));
                ad.setStatus(rs.getString(9));
//                ad = new OrderDetails();
//                ad.setArtID(rs.getInt(1));
//                ad.setArtName(rs.getString(2));
//                ad.setArtistName(rs.getString(3));
//                ad.setPrice(rs.getString(4));
//                ad.setArtCategory(rs.getString(5));
//                ad.setStatus(rs.getString(6));
//                ad.setPhotoName(rs.getString(7));
//                ad.setEmail(rs.getString(8));
                list.add(ad);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }
}
