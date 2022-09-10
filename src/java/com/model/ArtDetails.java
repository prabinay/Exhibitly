/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.model;

/**
 *
 * @author Prab1n
 */
public class ArtDetails {

    private int artID;
    private String artName;
    private String artistName;
    private String price;
    private String artCategory;
    private String status;
    private String photoName;
    private String email;

    public ArtDetails() {
        super();
    }

    public ArtDetails(int artID, String artName, String artistName, String price, String artCategory, String status, String photoName, String email) {
        this.artID = artID;
        this.artName = artName;
        this.artistName = artistName;
        this.price = price;
        this.artCategory = artCategory;
        this.status = status;
        this.photoName = photoName;
        this.email = email;
    }

    public ArtDetails(String artName, String artistName, String price, String artCategory, String status, String photoName, String email) {

        this.artName = artName;
        this.artistName = artistName;
        this.price = price;
        this.artCategory = artCategory;
        this.status = status;
        this.photoName = photoName;
        this.email = email;
    }

    public ArtDetails(int id, String artName, String artistName, String price, String categories, String status, String photo) {
        this.artID = id;
        this.artName = artName;
        this.artistName = artistName;
        this.price = price;
        this.artCategory = categories;
        this.status = status;
        this.photoName = photo;

    }

    public ArtDetails(int id, String photo, String aname, String atname, String category, String price) {
        this.artID = id;

        this.artName = aname;

        this.artistName = atname;

        this.price = price;

        this.artCategory = category;

        this.photoName = photo;
    }

    public int getArtID() {
        return artID;
    }

    public void setArtID(int artID) {
        this.artID = artID;
    }

    public void setArtName(String artName) {
        this.artName = artName;
    }

    public void setArtistName(String artistName) {
        this.artistName = artistName;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public void setArtCategory(String artCategory) {
        this.artCategory = artCategory;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public void setPhotoName(String photoName) {
        this.photoName = photoName;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getArtName() {
        return artName;
    }

    public String getArtistName() {
        return artistName;
    }

    public String getPrice() {
        return price;
    }

    public String getArtCategory() {
        return artCategory;
    }

    public String getStatus() {
        return status;
    }

    public String getPhotoName() {
        return photoName;
    }

    public String getEmail() {
        return email;
    }

}
