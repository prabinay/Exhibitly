<%-- 
    Document   : updateUserProfile
    Created on : Jun 17, 2023, 1:51:28 AM
    Author     : Prab1n
--%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>


<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Edit User Profile</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css">
        <script src="https://apis.google.com/js/platform.js"></script>
        <%@include file="all_components/allCss.jsp"%>
    </head>
    <body>
        <%@include file="all_components/navbar.jsp"%>
        <div class="container mx-auto py-4">
            

            <div id="LoginAndRegistrationForm">
                <h1 id="formTitle" class="text-2xl font-bold mb-4">Update Profile</h1>
                
                 
                <div id=" ">
                    
                    <form action="register" method="post">
                        <input type="hidden" value="${userobj.id}" name="id">
                        <div class="flex flex-col mb-4">
                            <input id="RegiName" name="name" class="input-text border border-gray-400 px-4 py-2 rounded" type="text" placeholder="Full Name" value="${userobj.name}" >
                            <input id="RegiEmailAddres" name="email" class="mt-2 input-text border border-gray-400 px-4 py-2 rounded" type="email" placeholder="Email Address" value="${userobj.email}">
                            <input id="RegiPhone" name="phone" class="mt-2 input-text border border-gray-400 px-4 py-2 rounded" type="phone" placeholder="Phone" value="${userobj.phone_no}">
                            <input id="RegiPassword" name="pwd" class="mt-2 input-text border border-gray-400 px-4 py-2 rounded" type="password" placeholder="Password" >
<!--                            <input id="RegiConfirmPassword"  class="mt-2 input-text border border-gray-400 px-4 py-2 rounded" type="password" placeholder="Confirm Password">-->
                             

                        </div>
                        <div class="flex justify-center">
                            <input onclick="return ValidateRegistrationForm();" class="Submit-Btn bg-blue-500 text-white px-4 py-2 rounded" type="submit" value="Register" id="RegistrationitBtn">
                        </div>
                    </form>
                   
                </div>
                 
            </div>
        </div>

        <%@include file="all_components/footer.jsp"%>

        <script src="all_components/js/main.js" type="text/javascript"></script>
        <script src="all_components/js/validation.js" type="text/javascript"></script>
    </body>
</html>
