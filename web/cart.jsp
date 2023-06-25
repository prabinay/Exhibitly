<%-- 
    Document   : cart
    Created on : Sep 11, 2022, 2:17:39 AM
    Author     : Prab1n
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page  isELIgnored="false"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>My Cart</title>
        <link rel="icon" href="https://img.icons8.com/fluency/48/000000/van-gogh.png" type="image/icon type">

        <%@include file="all_components/allCss.jsp"%>      
        <style type="text/css">
            .table tbody td{
                vertical-align: middle;
            }
            .btn-incre, .btn-decre{
                box-shadow: none;
                font-size: 25px;
                .body{
                    height:100%;
                }
            }
        </style>
    </head>

    <body style="background-color: #f0f1f2;">
        <%@include file="all_components/navbar.jsp"%>      

        <div class="container p-3">
            <div class="text-center mb-8">
                <h1 class="text-4xl font-bold mb-2">My Cart</h1>
                <div class="w-20 border-b-2 border-gray-400 mx-auto"></div>
            </div>
            <table class="table table-light">
                <thead>
                    <!--<th>Photo</th>-->
                <th>Art Name</th>
                <th>Artist Name</th>
                <th>Price</th>
                <th>Quantity</th>
                <th>Action</th>
                </thead>
                <tbody>
                    <!--total price calculation-->
                    <c:set var="total_price" value="${0}" />

                    <c:forEach var="cartItem" items="${cartItemList}">
                        <c:set var="total_price" value="${total_price+cartItem.price}" />

                        <tr>
                            <td>${cartItem.artName}</td>
                            <td>${cartItem.artistName}</td>
                            <td>Rs.${cartItem.price}</td>
                            <td>${cartItem.quantity}
                                <!--  <form action="" method="post" class="form-inline">
                                           <input type="hidden" name="id" value="1" class="form-input">
                                            <div class="form-group d-flex justify-content-between">
                                            <a class="btn btn-sm btn-incre" href=""> <i class="fas fa-plus-square"></i> </a> 
                                                <input type="text" name="quantity" class="form-control" value="1" readonly>
                                        <a class="btn btn-sm btn-decre" href=""> <i class="fas fa-minus-square"></i> </a>
                                                 </div>
                                        </form>-->
                            </td>
                            <td><a href="cart?action=remove&id=${cartItem.cartID}" class="btn btn-sm btn-danger">Remove</a></td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>

            <div class="float-right w-full py-3" style="text-align:right;">
                <div class="text-right">
                    <h3 style="margin-bottom: 10px;">Total Items: ${cartItemList.size()}</h3>
                    <h3 style="margin-bottom: 10px;">Total Price: Rs.${total_price}</h3>
                    <a class="btn btn-primary w-25" href="checkout" style="margin-bottom: 10px;">Check Out</a>
                </div>
            </div>




        </div>




        <div style="margin-top:185px;">
            <%@include file="all_components/footer.jsp"%>  
        </div>
    </body>
</html>
