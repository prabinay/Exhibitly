/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.dao;

import com.model.User;
import com.DB.DBconnect;
import com.model.ArtDetails;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Logger;
import java.util.logging.Level;

/**
 *
 * @author Prab1n
 */
public class ArtCRUDdao {


    private static final String SELECT_ART_BY_ID = "select artID, artName,artistName,price,artCategory,"
            + "status,photo from art_details where artID =?";

    private static final String DELETE_ARTS_SQL = "delete from art_details where artID = ?;";
    private static final String EDIT_ARTS_SQL = "update art_details set artName = ?,artistName= ?, price =? , artCategory=?, "
            + "status=?, photo=?, email=? where id = ?;";


    public ArtCRUDdao() {
    }


    public static ArtDetails selectArt(int id) throws ClassNotFoundException {
        ArtDetails art = null;
        // Step 1: Establishing a Connection
        try ( Connection connection = DBconnect.getConn(); // Step 2:Create a statement using connection object
                  PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ART_BY_ID);) {
            preparedStatement.setInt(1, id);
            System.out.println(preparedStatement);
            // Step 3: Execute the query or update query
            ResultSet rs = preparedStatement.executeQuery();

            // Step 4: Process the ResultSet object.
            while (rs.next()) {
                String artname = rs.getString("artName");
                String artistname = rs.getString("artistName");
                String price = rs.getString("price");
                String artcategory = rs.getString("artCategory");
                String status = rs.getString("status");
                String photoname = rs.getString("photo");

                art = new ArtDetails(id, artname, artistname, price, artcategory, status, photoname);
            }
        } catch (SQLException e) {
            
        }
        return art;
    }

    public static boolean deleteArt(int id) throws SQLException, ClassNotFoundException {
        boolean rowDeleted;
        try ( Connection connection = DBconnect.getConn();  PreparedStatement statement = connection.prepareStatement(DELETE_ARTS_SQL);) {
            statement.setInt(1, id);
            rowDeleted = statement.executeUpdate() > 0;
        }
        return rowDeleted;
    }

    public static boolean editArt(ArtDetails art) throws SQLException, ClassNotFoundException {
        boolean rowUpdated;
        try ( Connection connection = DBconnect.getConn();  PreparedStatement statement = connection.prepareStatement(EDIT_ARTS_SQL);) {
            statement.setString(1, art.getArtName());
            statement.setString(2, art.getArtistName());
            statement.setString(3, art.getPrice());
            statement.setString(4, art.getArtCategory());
            statement.setString(5, art.getStatus());
            statement.setString(6, art.getPhotoName());
            statement.setString(7, art.getEmail());

            rowUpdated = statement.executeUpdate() > 0;
        }
        return rowUpdated;
    }

    private void printSQLException(SQLException ex) {
        for (Throwable e : ex) {
            if (e instanceof SQLException) {
                e.printStackTrace(System.err);
                System.err.println("SQLState: " + ((SQLException) e).getSQLState());
                System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
                System.err.println("Message: " + e.getMessage());
                Throwable t = ex.getCause();
                while (t != null) {
                    System.out.println("Cause: " + t);
                    t = t.getCause();
                }
            }
        }
    }
}

