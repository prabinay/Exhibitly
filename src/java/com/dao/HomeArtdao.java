/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.dao;

import com.DB.DBconnect;
import com.model.ArtDetails;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Prab1n
 */
public class HomeArtdao {
         public List<ArtDetails> selectHomeArts() {

        List<ArtDetails> homelist = new ArrayList<>();
        ArtDetails ad = null;
        
        try {
            String sql = "select * from  art_details";
            Connection conn = DBconnect.getConn();
            PreparedStatement ps = conn.prepareStatement(sql);

            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                ad = new ArtDetails();
//                ad.setArtID(rs.getInt(1));
                ad.setArtName(rs.getString(1));
                ad.setArtistName(rs.getString(2));
                ad.setPrice(rs.getString(3));
                ad.setArtCategory(rs.getString(4));
//                ad.setStatus(rs.getString(6));
//                ad.setPhotoName(rs.getString(7));
//                ad.setEmail(rs.getString(8));
                homelist.add(ad);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return homelist;
    }
}
