<%-- 
    Document   : view_books
    Created on : Sep 10, 2022, 1:36:37 AM
    Author     : Prab1n
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page  isELIgnored="false"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Art Details</title>
        <%@include file="all_components/allCss.jsp"%>
    </head>
    <body style="background-color: #f0f1f2;">
        <%@include file="all_components/navbar.jsp"%>

        <div class="container">
            <div class="row p-5">

                <c:forEach var="art" items="${artlist}">

                    <div class="col-md-6 text-center p-5 border bg-white">
                        <img src="img/arts/${art.photoName}" style="height:300px; width:300px;"><br>
                        <h4>Art Name : ${art.artName}</h4>
                        <h4>Artist Name : ${art.artistName}</h4>
                        <h4>Category : ${art.artCategory}</h4>
                    </div>

                    <div class="col-md-6 text-center p-5 border bg-white">
                        <h2>${art.artName}</h2>
                        <div class="row">
                            <div class="col-md-4 text-danger text-center p-2">
                                <i class="fas fa-money-bill-wave fa-2x"></i>
                                <p>Cash on Delivery</p>
                            </div>
                            <div class="col-md-4 text-danger text-center p-2">
                                <i class="fas fa-undo-alt fa-2x"></i>
                                <p>Return Available</p>
                            </div>
                            <div class="col-md-4 text-danger text-center p-2">
                                <i class="fas fa-truck-moving fa-2x"></i>s
                                <p> Free Shipping</p>
                            </div>
                        </div>
                        <div class ="col">

                            <a href=""class="btn btn-primary"> <i class="fas fa-cart-plus"></i>Add cart</a>
                            <a href=""class="btn btn-danger"> <i class="fas fa-dollar-sign"></i>${art.price}</a>
                        </div> 
                    </div>
                </div>
            </c:forEach>   

        </div>
    </body>


    <%@include file="all_components/footer.jsp"%>
</html>
