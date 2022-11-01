/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.model;

import java.sql.Date;

/**
 *
 * @author Prab1n
 */
public class OrderList {
    private String orderID;
    private int orderlistID;
    private int cartID;
    private int artID;
    private int quantity;
    private Double total_price;
    private Double unit_price;
    
    private String payment;
    private String address;
//    private String country;
//    private String state;
//    private String postcode;
    private String contactno;
    private Date order_date;
    private String status;

   

    public OrderList(String orderid, int quantity, Double price, int artid, double total_price) {
        super();
        this.orderID = orderid;
        this.artID = artid;
        this.quantity = quantity;
        this.unit_price = price;
        this.total_price = total_price;
        
    }

    public OrderList() {
        
    }
    
    
    
    /**
     * @return the orderID
     */
    public String getOrderID() {
        return orderID;
    }

    /**
     * @param orderID the orderID to set
     */
    public void setOrderID(String orderID) {
        this.orderID = orderID;
    }

    /**
     * @return the orderlistID
     */
    public int getOrderlistID() {
        return orderlistID;
    }

    /**
     * @param orderlistID the orderlistID to set
     */
    public void setOrderlistID(int orderlistID) {
        this.orderlistID = orderlistID;
    }

    /**
     * @return the cartID
     */
    public int getCartID() {
        return cartID;
    }

    /**
     * @param cartID the cartID to set
     */
    public void setCartID(int cartID) {
        this.cartID = cartID;
    }

    /**
     * @return the artID
     */
    public int getArtID() {
        return artID;
    }

    /**
     * @param artID the artID to set
     */
    public void setArtID(int artID) {
        this.artID = artID;
    }

    /**
     * @return the quantity
     */
    public int getQuantity() {
        return quantity;
    }

    /**
     * @param quantity the quantity to set
     */
    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    /**
     * @return the total_price
     */
    public Double getTotal_price() {
        return total_price;
    }

    /**
     * @param total_price the total_price to set
     */
    public void setTotal_price(Double total_price) {
        this.total_price = total_price;
    }

    /**
     * @return the unit_price
     */
    public Double getUnit_price() {
        return unit_price;
    }

    /**
     * @param unit_price the unit_price to set
     */
    public void setUnit_price(Double unit_price) {
        this.unit_price = unit_price;
    }

    /**
     * @return the payment
     */
    public String getPayment() {
        return payment;
    }

    /**
     * @param payment the payment to set
     */
    public void setPayment(String payment) {
        this.payment = payment;
    }

    /**
     * @return the address
     */
    public String getAddress() {
        return address;
    }

    /**
     * @param address the address to set
     */
    public void setAddress(String address) {
        this.address = address;
    }

    /**
     * @return the contactno
     */
    public String getContactno() {
        return contactno;
    }

    /**
     * @param contactno the contactno to set
     */
    public void setContactno(String contactno) {
        this.contactno = contactno;
    }

    /**
     * @return the order_date
     */
    public Date getOrder_date() {
        return order_date;
    }

    /**
     * @param order_date the order_date to set
     */
    public void setOrder_date(Date order_date) {
        this.order_date = order_date;
    }

    /**
     * @return the status
     */
    public String getStatus() {
        return status;
    }

    /**
     * @param status the status to set
     */
    public void setStatus(String status) {
        this.status = status;
    }
}
