<%-- 
    Document   : allBooks
    Created on : Sep 6, 2022, 11:54:07 PM
    Author     : Prab1n
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page  isELIgnored="false"%>

<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>

<%@page import="java.sql.*"%>
<%@page import="com.dao.ArtDaoImpl" %>
<%@page import="com.DB.DBconnect" %>
<%@page import="" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin: All arts</title>
        <%@include file="allCss.jsp"%>
    </head>
    <body>
        <%@include file="navbar.jsp"%>
        <h3 class="text-center">Hello Admin</h3>

        <table class="table ">
            <thead class="bg-primary">
                <tr>
                    <th scope="col">ID</th>
                    <th scope="col">Image</th>
                    <th scope="col">Art Name</th>
                    <th scope="col">Artist Name</th>
                    <th scope="col">Price</th>
                    <th scope="col">Categories</th>
                    <th scope="col">Status</th>
                    <th scope="col">Action</th>
                </tr>
            </thead>
            <tbody>
                
                <%  
                    ArtDaoImpl dao = new ArtDaoImpl(DBconnect.getConn());
                    List<ArtDetails> list = dao.getAllArts();
                    for(ArtDetails ad : list){
                    %>
                <tr>
                    <td><%=ad.getArtID() %></td>
                    <td><img src="../img/arts/<%=ad.getPhotoName() %>" style=" width:50px; height:50px;"></td>
                    <td><%=ad.getArtName() %></td>
                    <td><%=ad.getArtistName() %></td>
                    <td><%=ad.getPrice() %></td>
                    <td><%=ad.getArtCategory() %></td>
                    <td><%=ad.getStatus() %></td>
                    <td>
                        <a href="" class="btn btn-sm btn-primary"> Edit </a>
                        <a href="" class="btn btn-sm btn-danger"> Delete </a>
                    </td>
                </tr>
                <% 
                    }
%>
                
            </tbody>
        </table>
        
        <div style="margin-top:220px;">
            <%@include file="footer.jsp"%>
        </div>
    </body>
</html>
