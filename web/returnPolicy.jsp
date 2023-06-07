<%-- 
    Document   : returnPolicy
    Created on : Jun 7, 2023, 3:21:03 PM
    Author     : Prab1n
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Return Policy - Exhibitly</title>
        <link rel="icon" href="https://img.icons8.com/fluency/48/000000/van-gogh.png" type="image/icon type">

        <%@include file="all_components/allCss.jsp"%>
        <style>
            .policy-section {
                margin-left: 20%;
                margin-right: 20%;
            }
        </style>
    </head>
    <body class="bg-gray-100">
        <%@include file="all_components/navbar.jsp"%>


        <main class="container mx-auto px-4 py-8">
            <!--<h1 class="text-2xl font-semibold mb-4 text-center">Return Policy</h1>-->
            <div class="text-center mb-8">
                <h1 class="text-4xl font-bold mb-2">Return Policy</h1>
                <div class="w-20 border-b-2 border-gray-400 mx-auto"></div>
            </div>
            <div class="policy-section flex items-center mb-4">
                <div class="flex-shrink-0 mr-4">
                    <i class="fa fa-refresh fa-2x text-blue-500"></i>
                </div>
                <div>
                    <h3 class="text-lg font-semibold">Return Period</h3>
                    <p class="text-gray-700">Return requests must be submitted within the return period(s) listed below:</p>
                    <ul class="list-disc list-inside text-gray-700">
                        <li>Original Artwork: seven (7) calendar days from the date of delivery</li>
                    </ul>
                    <p class="text-gray-700">Return requests received outside the stated return period(s) will not be accepted.</p>
                </div>
            </div>

            <div class="policy-section flex items-center mb-4">
                <div class="flex-shrink-0 mr-4">
                    <i class="fa fa-truck fa-2x text-blue-500"></i>
                </div>
                <div>
                    <h3 class="text-lg font-semibold">Return Shipping</h3>
                    <p class="text-gray-700">Return shipments must be arranged through Exhibitly and shipped in their original packaging.</p>
                    <p class="text-gray-700">Customers are responsible for return shipping costs unless otherwise stated.</p>
                </div>
            </div>

            <div class="policy-section flex items-center mb-4">
                <div class="flex-shrink-0 mr-4">
                    <i class="fa fa-money fa-2x text-blue-500"></i>
                </div>
                <div>
                    <h3 class="text-lg font-semibold">Refunds</h3>
                    <p class="text-gray-700">Refunds will be processed back to the original form of payment once the artist receives the artwork.</p>
                    <p class="text-gray-700">All refunds will be subject to the exchange rate at the time of processing. </p>
                </div>
            </div>

            <div class="policy-section flex items-center mb-4">
                <div class="flex-shrink-0 mr-4">
                    <i class="fa fa-exclamation-triangle fa-2x text-red-500"></i>
                </div>
                <div>
                    <h3 class="text-lg font-semibold">Non-Returnable Items</h3>
                    <p class="text-gray-700">The following items are FINAL SALE and not eligible for returns:</p>
                    <ul class="list-disc list-inside text-gray-700">
                        <li>Special Collection</li>
                        <li>Limited Edition artworks</li>
                        <li>Open Edition artworks</li>
                        <li>Print frames</li>
                        <!-- <li>eGift Cards</li> -->
                    </ul>
                </div>
            </div>

            <div class="policy-section flex items-center">
                <div class="flex-shrink-0 mr-4">
                    <i class="fa fa-info-circle fa-2x text-blue-500"></i>
                </div>
                <div>
                    <h3 class="text-lg font-semibold">Artwork Condition</h3>
                    <p class="text-gray-700">Returns will not be accepted for any artwork that has been stretched, cropped, or altered in any capacity after purchase.</p>
                </div>
            </div>

            <!-- div class="mt-8 text-center">
              <p>To start a Return Request, please use the <a href="#" class="text-blue-500">Contact Us Form</a>.</p>
              <p class="mt-4">Was this article helpful? <span class="text-green-500">2</span> out of <span class="text-green-500">2</span> found this helpful</p>
              <p class="mt-2">Have more questions? <a href="#" class="text-blue-500">Submit a request</a>.</p>
            </div> -->
        </main>

        <!-- <footer class="bg-gray-200 py-4">
          <div class="container mx-auto px-4 text-center">
            <p class="text-gray-600">© 2023 Online Art Gallery. All rights reserved.</p>
          </div>
        </footer> -->


        <%@include file="all_components/footer.jsp"%> 
    </body>
</html>
