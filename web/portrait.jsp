<%-- 
    Document   : portrait
    Created on : Sep 11, 2022, 3:14:05 AM
    Author     : Prab1n
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page  isELIgnored="false"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Portrait Arts</title>
        <link rel="icon" href="https://img.icons8.com/fluency/48/000000/van-gogh.png" type="image/icon type">
        <%@include file="all_components/allCss.jsp"%>     
    </head>
    <body>
        <%@include file="all_components/navbar.jsp"%>      
        <!--        <div class="container-fluid" >
                    <hr>
                    <h3 class="text-center p-2">All Portrait Arts</h3><br>
                    <div class="row">
        <c:forEach var="art" items="${artlist}">
            <div class="col-md-3 p-1">


                <div class="card">
                    <div class="card-body text-center">
                        <img alt="" src="img/arts/<c:out value="${art.photoName}"/>" style="
                             width:200px; height:200px" class="img-thumblin">
                        <p>${art.artName}<br>
            ${art.artistName} <br>
            ${art.artCategory}</p>
        <div class="col">
            <a href="cart?action=addtocart&id=${art.artID}" class="btn btn-danger btn-sm ml-2">  <i class="fas fa-cart-plus"></i>Add</a>
            <a href="ViewArtDetails?id=${art.artID}" class="btn btn-success btn-sm ml-1">  Details</a>
            <a  class="btn btn-danger btn-sm ml-1"> Rs.${art.price}</a>
        </div>
    </div>
</div>


</div>
        </c:forEach>
    </div>
</div>-->
        <div class="container mx-auto px-4 py-6">
            <div class="text-center mb-8">
                <h1 class="text-4xl font-bold mb-2">Portrait Arts</h1>
                <div class="w-20 border-b-2 border-gray-400 mx-auto"></div>
            </div>

            <div class="grid grid-cols-1 sm:grid-cols-2 md:grid-cols-3 lg:grid-cols-4 gap-7">
                <!-- Product Card -->
                <c:forEach var="art" items="${artlist}">
                    <div class="bg-white rounded-lg shadow-md overflow-hidden transform hover:scale-105 transition duration-300 ">
                        <div class="flex w-full min-h-40 rounded-md overflow-hidden lg:h-60 lg:aspect-none justify-center">
                            <img src="img/arts/<c:out value="${art.photoName}"/>"   class="w-auto h-full object-center object-cover lg:w-auto lg:h-full rounded">
                        </div>

                        <div class="p-2">
                            <h3 class="text-xl font-semibold mb-2">${art.artName}</h3>
                            <p class="text-gray-500 mb-1">${art.artistName}</p>
                            <p class="text-black-500 mb-1">${art.artCategory}</p>
                            <div class="flex items-center mb-2">
                                <p class="text-lg font-semibold">Rs.${art.price}</p>

                            </div>
                            <div class="flex justify-between items-center mb-2 ">
                                <button class="bg-blue-500 hover:bg-blue-600 text-white px-2 py-2 rounded">
                                    <a href="cart?action=addtocart&id=${art.artID}"  >  
                                        Add to Cart </a>
                                </button>
                                <button class="bg-gray-200 hover:bg-gray-300 text-gray-800 px-2 py-2 rounded ">
                                    <a href="ViewArtDetails?id=${art.artID}"  >View Details </a>
                                </button>
                            </div>

                        </div>
                    </div>
                </c:forEach>
                <!-- Repeat the product card for other products -->
            </div>

        </div>


        <%@include file="all_components/footer.jsp"%>  

    </body>
</html>
