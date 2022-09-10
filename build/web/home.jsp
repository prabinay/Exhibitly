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
        <%@include file="all_components/allCss.jsp"%>
    </head>
    <body>
        <%@include file="all_components/navbar.jsp"%>      
<!--        <c:if test="${not empty userobj}">
            <h1>name:${userobj.name}</h1>
            <h1>Email:${userobj.email}</h1>-->
            
    <div class="container" >
            <h3 class="text-center">Available Arts</h3><br>
            <div class="row">
                <c:forEach var="art" items="${artlist}">
                    <div class="col-md-3 p-1">


                        <div class="card">
                            <div class="card-body text-center">
                                <img alt="" src="img/arts/<c:out value="${art.photoName}"/>" style="
                                     width:180px; height:200px" class="img-thumblin">
                                <p>${art.artName}<br>
                                    ${art.artistName} <br>
                                    ${art.artCategory}</p>
                                <div class="col">
                                    <a href="" class="btn btn-danger btn-sm ml-2">  <i class="fas fa-cart-plus"></i></a>
                                    <a href="ViewArtDetails" class="btn btn-success btn-sm ml-1"> View Details</a>
                                    <a  class="btn btn-danger btn-sm ml-1"> <i class="fas fa-dollar-sign"></i>${art.price}</a>
                                </div>
                            </div>
                        </div>


                    </div>
                </c:forEach>
            </div>
    </div>

    <!--showing products from DB-->
    <div class="row">
        <!--show categories-->
        <div class="col-md-2">
            
        </div>
        <!--show all products-->
        <div class="col-md-8">
            
        </div>
    </div>
    
    
    
    
    
            <div class="container" >
                <h3 class="text-center">Buy an Art</h3>
                <div class="row">
                    <div class="col-md-3">
                        <div class="card">
                            <div class="card-body text-center">
                                <img alt="" src="img/arts/" style="
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





        <%@include file="all_components/footer.jsp"%> 
    </body>
</html>
