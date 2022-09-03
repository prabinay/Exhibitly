/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.model;

/**
 *
 * @author Prab1n
 */
public class User {
    private int id;
    private String name;
    private String email;
    private String phone_no;
    private String pwd;
    private String address;
    private String city;
    
    public User(){
    super();
}
    public void setEmail(String email) {
        this.email = email;
    }

    public String getEmail() {
        return email;
    }
    public void setId(int id) {
        this.id = id;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setPhone_no(String phone_no) {
        this.phone_no = phone_no;
    }

    public void setPwd(String pwd) {
        this.pwd = pwd;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public int getId() {
        return id;
    }

    

    public String getName() {
        return name;
    }

    public String getPhone_no() {
        return phone_no;
    }

    public String getPwd() {
        return pwd;
    }

    public String getAddress() {
        return address;
    }

    public String getCity() {
        return city;
    }
    
    @Override
    public String toString() {
        return "user{" + "id=" + id + ", name=" + name + ", phone_no=" +
                phone_no + ", pwd=" + pwd + ", address=" + address + ", city=" + city + '}';
    }
}
