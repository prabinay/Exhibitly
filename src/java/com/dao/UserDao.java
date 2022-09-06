/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.dao;
 
import com.model.User;
/**
 *
 * @author Prab1n
 */
public interface UserDao {
    public boolean userRegister(User us);
    
    public User login(String email, String password);
}
