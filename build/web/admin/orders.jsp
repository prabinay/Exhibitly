<%-- 
    Document   : orders
    Created on : Sep 6, 2022, 11:55:23 PM
    Author     : Prab1n
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin: All orders</title>
        <link rel="icon" href="https://img.icons8.com/fluency/48/000000/van-gogh.png" type="image/icon type">

        <%@include file="allCss.jsp"%>
    </head>
    <body>
        <%@include file="navbar.jsp"%>

        <c:if test="${empty userobj}">
            <c:redirect url="../login.jsp" />
        </c:if>
        <div class="container">
        <hr>
        <!--<h3 class="text-center p-2">All Orders</h3>-->
        <div class="text-center mb-8 mt-5">
            <h1 class="text-4xl font-bold mb-2">All Orders</h1>
            <div class="w-20 border-b-2 border-gray-400 mx-auto"></div>
        </div>
        <hr>
        <div class="container my-3">
            <table class="table table-striped ">
                <thead class="table-dark">
                    <tr>
                        <th scope="col">Product</th>
                        <th scope="col">Art Name</th>
                        <th scope="col">Price</th>
                        <th scope="col">Ordered By</th>
                        <th scope="col">Phone No</th>
                        <th scope="col">Shipping Address</th>
                        <th scope="col">Ordered Date</th>
                        <th scope="col">Payment Option</th>
                        <th scope="col">Order Status</th>

                        <!--                    <th scope="col">Price</th>
                                            <th scope="col">Payment Type</th>-->
                    </tr>
                </thead>
                <tbody>

                    <c:forEach var="order" items="${orderlist}">
                        <tr>
                            <!--<th scope="row">${order.orderID}</th>-->
                            <td><img src="../img/arts/${order.photo}"  class="rounded" style=" width:100px; height:100px;"></td>

                            <td>${order.artName}</td>
                            <td>Rs.${order.unit_price}</td>
                            <td>${order.name}</td>
                            <td>${order.contactno}</td>
                            <td>${order.address}</td>
                            <td>${order.order_date}</td>
                            <td>${order.payment}</td>
                            <td>
                                <span class="badge bg-secondary">${order.status}</span>
                            </td>
                         <!--<td>${order.total_price}</td>-->

                            <!--<td>@mdo</td>-->
                        </tr>


                    </c:forEach>

                </tbody>
            </table>
        </div>
        <hr><br>
    </div>
   

        <div class="text-center">
            <button type="submit" class="bg-blue-500 hover:bg-blue-700 text-white py-2 px-4 rounded-md font-medium  "><a  aria-current="page" href="home.jsp">Go to Home</a></button>
        </div>

        <div style="margin-top:285px;">
            <%@include file="footer.jsp"%>
        </div>

    </body>
</html>
