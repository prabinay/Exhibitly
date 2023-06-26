<%-- 
    Document   : updateUserProfile
    Created on : Jun 25, 2023, 5:37:37 PM
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
        <title>User Profile</title>
    </head>
    <body class="bg-gray-100">
        <%@include file="all_components/navbar.jsp"%>
        <div class="container mx-auto py-8">
            <div class="max-w-md mx-auto bg-white shadow-md rounded-md overflow-hidden">
                <div class="bg-gray-200 px-4 py-6">
                    <h1 class="text-2xl font-bold text-gray-800">User Profile</h1>
                </div>
                <div class="px-4 py-6">

                    <div class="mb-4">
                        <label class="block text-gray-700 font-bold mb-2" for="username">Username:</label>
                        <p id="username" class="text-gray-800 font-medium">${userobj.name}</p>
                    </div>
                    <div class="mb-4">
                        <label class="block text-gray-700 font-bold mb-2" for="address">Address:</label>
                        <p id="address" class="text-gray-800 font-medium">123 Main St, Anytown, USA</p>
                    </div>
                    <div class="mb-4">
                        <label class="block text-gray-700 font-bold mb-2" for="email">Email:</label>
                        <p id="email" class="text-gray-800 font-medium">${userobj.email}</p>
                    </div>
                    <div class="mb-4">
                        <label class="block text-gray-700 font-bold mb-2" for="contact">Contact:</label>
                        <p id="contact" class="text-gray-800 font-medium">${userobj.phone_no}</p>
                    </div>
                    <div class="text-center">
                        <button class="bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded focus:outline-none focus:shadow-outline">
                            Edit Details
                        </button>
                    </div>
                </div>
            </div>
        </div>
        
        <%@include file="all_components/footer.jsp"%> 
    </body>
</html>
