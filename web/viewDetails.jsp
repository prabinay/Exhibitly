<%-- 
    Document   : view_books
    Created on : Sep 10, 2022, 1:36:37 AM
    Author     : Prab1n
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page  isELIgnored="false"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>${artlist.artName} by ${artlist.artistName}</title>
        <link rel="icon" href="https://img.icons8.com/fluency/48/000000/van-gogh.png" type="image/icon type">

        <%@include file="all_components/allCss.jsp"%>
    </head>
    <body style="background-color: #f0f1f2;">
        <%@include file="all_components/navbar.jsp"%>

        <c:if test="${errorMessage != null}">
            ${errorMessage}

        </c:if>

        <c:if test="${successMessage != null}">
            ${successMessage}

        </c:if>
        <!--        <div class="container">
                    <div class="row p-5">
        
                        <div class="col-md-6 text-center p-5 border bg-white">
                            <img src="img/arts/${artlist.photoName}" style="height:300px; width:300px;"><br>
                            <h3>Art Name : ${artlist.artName}</h3>
                            <h3>Artist Name : ${artlist.artistName}</h3>
                            <h3>Category : ${artlist.artCategory}</h3>
                        </div>
        
                        <div class="col-md-6 text-center p-5 border bg-white">
                            <h2>${artlist.artName}</h2>
                            <div class="row">
                                <div class="col-md-4 text-danger text-center p-2">
                                    <i class="fas fa-money-bill-wave fa-2x"></i>
                                    <p>Cash on Delivery</p>
                                </div>
                                <div class="col-md-4 text-danger text-center p-2">
                                    <i class="fas fa-undo-alt fa-2x"></i>
                                    <p>Return Available</p>
                                </div>
                                <div class="col-md-4 text-danger text-center p-2">
                                    <i class="fas fa-truck-moving fa-2x"></i>s
                                    <p> Free Shipping</p>
                                </div>
                            </div>
                            <div class ="col">
                                
                                <a href="cart?action=addtocart&id=${artlist.artID}" class="btn btn-primary"> <i class="fas fa-cart-plus"></i>Add cart</a>
                                <a href="" class="btn btn-danger"> Rs.${artlist.price}</a>
                            </div> 
                        </div>
                    </div>
        
        
                </div>-->
        <div class="flex flex-col h-screen justify-center items-center bg-gray-100">
            <div class="max-w-4xl bg-white shadow-lg rounded-lg p-8">
                <!--product details header-->
                <div class="text-center mb-8">
                    <h1 class="text-4xl font-bold mb-2">Product Details</h1>
                    <div class="w-20 border-b-2 border-gray-400 mx-auto"></div>
                </div>
                <!-- Product details content -->
                <div class="flex flex-col md:flex-row">
                    <div class="md:w-1/2">
                        <img  src="img/arts/${artlist.photoName}"  alt="Product Image" class="w-full h-auto rounded-lg">
                    </div>
                    <div class="md:w-1/2 md:ml-8">
                        <h1 class="text-3xl font-bold mb-4"> ${artlist.artName}</h1>
                        <p class="text-gray-600 mb-2"><strong>Category:</strong> ${artlist.artCategory}</p>
                        <p class="text-gray-600 mb-2"><strong>Artist:</strong> ${artlist.artistName}</p>
                        <!--<p class="text-gray-600 mb-2"><strong>Rating:</strong> 4.5/5</p>-->
                        <p class="text-gray-600 mb-4"><strong>Availability:</strong> In Stock</p>
                        <!--<p class="text-gray-600 mb-4">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac lorem ipsum, quis commodo ipsum. Nullam et pulvinar justo. Aenean id dolor et dui consequat pretium a in nulla. Mauris id semper lacus. Nam viverra urna vitae purus fringilla congue. Nullam mattis eleifend sapien.</p>-->
                        <p class="text-2xl font-semibold mb-4">Rs.${artlist.price}</p>
                        <button class="bg-blue-500 hover:bg-blue-600 text-white font-semibold py-2 px-4 rounded">
                            <a href="cart?action=addtocart&id=${artlist.artID}" >  Add to cart</a>
                        </button>
                    </div>
                </div>
            </div>
        </div>

    </body>


    <%@include file="all_components/footer.jsp"%>
</html>
