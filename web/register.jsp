<%-- 
    Document   : register
    Created on : Sep 4, 2022, 2:31:05 AM
    Author     : Prab1n
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page  isELIgnored="false"%>
<!--<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Exhibitly: Register</title>
        <link rel="icon" href="https://img.icons8.com/fluency/48/000000/van-gogh.png" type="image/icon type">

        <%@include file="all_components/allCss.jsp"%>
    </head>
    <body style="background-color: #f0f1f2">
        <%@include file="all_components/navbar.jsp"%>

        <div class="container p-3">
            <div class="row">
                <div class="col-md-4 offset-md-4">
                    <div class="card">
                        <div class="card-body">
                            <h4 class="text-center p-2">Registration Page</h4>

                            <c:if test= "${not empty success}">
                                <p class="text-center text-success">${success}</p> 
                                <c:remove var="success" scope="session" />
                            </c:if>

                            <c:if test= "${not empty failed}">
                                <p class="text-center text-danger">${failed}</p> 
                                <c:remove var="failed" scope="session" />
                            </c:if>

                            <form action="register" method="post">
                                <div class="mb-3">
                                    <label for="exampleInputPassword1" class="form-label">Full Name</label>
                                    <input type="text" class="form-control" id="exampleInputPassword1" required="required" name="name" pattern="[A-Za-z\s]+">
                                </div>
                                <div class="mb-3">
                                    <label for="exampleInputEmail1" class="form-label">Email Address</label>
                                    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="email" required="required">
                                    <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>
                                </div>

                                <div class="mb-3">
                                    <label for="exampleInputPassword1" class="form-label">Phone Number</label>
                                    <input type="text" class="form-control" id="phone-number" name="phone" required="required" pattern="[0-9]{10}">
                                </div>

                                <div class="mb-3">
                                    <label for="exampleInputPassword1" class="form-label">Password</label>
                                    <input type="password" class="form-control" id="exampleInputPassword1" name="pwd" required="required">
                                </div>
                                <div class="mb-3 form-check">
                                    <input type="checkbox" class="form-check-input" id="exampleCheck1" name="check">
                                    <label class="form-check-label" for="exampleCheck1">Agree Terms & Conditions</label>
                                </div>
                                <button type="submit" class="btn btn-primary">Submit</button>
                            </form> 

                        </div>

                    </div>
                </div>
            </div>
        </div>
        <%@include file="all_components/footer.jsp"%>
    </body>
</html>-->
