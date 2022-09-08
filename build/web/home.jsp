<%-- 
    Document   : home
    Created on : Sep 4, 2022, 5:50:00 AM
    Author     : Prab1n
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page  isELIgnored="false"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home: User</title>
        <%@include file="admin/allCss.jsp"%>
    </head>
    <body>
        <%@include file="admin/navbar.jsp"%>      
<!--        <c:if test="${not empty userobj}">
            <h1>name:${userobj.name}</h1>
            <h1>Email:${userobj.email}</h1>-->
    
    
            <div class="container" >
                <h3 class="text-center">Landscapes</h3>
                <div class="row">
                    <div class="col-md-3">
                        <div class="card">
                            <div class="card-body text-center">
                                <img alt="" src="img/arts/starrynight.jpg" style="
                                     width:180px; height:150px" class="img-thumblin">
                                <p> Starry Nights</p>
                                <p>Vincent Van gogh </p>
                                <p>Categories: Landscape</p>
                                <div class="col">
                                    <a href="" class="btn btn-danger btn-sm ml-2"> Add Cart</a>
                                    <a href="" class="btn btn-success btn-sm ml-1"> View Details</a>
                                    <a href="" class="btn btn-danger btn-sm ml-1"> $599</a>
                                </div>
                            </div>
                            
                            
                        </div>
                    </div>
                    
                    <div class="col-md-3">
                        <div class="card">
                            <div class="card-body text-center">
                                <c:forEach  var="arts" items="${artlist}"> 
                                <img alt="" src="img/arts/${arts.photoName}" style=" width:180px; height:150px" class="img-thumblin">
                                <p>${arts.artName}</p>
                                <p>${arts.artistName} </p>
                                <div class="col">
                                    <a href="" class="btn btn-danger btn-sm ml-2"> Add Cart</a>
                                    <a href="" class="btn btn-success btn-sm ml-1"> View Details</a>
                                    <a href="" class="btn btn-danger btn-sm ml-1"> ${arts.price}</a>
                                </div>
                                </c:forEach>
                            </div>
                            
                            
                        </div>
                    </div>

                </div>
                
                
            </div>

        </c:if>





        <%@include file="admin/footer.jsp"%> 
    </body>
</html>
