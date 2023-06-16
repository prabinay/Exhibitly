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
        <div class="container">
            <hr>
            <!--<h3 class="text-center p-2">All Arts</h3>-->
            <div class="text-center mb-8 mt-5">
            <h1 class="text-4xl font-bold mb-2">All Arts</h1>
            <div class="w-20 border-b-2 border-gray-400 mx-auto"></div>
        </div>
            <hr>
            <c:if test= "${not empty success}">
                <p class="text-center text-success">${success}</p> 
                <c:remove var="success" scope="session" />
            </c:if>

            <c:if test= "${not empty failed}">
                <p class="text-center text-danger">${failed}</p> 
                <c:remove var="failed" scope="session" />
            </c:if>


            <div class="container my-4">
                <table class="table table-striped">
                    <thead class="table-dark ">
                        <tr>
                            <!--<th scope="col">ID</th>-->


                            <th scope="col">Product</th>
                            <th scope="col">Art Name</th>
                            <th scope="col">Artist Name</th>

                            <th scope="col">Price</th>
                            <!--                        <th scope="col">Categories</th>-->
                            <th scope="col">Status</th>
                            <th scope="col">Action</th>
                        </tr>
                    </thead>

                    <tbody>

                        <c:forEach var="art" items="${artlist}">
                            <tr>
                                <!--<td> ${art.artID}</td>-->

                                <td>
                                    <img src="../img/arts/${art.photoName}" class="rounded float-start" style=" width:80px; height:80px; ">

                                </td>

                                <td> 
                                    <p class="fw-bold- mb-1"> ${art.artName} </p
                                    <p class="text-muted mb-0">${art.artCategory} </p>
                                </td>

                                <td>${art.artistName} </td>
                                <td>Rs.${art.price} </td>
                                <td>
                                    <span class="badge bg-success">${art.status} </span>
                                </td>

                                <td>
                                    <a href="edit?id=<c:out value='${art.artID}' />"  class="btn btn-sm btn-primary"><i class=" fas fa-edit"></i> Edit </a>
                                    <a href="delete?id=<c:out value='${art.artID}' />"  class="btn btn-sm btn-danger"><i class=" fas fa-trash-alt"></i> Delete </a>
                                </td>
                            </tr>
                        </c:forEach>

                    </tbody>
                </table>
            </div>
                <hr><br>
             
            <div class="text-center">
                <button type="submit" ><a class=" bg-blue-500 hover:bg-blue-700 text-white py-2 px-4 rounded-md font-medium" aria-current="page" href="home.jsp">Go to Home</a></button>
            </div>
        </div>

        <div style="margin-top:50px;">
            <%@include file="footer.jsp"%>
        </div>
    </body>
</html>
F