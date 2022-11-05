<%-- 
    Document   : login
    Created on : Sep 4, 2022, 2:48:09 AM
    Author     : Prab1n
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page  isELIgnored="false"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Exhibitly: login</title>
        <link rel="icon" href="https://img.icons8.com/fluency/48/000000/van-gogh.png" type="image/icon type">

        <!--<meta name="google-signin-client_id" content="56995776500-gqqrusv5in95uggsg8ag0b6a6ckq5rn8.apps.googleusercontent.com" >-->
        <script src="https://apis.google.com/js/platform.js"></script>
        <%@include file="all_components/allCss.jsp"%>
    </head>
    <body style="background-color: #f0f1f2">
        <%@include file="all_components/navbar.jsp"%>

        <div class="container p-5">
            <div class="row"> 
                <div class="col-md-4 offset-md-4">
                    <div class="card">
                        <div class="card-body">
                            <h4 class="text-center p-2">Login</h4>

                            <c:if test="${not empty failed}">
                                <h5 class="text-center text-danger">${failed}</h5>
                                <c:remove var="failed" scope="session"/>
                            </c:if>

                            <c:if test="${not empty success}">
                                <h5 class="text-center text-success">${success}</h5>
                                <c:remove var="success" scope="session"/>
                            </c:if>


                            <form action="login" method="post">

                                <div class="mb-3">
                                    <label for="exampleInputEmail1" class="form-label">Email Address</label>
                                    <input type="email" class="form-control" id="exampleInputEmail1" name="email" required="required">
                                </div>


                                <div class="mb-3">
                                    <label for="exampleInputPassword1" class="form-label">Password</label>
                                    <input type="password" class="form-control" id="exampleInputPassword1" name="password" required="required" >
                                </div>
                                <!--                                <div class="mb-3 form-check">
                                                                    <input type="checkbox" class="form-check-input" id="exampleCheck1">
                                                                    <label class="form-check-label" for="exampleCheck1">Remember Me</label>
                                                                </div>-->


                                <div class="text-center">
                                    <button type="submit" class="btn btn-primary ">Login</button><br><br>
                                    or,<br>
                                    New user? <a href="register.jsp"> Create an Account</a><br>
                                    <!--google login-->

                                    <!--                                    <p>Or</p>                                  
                                                                        <div class="g-signin2 " style="padding-left: 100px;">-->
                                </div>
                        </div>


                        </form> 
                    </div>

                </div>
            </div>
        </div>


        <div style="margin-top:75px;">
            <%@include file="all_components/footer.jsp"%>
        </div>
    </body>
</html>
