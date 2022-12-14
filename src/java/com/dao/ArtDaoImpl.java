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
import java.util.ArrayList;
import java.util.List;

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
            ps.setString(4, ad.getArtCategory() );
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
    
    public boolean UpdateArts(ArtDetails ad){
        boolean f = false ;
        try{
            String sql ="update art_details set artName = ?,artistName= ?, price =? , artCategory=?, "
            + "status=?, photo=?, email=? where artID = ?;";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, ad.getArtName() );
            ps.setString(2, ad.getArtistName() );
            ps.setString(3, ad.getPrice());
            ps.setString(4, ad.getArtCategory() );
            ps.setString(5, ad.getStatus() );
            ps.setString(6, ad.getPhotoName() );
            ps.setString(7, ad.getEmail() );
            ps.setInt(8, ad.getArtID());
            
            int i =ps.executeUpdate() ;
            
            if(i==1){
                f=true;
            }

//            f= ps.executeUpdate() > 0;
        }
        catch(Exception e){
            e.printStackTrace();
        }
        return f;
    }


    @Override
    public List<ArtDetails> getAllArts() {
       List<ArtDetails> list = new ArrayList<ArtDetails>();
       ArtDetails ad= null;
        try{
            String sql="select * from  art_details";
            PreparedStatement ps = conn.prepareStatement(sql);
            
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                ad = new ArtDetails();
                ad.setArtID(rs.getInt(1));
                ad.setArtName(rs.getString(2));
                ad.setArtistName(rs.getString(3));
                ad.setPrice(rs.getString(4));
                ad.setArtCategory(rs.getString(5));
                ad.setStatus(rs.getString(6));
                ad.setPhotoName(rs.getString(7));
                ad.setEmail(rs.getString(8));
                list.add(ad);
            }
            
            
        }catch(Exception e){
            e.printStackTrace();
        }
        return list;
    }

    @Override
    public List<ArtDetails> getNewArt() {
       List<ArtDetails> list = new ArrayList<ArtDetails>();
       ArtDetails ad= null;
        try{
            String sql="select * from  art_details where bookCategory =? and status =?";
            PreparedStatement ps = conn.prepareStatement(sql);
            
            ps.setString(1,"Landscape");
            ps.setString(2, "Active");
            
            ResultSet rs = ps.executeQuery();
            int i=1;
            
            while(rs.next() && 1<=4){
                ad = new ArtDetails();
                ad.setArtID(rs.getInt(1));
                ad.setArtName(rs.getString(2));
                ad.setArtistName(rs.getString(3));
                ad.setPrice(rs.getString(4));
                ad.setArtCategory(rs.getString(5));
                ad.setStatus(rs.getString(6));
                ad.setPhotoName(rs.getString(7));
                ad.setEmail(rs.getString(8));
                list.add(ad);
                i++;
            }
            
            
        }catch(Exception e){
            e.printStackTrace();
        }
        return list;
    }
    
    
}
