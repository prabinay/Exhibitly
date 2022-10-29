<%-- 
    Document   : home
    Created on : Sep 4, 2022, 5:50:29 AM
    Author     : Prab1n
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page  isELIgnored="false"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home: Admin</title>
        <link rel="icon" href="https://img.icons8.com/fluency/48/000000/van-gogh.png" type="image/icon type">
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
        <c:if test="${empty userobj}">
            <c:redirect url="../login.jsp" />
        </c:if>
        <h1 class="text-center p-5">Welcome Admin</h1>
        <div class="container ">
            <div class="row p-2">
                <div class="col-md-3">
                    <a href="addArts.jsp" >
                        <div class="card">
                            <div class="card-body text-center">
                                <i class="fas fa-plus-square fa-3x text-primary"></i><br>
                                <h4>Add an Art</h4>


                            </div>

                        </div>
                    </a>
                </div>

                <div class="col-md-3">
                    <a href="AllArtsServlet" >
                        <div class="card">
                            <div class="card-body text-center">
                                <i class="fa-solid fa-palette fa-3x text-danger"></i><br>
                                <h4>All Arts</h4>
                            </div>

                        </div>
                    </a>
                </div>

                <div class="col-md-3">
                    <a href="orders.jsp" >
                        <div class="card">
                            <div class="card-body text-center">
                                <i class="fas fa-box-open fa-3x text-warning"></i><br>
                                <h4>Orders</h4>
                            </div>

                        </div>
                    </a>
                </div>

                <div class="col-md-3">
                    <a data-bs-toggle="modal" data-bs-target="#exampleModal" href="">
                        <div class="card">
                            <div class="card-body text-center">
                                <i class="fas fa-sign-out-alt fa-3x text-primary"></i><br>
                                <h4>Logout</h4>
                            </div>
                        </div>
                    </a>
                </div>
            </div>
        </div>

        <div style="margin-top:205px;">
            <%@include file="footer.jsp"%>
        </div>


        <!-- Modal -->
        <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel"></h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <div class="text-center">
                            <h4>Do You want to Logout?</h4>
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                            <a href="../logout" type="button" class="btn btn-primary text-white"> Logout</a>
                        </div>
                        <div class="modal-footer">

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
