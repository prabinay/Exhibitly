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
    
    
    public List<ArtDetails> selectArts() {

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
    
    public List<ArtDetails> viewArtDetails() {

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
}
