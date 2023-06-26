<%-- 
    Document   : enterOTP
    Created on : Jun 26, 2023, 12:31:52 PM
    Author     : Prab1n
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Enter OTP</title>

        <link rel="icon" href="https://img.icons8.com/fluency/48/000000/van-gogh.png" type="image/icon type">
        <%@include file="all_components/allCss.jsp"%> 
    </head>

    <body>
        <%@include file="all_components/navbar.jsp"%>
        <div class="form-gap"></div>
        <div class="container mx-auto my-16">
            <div class="flex justify-center">
                <div class="w-full md:w-1/2 lg:w-1/3">
                    <div class="bg-white shadow-md rounded-lg px-8 py-10">
                        <div class="text-center">
                            <h3>
                                <i class="fa fa-lock fa-4x"></i>
                            </h3>
                            <h2 class="text-center">Enter OTP</h2>
                            <% if(request.getAttribute("message")!=null) { %>
                            <p class="text-danger ml-1">
                                <%= request.getAttribute("message") %>
                            </p>
                            <% } %>
                            <div class="mt-6">
                                <form id="register-form" action="ValidateOtp" role="form" autocomplete="off" class="form" method="post">
                                    <div class="mb-4">
                                        <div class="flex items-center border border-gray-300 rounded-lg">
                                            <span class="p-2">
                                                <i class="fas fa-envelope text-gray-500"></i>
                                            </span>
                                            <input id="opt" name="otp" placeholder="Enter OTP" class="w-full py-2 px-4 outline-none" type="text" required="required">
                                        </div>
                                    </div>
                                    <div class="mb-6">
                                        <input name="recover-submit" class="bg-blue-500 hover:bg-blue-600 text-white font-bold py-2 px-4 rounded-full w-full" value="Reset Password" type="submit">
                                    </div>
                                    <input type="hidden" class="hide" name="token" id="token" value="">
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <%@include file="all_components/footer.jsp"%> 
    </body>

</html>

