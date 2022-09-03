<%-- 
    Document   : index
    Created on : Sep 4, 2022, 1:23:11 AM
    Author     : Prab1n
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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
        
        <div class="container-fluid back-img">
            <h2 class="text-center text-danger">Online Art gallery</h2>
        </div>
        
        
        
        <!<!-- Landscapes section starts -->
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
                
            </div>
            
            <div class="container" >
            <h3 class="text-center">Portrait</h3>
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
                
            </div>
            
            <div class="container" >
            <h3 class="text-center">Abstract</h3>
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
                
            </div>
        </div>
            
          <%@include file="all_components/footer.jsp"%>  
    </body>
</html>
