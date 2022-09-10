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
import java.util.List;

public interface ArtDao {

    public boolean addArts(ArtDetails ad);

    public List<ArtDetails> getAllArts();
    
    public List<ArtDetails> getNewArt();
    
 

}


