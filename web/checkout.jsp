<%-- 
    Document   : checkout
    Created on : Sep 13, 2022, 12:06:10 AM
    Author     : Prab1n
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page  isELIgnored="false"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Checkout Here</title>
        <%@include file="all_components/allCss.jsp"%>
    </head>
    <body>
        <%@include file="all_components/navbar.jsp"%>
        <div class="container">
            <div class="py-5 text-center">
                <h2>Checkout Here</h2>
            </div>
        </div>

        <div class="container">
            <h4 class="mb-3">Billing Address</h4>
            <form novalidate>
                <div class="row g-3">
                    <div class="col-sm-6">
                        <label for="firstName" class="form-label">First Name</label>
                        <input id="firstName" type="text" class="form-control" placeholderrequired>
                        <div class="invalid-feedback">
                            Valid name is required
                        </div>
                    </div>
                    
                    <div class="col-sm-6">
                        <label for="lastName" class="form-label">Last Name</label>
                        <input id="lastName" type="text" class="form-control" placeholderrequired>
                        <div class="invalid-feedback">
                            Valid name is required
                        </div>
                    </div>
                    
                    <div class="col-md-5">
                        <label for="country" class="form-label">Country</label>
                        <select id="country" class="form-control" >
                            <option vcalue=""> Choose...</option>
                            <option vcalue="Nepal"> Nepal</option>
<!--                            <option vcalue="India"> India</option>-->
                        </select>
                        <div class="invalid-feedback">
                            Valid name is required
                        </div>
                    </div>
                    
                    <div class="col-md-4">
                        <label for="country" class="form-label">State</label>
                        <select id="state" class="form-control" >
                            <option value=""> Choose...</option>
                            <option value="1"> Province No 1</option>
                            <option value="2"> Province No 2</option>
                            <option value="3"> Province No 3</option>
                            <option value="4"> Province No 4</option>
                            <option value="5"> Province No 5</option>
                            <option value="6"> Province No 6</option>
                            <option value="7"> Province No 7</option>
                        </select>
                        <div class="invalid-feedback">
                            Valid name is required
                        </div>
                    </div>
                    
                    <div class="col-md-3">
                        <label for="postcode" class="form-label">Post Code</label>
                        <input id="postcode" type="number" class="form-control" placeholderrequired>
                        <div class="invalid-feedback">
                            Valid name is required
                        </div>
                    </div>
                    
                    <hr class="my-4">
                    
                    
                </div>
            </form>
        </div>

    </body>

    <%@include file="all_components/footer.jsp"%>
</html>
