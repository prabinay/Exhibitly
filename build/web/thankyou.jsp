<%-- 
    Document   : thankyou
    Created on : May 29, 2023, 11:08:24 PM
    Author     : Prab1n
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Thankyou for placing order</title>
        <link rel="icon" href="https://img.icons8.com/fluency/48/000000/van-gogh.png" type="image/icon type">

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">

        <%@include file="all_components/allCss.jsp"%>  

        <style>
            #success-icon {
                color: green; /* Set the color to red */
                font-size: 5rem; /* Set the font size to medium */
            }
        </style>


    </head>
    <body>
        <%@include file="all_components/navbar.jsp"%>


        <div class="site-section mt-5">
            <div class="container ">
                <div class="row m-4">
                    <div class="col-md-12 text-center mt-5">
                        <i class="fas fa-check-circle " id="success-icon"></i>

                        <h2 class="display-3 text-black ">Thank you!</h2>
                        <p class="lead mb-5 mt-2">You order was successfully completed.</p>
                        <p><a href="index" class="btn btn-sm height-auto px-4 py-3 btn-primary">Buy More Arts</a></p>
                    </div>
                </div>
            </div>

            <%@include file="all_components/footer.jsp"%>  
    </body>

</html>
