<%-- 
    Document   : allBooks
    Created on : Sep 6, 2022, 11:54:07 PM
    Author     : Prab1n
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page  isELIgnored="false"%>



<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin: All arts</title>
        <link rel="icon" href="https://img.icons8.com/fluency/48/000000/van-gogh.png" type="image/icon type">

        <%@include file="allCss.jsp"%>
    </head>
    <body>
        <%@include file="navbar.jsp"%>
        <c:if test="${empty userobj}">
            <c:redirect url="../login.jsp" />
        </c:if>

        <h3 class="text-center p-2">All Arts</h3>

        <table class="table ">
            <thead class="bg-primary">
                <tr>
                    <th scope="col">ID</th>
                    <th scope="col">Image</th>
                    <th scope="col">Art Name</th>
                    <th scope="col">Artist Name</th>
                    <th scope="col">Price</th>
                    <th scope="col">Categories</th>
                    <th scope="col">Status</th>
                    <th scope="col">Action</th>
                </tr>
            </thead>


            <tbody>

                <c:forEach var="art" items="${artlist}">
                    <tr>
                        <td> ${art.artID}</td>
                        <td><img src="../img/arts/${art.photoName}"  style=" width:70px; height:70px;"></td>
                        <td>${art.artName} </td>
                        <td>${art.artistName} </td>
                        <td>$${art.price} </td>
                        <td>${art.artCategory} </td>
                        <td>${art.status} </td>

                        <td>
                            <a href="edit?id=<c:out value='${art.artID}' />"  class="btn btn-sm btn-primary"><i class=" fas fa-edit"></i> Edit </a>
                            <a href="delete?id=<c:out value='${art.artID}' />"  class="btn btn-sm btn-danger"><i class=" fas fa-trash-alt"></i> Delete </a>
                        </td>
                    </tr>
                </c:forEach>

            </tbody>
        </table>
        <!--        <div class="text-center">
                    <button type="submit" class="btn btn-primary  "><a class="nav-link active text-center" aria-current="page" href="home.jsp">Go to Home</a></button>
                </div>-->

        <div style="margin-top:50px;">
            <%@include file="footer.jsp"%>
        </div>
    </body>
</html>
