<%-- 
    Document   : allBooks
    Created on : Sep 6, 2022, 11:54:07 PM
    Author     : Prab1n
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin: All arts</title>
        <%@include file="allCss.jsp"%>
    </head>
    <body>
        <%@include file="navbar.jsp"%>
        <h3 class="text-center">Hello Admin</h3>

        <table class="table ">
            <thead class="bg-primary">
                <tr>
                    <th scope="col">ID</th>
                    <th scope="col">Art Name</th>
                    <th scope="col">Artist Name</th>
                    <th scope="col">Price</th>
                    <th scope="col">Categories</th>
                    <th scope="col">Status</th>
                    <th scope="col">Action</th>
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
                    <td>
                        <a href="" class="btn btn-sm btn-primary"> Edit </a>
                        <a href="" class="btn btn-sm btn-danger"> Delete </a>
                    </td>
                </tr>
                <tr>
                    <th scope="row">2</th>
                    <td>Jacob</td>
                    <td>Thornton</td>
                    <td>@fat</td>
                    <td>Thornton</td>
                    <td>@fat</td>
                                        <td>
                        <a href="" class="btn btn-sm btn-primary"> Edit </a>
                        <a href="" class="btn btn-sm btn-danger"> Delete </a>
                    </td>
                </tr>
                <tr>
                    <th scope="row">3</th>
                    <td>Jacob</td>
                    <td>Thornton</td>
                    <td>@fat</td>
                    <td>Thornton</td>
                    <td>@fat</td>
                                        <td>
                        <a href="" class="btn btn-sm btn-primary"> Edit </a>
                        <a href="" class="btn btn-sm btn-danger"> Delete </a>
                    </td>
                </tr>
                <tr>
                    <th scope="row">4</th>
                    <td colspan="2">Larry the Bird</td>
                    <td>@twitter</td>
                </tr>
            </tbody>
        </table>
    </body>
</html>
