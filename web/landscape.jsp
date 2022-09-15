<%-- 
    Document   : landscape.jsp
    Created on : Sep 11, 2022, 3:13:33 AM
    Author     : Prab1n
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page  isELIgnored="false"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Landscape Arts</title>
        <%@include file="all_components/allCss.jsp"%>     
    </head>
    <body>
        <%@include file="all_components/navbar.jsp"%>      
        <div class="container" >
            <h3 class="text-center">All Landscape Arts</h3><br>
            <div class="row">
                <c:forEach var="art" items="${artlist}">
                    <div class="col-md-3 p-1">


                        <div class="card">
                            <div class="card-body text-center">
                                <img alt="" src="img/arts/<c:out value="${art.photoName}"/>" style="
                                     width:200px; height:200px" class="img-thumblin">
                                <p>${art.artName}<br>
                                    ${art.artistName} <br>
                                    ${art.artCategory}</p>
                                <div class="col">
                                    <a href="cart?action=addtocart&id=${art.artID}" class="btn btn-danger btn-sm ml-2">  <i class="fas fa-cart-plus"></i>Add</a>
                                    <a href="ViewArtDetails?id=${art.artID}" class="btn btn-success btn-sm ml-1"> View Details</a>
                                    <a  class="btn btn-danger btn-sm ml-1"> <i class="fas fa-dollar-sign"></i>${art.price}</a>
                                </div>
                            </div>
                        </div>


                    </div>
                </c:forEach>
            </div>
        </div>
    </body>
</html>
