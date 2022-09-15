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
public class ViewbyCategoryDao {

    public List<ArtDetails> selectHomeArts() {

        List<ArtDetails> homelist = new ArrayList<>();
        ArtDetails ad = null;

        try {
            String sql = "select * from  art_details where artCategory='Landscape'";
            Connection conn = DBconnect.getConn();
            PreparedStatement ps = conn.prepareStatement(sql);

            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                ad = new ArtDetails();
                ad.setArtID(rs.getInt("artID"));
                ad.setPhotoName(rs.getString("photo"));
                ad.setArtName(rs.getString("artName"));
                ad.setArtistName(rs.getString("artistName"));
                ad.setArtCategory(rs.getString("artCategory"));
                ad.setPrice(rs.getString("price"));
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

    public ArtDetails viewArtDetails(int artID) {
//
        ArtDetails homelist = new ArtDetails();
        ArtDetails ad = null;
        System.out.println(artID);

        try {
            String sql = "select * from art_details where artID =?";
            Connection conn = DBconnect.getConn();
            PreparedStatement ps = conn.prepareStatement(sql);

            ps.setInt(1, artID);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
//                ad = new ArtDetails();
//                ad.setArtID(rs.getInt(1));
                int id = rs.getInt("artID");
                String photo = rs.getString("photo");
                String aname = rs.getString("artName");
                String atname = rs.getString("artistName");
                String category = rs.getString("artCategory");
                String price = rs.getString("price");
//   ad.setArtCategory(rs.getString("allCategory"));
//                ad.setStatus(rs.getString("status"));
//                ad.setEmail(rs.getString("email"));
                homelist = (new ArtDetails(id, photo, aname, atname, category, price));

            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return homelist;
    }
}
