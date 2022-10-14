/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.model;

/**
 *
 * @author Prab1n
 */
public class Cart {

    private int cartID;
    private int artID;
    private int userID;
    private String artName;
    private String artistName;
    private Double price;
//;
//    private Double totalPrice;

    private int quantity;

    public Cart(int cartID, int user_id, int art_id, int quantity, Double price,
            String art_name, String artist_name, Double artprice) {
        super();
        this.cartID = cartID;
        this.userID = user_id;
        this.artID = art_id;
        this.quantity = quantity;

        this.artName = art_name;
        this.artistName = artist_name;
        this.price = artprice;
        this.price = price;

    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public Cart() {

    }

    public Cart(int cartID,int userID, int artID,  int quantity, Double price) {
        this.cartID = cartID;
        this.artID = artID;
        this.userID = userID;
//        this.artName = artName;
//        this.artistName = artistName;
        this.quantity = quantity;
        this.price = price;
//        this.totalPrice = totalPrice;
    }

    public Cart(int artID, int userID, int quantity, Double price) {

        this.artID = artID;
        this.userID = userID;
//        this.artName = artName;
//        this.artistName = artistName;
        this.quantity = quantity;
        this.price = price;
//        this.totalPrice = totalPrice;

    }

    public int getCartID() {
        return cartID;
    }

    public void setCartID(int cartID) {
        this.cartID = cartID;
    }

    public int getArtID() {
        return artID;
    }

    public void setArtID(int artID) {
        this.artID = artID;
    }

    public int getUserID() {
        return userID;
    }

    public void setUserID(int userID) {
        this.userID = userID;
    }
//
//    public String getArtName() {
//        return artName;
//    }
//
//    public void setArtName(String artName) {
//        this.artName = artName;
//    }
//
//    public String getArtistName() {
//        return artistName;
//    }
//
//    public void setArtistName(String artistName) {
//        this.artistName = artistName;
//    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

//    public Double getTotalPrice() {
//        return totalPrice;
//    }
//
//    public void setTotalPrice(Double totalPrice) {
//        this.totalPrice = totalPrice;
//    }

    /**
     * @return the artName
     */
    public String getArtName() {
        return artName;
    }

    /**
     * @param artName the artName to set
     */
    public void setArtName(String artName) {
        this.artName = artName;
    }

    /**
     * @return the artistName
     */
    public String getArtistName() {
        return artistName;
    }

    /**
     * @param artistName the artistName to set
     */
    public void setArtistName(String artistName) {
        this.artistName = artistName;
    }
}
