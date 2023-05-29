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

        <c:if test="${errorMessage != null}">
            ${errorMessage}

        </c:if>

        <c:if test="${successMessage != null}">
            ${successMessage}

        </c:if>
        <div class="container">
            <div class="row p-5">

                <div class="col-md-6 text-center p-5 border bg-white">
                    <img src="img/arts/${artlist.photoName}" style="height:300px; width:300px;"><br>
                    <h3>Art Name : ${artlist.artName}</h3>
                    <h3>Artist Name : ${artlist.artistName}</h3>
                    <h3>Category : ${artlist.artCategory}</h3>
                </div>

                <div class="col-md-6 text-center p-5 border bg-white">
                    <h2>${artlist.artName}</h2>
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
                        
                        <a href="cart?action=addtocart&id=${artlist.artID}" class="btn btn-primary"> <i class="fas fa-cart-plus"></i>Add cart</a>
                        <a href="" class="btn btn-danger"> Rs.${artlist.price}</a>
                    </div> 
                </div>
            </div>


        </div>
    </body>


    <%@include file="all_components/footer.jsp"%>
</html>
