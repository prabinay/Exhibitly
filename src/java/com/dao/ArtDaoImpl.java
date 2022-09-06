/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.dao;

/**
 *
 * @author Prab1n
 */

import com.model.ArtDetails;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class ArtDaoImpl implements ArtDao{
    private Connection conn;

    public ArtDaoImpl(Connection conn) {
        super();
        this.conn = conn;
    }
    
    @Override
    public boolean addArts(ArtDetails ad){
        boolean f = false;
        try{
            String sql ="insert into art_details ( artName, artistName, price, artCategory, status, photo, email) values (?,?,?,?,?,?,?)";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, ad.getArtName() );
            ps.setString(2, ad.getArtistName() );
            ps.setString(3, ad.getPrice());
            ps.setString(4, ad.getBookCategory() );
            ps.setString(5, ad.getStatus() );
            ps.setString(6, ad.getPhotoName() );
            ps.setString(7, ad.getEmail() );
            
            int i =ps.executeUpdate();
            
            if(i==1){
                f=true;
            }
        }
        catch(Exception e){
            e.printStackTrace();
        }
        return f;
    }
}
