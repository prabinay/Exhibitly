<%-- 
    Document   : login
    Created on : Sep 4, 2022, 2:48:09 AM
    Author     : Prab1n
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Exhibitly: login</title>
        <%@include file="all_components/allCss.jsp"%>
    </head>
    <body style="background-color: #f0f1f2">
        <%@include file="all_components/navbar.jsp"%>

        <div class="container p-2">
            <div class="row"> 
                <div class="col-md-4 offset-md-4">
                    <div class="card">
                        <div class="card-body">
                            <h4 class="text-center p-2">Login</h4>
                            <form action="login" method="post">

                                <div class="mb-3">
                                    <label for="exampleInputEmail1" class="form-label">Email Address</label>
                                    <input type="email" class="form-control" id="exampleInputEmail1" name="email" required="required">
                                </div>
                     

                        <div class="mb-3">
                            <label for="exampleInputPassword1" class="form-label">Password</label>
                            <input type="password" class="form-control" id="exampleInputPassword1" name="password" required="required" >
                        </div>
                        <div class="mb-3 form-check">
                            <input type="checkbox" class="form-check-input" id="exampleCheck1">
                            <label class="form-check-label" for="exampleCheck1">Remember Me</label>
                        </div>

                        <div class="text-center">
                            <button type="submit" class="btn btn-primary ">Login</button><br>
                            <a href="register.jsp"> Create Account</a>
                        </div>
                    </form> 
            </div>

        </div>
    </div>
</div>
</div>
        <%--<%@include file="all_components/footer.jsp"%>--%>
</body>
</html>
