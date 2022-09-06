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
        <%@include file="allCss.jsp"%>
    </head>
    <body>
        <%@include file="navbar.jsp"%>
        <h3 class="text-center">Hello Admin</h3>

        <table class="table ">
            <thead class="bg-primary">
                <tr>
                    <th scope="col">Order_ID</th>
                    <th scope="col">Name</th>
                    <th scope="col">Email</th>
                    <th scope="col">Address</th>
                    <th scope="col">Phone No</th>
                    <th scope="col">Art Name</th>
                    <th scope="col">Artist Name</th>
                    <th scope="col">Price</th>
                    <th scope="col">Payment Type</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <th scope="row">1</th>
                    <td>Mark</td>
                    <td>Otto</td>
                    <td>@mdo</td>
                    <td>Otto</td>
                    <td>@mdo</td>
                    <td>@mdo</td>
                    <td>Otto</td>
                    <td>@mdo</td>
                </tr>
                <tr>
                    <th scope="row">2</th>
                    <td>Jacob</td>
                    <td>Thornton</td>
                    <td>@fat</td>
                    <td>Thornton</td>
                    <td>@mdo</td>
                    <td>Otto</td>
                    <td>@mdo</td>
                </tr>
                <tr>
                    <th scope="row">3</th>
                    <td>Jacob</td>
                    <td>Thornton</td>
                    <td>@fat</td>
                    <td>Thornton</td>
                    <td>@mdo</td>
                    <td>Otto</td>
                    <td>@mdo</td>
                </tr>
                
            </tbody>
        </table>
        
        <div style="margin-top:130px;">
            <%@include file="foooter.jsp"%>
        </div>
        
    </body>
</html>
