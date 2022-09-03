/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.dao;

import java.sql.Connection;
import com.model.User;
import java.sql.PreparedStatement;
/**
 *
 * @author Prab1n
 */
public class UserDaoImpl implements UserDao{
    private Connection conn;
    
    public UserDaoImpl(Connection conn){
    super();
    this.conn= conn;
    }
    
    @Override
    public boolean userRegister(User us){
        boolean f = false;
        
        try{
            String sql="insert into user(name,email,phone_no,pwd) values(?,?,?,?)";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1,us.getName());
            ps.setString(2,us.getEmail());
            ps.setString(3,us.getPhone_no());
            ps.setString(4,us.getPwd());
            
            int i=ps.executeUpdate();
            if(i==1){
                f = true;
            }
            
            
        }catch(Exception e){
            e.printStackTrace();
        }
        return f;
    }
    
}
