<%-- 
    Document   : order_details
    Created on : Nov 2, 2022, 10:30:57 PM
    Author     : Prab1n
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin: All orders details</title>
        <link rel="icon" href="https://img.icons8.com/fluency/48/000000/van-gogh.png" type="image/icon type">

        <%@include file="allCss.jsp"%>
    </head>
    <body>
        <%@include file="navbar.jsp"%>

        <c:if test="${empty userobj}">
            <c:redirect url="../login.jsp" />
        </c:if>
        
        <h3 class="text-center p-2">All Orders</h3>

        <table class="table ">
            <thead class="bg-primary">
                <tr>
                    <th scope="col">Order_ID</th>
                    <th scope="col">Shipping Address</th>
                    <th scope="col">Payment Option</th>
                    <th scope="col">Price</th>
                    <th scope="col">Phone No</th>
                    <th scope="col">Ordered Date</th>
                    <th scope="col">Order Status</th>
<!--                    <th scope="col">Price</th>
                    <th scope="col">Payment Type</th>-->
                </tr>
            </thead>
            <tbody>

                <c:forEach var="order" items="${orderlist}">
                    <tr>
                        <th scope="row">${order.orderID}</th>
          
                        <td>${order.address}</td>
                        <td>${order.payment}</td>
                        <td>${order.unit_price}</td>
                        <!--<td>${order.total_price}</td>-->
                        <td>${order.contactno}</td>
                        <td>${order.order_date}</td>
                        <td>${order.status}</td>
                        <!--<td>@mdo</td>-->
                    </tr>


                </c:forEach>

            </tbody>
        </table>

        <div class="text-center">
            <button type="submit" class="btn btn-primary  "><a class="nav-link active text-center" aria-current="page" href="home.jsp">Go to Home</a></button>
        </div>

        <div style="margin-top:285px;">
            <%@include file="footer.jsp"%>
        </div>

    </body>
</html>
