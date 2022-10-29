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

        <div class="container" >


            <div class="d-flex py-3">
                <h3> Total Price: $723 </h3> <a class="mx-3 btn btn-primary" href="">Check Out </a>
            </div>



            <table class="table table-loght">
                <thead>
                    <!--<th>Photo</th>-->
                <th>Art Name</th>
                <th>Artist Name</th>

                <th>Price</th>
                <th>Quantity</th>
                <th>Action</th>
                </thead>

                <tbody>
                    <c:forEach var="cartItem" items="${cartItemList}">
                        <tr>

                            <td>${cartItem.artName}</td>
                            <td>${cartItem.artistName}</td>

                            <td>${cartItem.price}</td>
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
                            <td><a href="cart?action=remove&id=${cartItem.cartID}" class="btn btn-sm btn-danger" >Remove</td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>

            <!--                <div class="col-md-6">
                                <div class="card">
                                    <div class="card-body">
                                        <h3 class="text-center text-success">Your Order Details</h3><br> 
            
                                        <form>
                                            <div class="form-row">
                                                <div class="form-group col-md-6">
                                                    <label for="exampleInputPassword1" class="form-label">Full Name</label>
                                                    <input type="text" class="form-control" id="exampleInputPassword1" required="required" name="name">
                                                </div>
            
                                                <div class="form-group col-md-6">
                                                    <label for="exampleInputPassword1" class="form-label">Name</label>
                                                    <input type="text" class="form-control" id="exampleInputPassword1" required="required" >
                                                </div>
                                            </div>
            
                                            <div class="form-row">
                                                <div class="form-group col-md-6">
                                                    <label for="exampleInputPassword1" class="form-label">Email</label>
                                                    <input type="email" class="form-control" id="exampleInputPassword1" required="required" ">
                                                </div>
            
                                                <div class="form-group col-md-6">
                                                    <label for="exampleInputPassword1" class="form-label">Phone Number</label>
                                                    <input type="number" class="form-control" id="exampleInputPassword1" required="required" >
                                                </div>
                                            </div>
            
                                            <div class="form-row">
                                                <div class="form-group col-md-6">
                                                    <label for="exampleInputPassword1" class="form-label">Address</label>
                                                    <input type="text" class="form-control" id="exampleInputPassword1" required="required" name="name">
                                                </div>
            
                                                <div class="form-group col-md-6">
                                                    <label for="exampleInputPassword1" class="form-label">City</label>
                                                    <input type="text" class="form-control" id="exampleInputPassword1" required="required" name="name">
                                                </div>
                                            </div>
            
                                            <div class="form-group">
                                                <label>Payment Mode</label>
                                                <select class="form-control">
                                                    <option>--Select--</option>
                                                    <option>Cash On Delivery</option>
                                                </select>
                                            </div>
            
                                            <div class="text-center p-3">
                                                <button class="btn btn-warning">Order Now </button>
            
                                                <a href="index.jsp"  class="btn btn-success"  >Shop More </a>                      
                                            </div>
            
                                        </form>
                                    </div>
                                </div>
                            </div
                        </div>-->

        </div>

    </div>
    <div style="margin-top:185px;">
        <%@include file="all_components/footer.jsp"%>  
    </div>
</body>
</html>
