<%-- 
    Document   : home
    Created on : Sep 4, 2022, 5:50:29 AM
    Author     : Prab1n
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page  isELIgnored="false"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home: Admin</title>
        <%@include file="allCss.jsp"%>
        <style type="text/css">
            a{
                text-decoration: none;
                color:black;
            }

            a:hover{
                text-decoration: none;
                color:black;
            }
        </style>
    </head>
    <body>
        <%@include file="navbar.jsp"%>
        <div class="container ">
            <div class="row p-5">
                <div class="col-md-3">
                    <a href="addArts.jsp" >
                        <div class="card">
                            <div class="card-body">
                                <i class="fas fa-plus-square fa-3x text-primary"></i><br>
                                <h4>Add an Art</h4>
                                
                                
                            </div>

                        </div>
                    </a>
                </div>

                <div class="col-md-3">
                    <a href="allArts.jsp" >
                        <div class="card">
                            <div class="card-body">
                                <i class="fas fa-book-open fa-3x text-danger"></i><br>
                                <h4>All Books</h4>
                            </div>

                        </div>
                    </a>
                </div>

                <div class="col-md-3">
                    <a href="orders.jsp" >
                        <div class="card">
                            <div class="card-body">
                                <i class="fas fa-box-open fa-3x text-warning"></i><br>
                                <h4>Order</h4>
                            </div>

                        </div>
                    </a>
                </div>

                <div class="col-md-3">
                    <div class="card">
                        <div class="card-body">
                            <i class="fas fa-sign-out-alt fa-3x text-primary"></i><br>
                            <h4>Logout</h4>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
