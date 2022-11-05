<%-- 
    Document   : index
    Created on : Sep 4, 2022, 1:23:11 AM
    Author     : Prab1n
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page  isELIgnored="false"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Exhibitly</title>
        <link rel="icon" href="https://img.icons8.com/fluency/48/000000/van-gogh.png" type="image/icon type">
        <%@include file="all_components/allCss.jsp"%>
        <style type="text/css">
            .back-img{
                background-image: url("img/imgg1.jpg");
                height: 60vh;
                widows: 100%;
                background-size: cover;
                background-repeat: no-repeat;
            }
            .crd-ho:hover{
                background-color: #fcf7f7;
            }
        </style>
    </head>
    <body style="background-color: #f7f7f7;">
        <%@include file="all_components/navbar.jsp"%>


        <c:if test="${errorMessage != null}">
            <h5 class="text-center text-danger">${errorMessage}</h5>
        </c:if>       


        <c:if test="${successMessage != null}">

            <h5 class="text-center text-success">${successMessage}</h5>
        </c:if>

        <div class="container-fluid back-img p-5" style=" ">
            <h1 class="text-left text-danger">Creative<br> and Best Arts</h1>

            <h3>“Art for all, buy art relax your life”</h3> 
        </div>


        <div class="container" >
            <hr>
            <h3 class="text-center">Available Arts</h3><br>
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
                                    <a href="ViewArtDetails?id=${art.artID}" class="btn btn-success btn-sm ml-1"> View Details</a>
                                    <a  class="btn btn-danger btn-sm ml-1"> <i class="fas fa-dollar-sign"></i>${art.price}</a>
                                </div>
                            </div>
                        </div>


                    </div>
                </c:forEach>
            </div>
        </div>
                
            <br><hr>

        <h3 class="text-center p-3">Our Features</h3>
        <section id="feature" class="section-p1"> 
            <div class="feature-box">
                <img src="img/features/f1.png" alt="">
                <h6>Free Shipping</h6>
            </div>

            <div class="feature-box">
                <img src="img/features/f2.png" alt="">
                <h6>Online Order</h6>
            </div>

            <div class="feature-box">
                <img src="img/features/f3.png" alt="">
                <h6>Save Money</h6>
            </div>

            <div class="feature-box">
                <img src="img/features/f4.png" alt="">
                <h6>Promotions</h6>
            </div>

            <div class="feature-box">
                <img src="img/features/f5.png" alt="">
                <h6>Happy Sell and Buy</h6>
            </div>

            <div class="feature-box">
                <img src="img/features/f6.png" alt="">
                <h6>support</h6>
            </div>

        </section>
        
        
        
        <%@include file="all_components/footer.jsp"%>  
    </body>
</html>
