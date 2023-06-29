<%-- 
    Document   : paymentOptions
    Created on : Jun 29, 2023, 2:03:09 PM
    Author     : Prab1n
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <link rel="icon" href="https://img.icons8.com/fluency/48/000000/van-gogh.png" type="image/icon type">

        <%@include file="all_components/allCss.jsp"%> 
        <title>Payment Options</title>
        <style>
            body {
                background-color: #f7fafc;
            }
        </style>
    </head>

    <body>
        <%@include file="all_components/navbar.jsp"%>
        <div class="container mx-auto max-w-screen-xl mt-2 " style="max-width: 800px;">
            <div class="text-center mb-8 ">
                <h1 class="text-3xl font-bold mb-2 ">Payment via Khalti</h1>
                <div class="w-20 border-b-2 border-gray-400 mx-auto"></div>
            </div>
            <div class="flex items-center mb-4">
                <img src="img/khalti.jpg" alt="Khalti Logo" class="mr-2 h-8">
               
            </div>

            <p class="mb-4">We are excited to announce that we have integrated Khalti as a payment option on our website. Khalti is a popular digital wallet in Nepal that allows you to make secure online payments.</p>

            <p class="mb-4">With Khalti, you can easily pay for your purchases and services on our website without the hassle of entering your card details every time. Simply follow these steps:</p>

            <ol class="mb-4 list-decimal list-inside">
                <li class="mb-2">Log in to your Khalti account or create a new one if you don't have it.</li>
                <li class="mb-2">Log in to our platform.</li>
                <li class="mb-2">Select the items you want to purchase and proceed to checkout.</li>
                <li class="mb-2">Review your order details and choose Khalti payment option.</li>
                <li class="mb-2">Enter the registered number and wait for OTP.</li>
                <li class="mb-2">Once you get OTP, enter the OTP and complete your payment.</li>
                <li class="mb-2">Once the payment is successful, your order will be processed.</li>
            </ol>

            <p class="mb-4">Enjoy the convenience and security of Khalti for your online payments!</p>


        </div>



        <%@include file="all_components/footer.jsp"%> 
    </body>

</html>
