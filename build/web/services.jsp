<%-- 
    Document   : services
    Created on : May 31, 2023, 5:22:08 PM
    Author     : Prab1n
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Our Services - Exhibitly</title>
        <link rel="icon" href="https://img.icons8.com/fluency/48/000000/van-gogh.png" type="image/icon type">
        <!-- Bootstrap CSS -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">

        <%@include file="all_components/allCss.jsp"%>
    </head>
    <body>

        <%@include file="all_components/navbar.jsp"%>

        <!--main code starts here--> 
        <div class="container-fluid">
            <h1 class="text-center mt-5 display-5 fw-bold">Our <span class="theme-text">Services</span></h1>
            <hr class="mx-auto mb-5 w-25">
            <div class="row mb-5">
                <div class="col-12 col-sm-6 col-md-3 m-auto">
                    <!-- card starts here -->
                    <div class="card shadow">
                        <img src="img/buy.jpg" alt="" class="card-img-top">
                        <div class="card-body">
                            <h3 class="text-center">Secure and Seamless Online Purchases</h3>
                            <hr class="mx-auto w-75">
                            <p>
                                For art enthusiasts, we offer a secure and seamless online purchasing experience. Detailed images, descriptions, and secure payment gateways ensure confident browsing and safe transactions, fostering a trusted environment for buyers.
                            </p>
                        </div>
                    </div>
                    <!-- card ends here -->
                </div>
                <!-- col ends here -->
                <div class="col-12 col-sm-6 col-md-3 m-auto">
                    <!-- card starts here -->
                    <div class="card shadow">
                        <img src="img/filter.jpg" alt="" class="card-img-top">
                        <div class="card-body">
                            <h3 class="text-center">Artwork Discovery and Filtering</h3>
                            <hr class="mx-auto w-75">
                            <p>
                                Our online art gallery enhances the browsing experience with robust search and filtering options. Users can easily explore artworks based on categories, genre, medium, artist, and more, finding pieces that align with their preferences and interests.


                            </p>
                        </div>
                    </div>
                    <!-- card ends here -->
                </div>
                <!-- col ends here -->
                <div class="col-12 col-sm-6 col-md-3 m-auto">
                    <!-- card starts here -->
                    <div class="card shadow">
                        <img src="img/promotion.jpg" alt="" class="card-img-top">
                        <div class="card-body">
                            <h3 class="text-center">Artist Promotion and Representation</h3>
                            <hr class="mx-auto w-75">
                            <p>
                                Through our platform, we promote artists and their work to a wider audience. Artists gain exposure and recognition as we feature their artwork prominently in curated collections, connecting them with potential buyers and art enthusiasts.


                            </p>
                        </div>
                    </div>
                    <!-- card ends here -->
                </div>
                <!-- col ends here -->
                <div class="col-12 col-sm-6 col-md-3 m-auto">
                    <!-- card starts here -->
                    <div class="card shadow">
                        <img src="img/support.jpg" alt="" class="card-img-top">
                        <div class="card-body">
                            <h3 class="text-center">Customer Support for user experience</h3>
                            <hr class="mx-auto w-75">
                            <p>
                                Our dedicated customer support team is available to assist and help users with inquiries, concerns, or technical issues on our platform. We strive to ensure a positive user experience for all, providing timely and helpful assistance.
                            </p>
                        </div>
                    </div>
                    <!-- card ends here -->
                </div>
                <!-- col ends here -->
            </div>
        </div>



        <%@include file="all_components/footer.jsp"%> 
    </body>
</html>
