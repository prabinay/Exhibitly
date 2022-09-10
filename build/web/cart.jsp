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
        <%@include file="all_components/allCss.jsp"%>      
    </head>

    <body style="background-color: #f0f1f2;">
        <%@include file="all_components/navbar.jsp"%>      

        <div class="container" >

            <div class="row p-2"> 
                <div class="col-md-6">

                    <div class="card bg-white">
                        <div class="card-body">
                            <h3 class="text-center text-success">Your Selected Items</h3><br> 
                            <!--Orde table starts-->
                            <table class="table table-striped">
                                <thead>
                                    <tr>
                                        <th scope="col">Art Name</th>
                                        <th scope="col">Artist Name</th>
                                        <th scope="col">Price</th>
                                        <th scope="col">Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <th scope="row">1</th>
                                        <td>Mark</td>
                                        <td>Otto</td>
                                        <td>@mdo</td>
                                    </tr>
                                    <tr>
                                        <th scope="row">2</th>
                                        <td>Jacob</td>
                                        <td>Thornton</td>
                                        <td>@fat</td>
                                    </tr>
                                    <tr>
                                        <th scope="row">3</th>
                                        <td colspan="2">Larry the Bird</td>
                                        <td>@twitter</td>
                                    </tr>
                                </tbody>
                            </table>

                        </div>
                    </div>
                </div>    
                
                <div class="col-md-6">
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
            </div>

        </div>

    </div>
    <%@include file="all_components/footer.jsp"%>      
</body>
</html>
