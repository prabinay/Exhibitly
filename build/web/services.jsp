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

    <body class="bg-gray-100">
        <%@include file="all_components/navbar.jsp"%>

        <!--main code starts here--> 
        <div class="container mx-auto mb-4">

            <h1 class="text-center mt-3 text-3xl font-bold">Our <span class="text-blue-600">Services</span></h1>
            <hr class="mx-auto my-3 w-1/4 border border-gray-300">
            <div class="grid grid-cols-1 sm:grid-cols-2 md:grid-cols-4 gap-5 mx-auto">
                <div class="max-w-md mx-auto bg-white rounded-lg shadow">
                    <!--<img src="img/buy.jpg" alt="" class="object-cover h-48">-->
                    <div class="flex justify-center items-center">
                        <img src="img/purchase.jpg" alt="" class="object-cover h-48">
                    </div>
                    <div class="p-5">
                        <h3 class="text-center text-xl font-bold">Secure and Seamless Online Purchases</h3>
                        <hr class="mx-auto my-3 w-3/4 border border-gray-300">
                        <p class="text-gray-700">
                            For art enthusiasts, we offer a secure and seamless online purchasing experience. Detailed images, descriptions, and secure payment gateways ensure confident browsing and safe transactions, fostering a trusted environment for buyers.
                        </p>
                    </div>
                </div>
                <div class="max-w-md mx-auto bg-white rounded-lg shadow">
                    <!--<img src="img/filter.jpg" alt="" class="object-cover h-48">-->
                    <div class="flex justify-center items-center">
                        <img src="img/filter.jpg" alt="" class="object-cover h-48">
                    </div>
                    <div class="p-5">
                        <h3 class="text-center text-xl font-bold">Artwork Discovery and Filtering</h3>
                        <hr class="mx-auto my-3 w-3/4 border border-gray-300">
                        <p class="text-gray-700">
                            Our online art gallery enhances the browsing experience with robust search and filtering options. Users can easily explore artworks based on categories, genre, medium, artist, and more, finding pieces that align with their preferences and interests.
                        </p>
                    </div>
                </div>
                <div class="max-w-md mx-auto bg-white rounded-lg shadow">
                    <!--<img src="img/promo.png" alt="" class="object-cover h-48">-->
                    <div class="flex justify-center items-center">
                        <img src="img/promo.png" alt="" class="object-cover h-48">
                    </div>
                    <div class="p-5">
                        <h3 class="text-center text-xl font-bold">Artist Promotion and Representation</h3>
                        <hr class="mx-auto my-3 w-3/4 border border-gray-300">
                        <p class="text-gray-700">
                            Through our platform, we promote artists and their work to a wider audience. Artists gain exposure and recognition as we feature their artwork prominently in curated collections, connecting them with potential buyers and art enthusiasts.
                        </p>
                    </div>
                </div>
                <div class="max-w-md mx-auto bg-white rounded-lg shadow">
                    <!--<img src="img/support.jpg" alt="" class="object-cover h-48">-->
                    <div class="flex justify-center items-center">
                        <img src="img/support.jpg" alt="" class="object-cover h-48">
                    </div>
                    <div class="p-5">
                        <h3 class="text-center text-xl font-bold">Customer Support for User Experience</h3>
                        <hr class="mx-auto my-3 w-3/4 border border-gray-300">
                        <p class="text-gray-700">
                            Our dedicated customer support team is available to assist and help users with inquiries, concerns, or technical issues on our platform. We strive to ensure a positive user experience for all, providing timely and helpful assistance.
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </body>


    <%@include file="all_components/footer.jsp"%> 

</html>
