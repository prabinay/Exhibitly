/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.dao;

import java.sql.Connection;
import com.model.User;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
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

    @Override
    public User login(String email, String password) {
        User us=null;
        try{
            String sql ="select *from user where email =? and pwd=? ";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1,email);
            ps.setString(2,password);
            
            ResultSet rs= ps.executeQuery();
            while(rs.next()){
                us=new User();
                us.setId(rs.getInt(1));
                us.setName(rs.getString(2));
                us.setEmail(rs.getString(3));
                us.setPhone_no(rs.getString(4));                
                us.setPwd(rs.getString(5));
                us.setAddress(rs.getString(6));
                us.setCity(rs.getString(7));
            }
            
        }catch(Exception e){
            e.printStackTrace();
        }
        return us;
    }
}
