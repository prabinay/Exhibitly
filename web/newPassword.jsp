<%-- 
    Document   : newPassword
    Created on : Jun 26, 2023, 12:44:39 PM
    Author     : Prab1n
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Reset Password</title>
        <link rel="icon" href="https://img.icons8.com/fluency/48/000000/van-gogh.png" type="image/icon type">
        <%@include file="all_components/allCss.jsp"%> 
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta2/css/all.min.css" rel="stylesheet">
        <style>
            .error-message {
                color: red;
            }
        </style>
        <script>
            function validatePassword() {
                var passwordInput = document.getElementById("newPassword");
                var confirmPasswordInput = document.getElementById("confirmPassword");
                var password = passwordInput.value;
                var confirmPassword = confirmPasswordInput.value;
//                var passwordPattern = /^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$/;
                var isValid = true;

                var passwordError = document.getElementById("passwordError");
                var confirmPasswordError = document.getElementById("confirmPasswordError");

                // Reset error messages
                passwordError.textContent = "";
                confirmPasswordError.textContent = "";

                if (!passwordPattern.test(password)) {
                    passwordError.textContent = "Password must be at least 8 characters long and contain at least one letter and one number.";
                    isValid = false;
                }

                if (password !== confirmPassword) {
                    confirmPasswordError.textContent = "Passwords do not match.";
                    isValid = false;
                }

                return isValid;
            }
        </script>
    </head>

    <body>
        <%@include file="all_components/navbar.jsp"%>
        <div class="flex items-center justify-center my-5">
            <div class="max-w-md w-full">
                <div class="bg-white rounded shadow-lg p-6">
                    <h1 class="text-2xl font-semibold mb-4">Reset Password</h1>
                    <form action="newPassword" method="POST" onsubmit="return validatePassword()">
                        <div class="mb-4">
                            <label for="newPassword" class="text-gray-700">New Password</label>
                            <div class="relative">
                                <span class="absolute left-3 top-2/4 transform -translate-y-2/4 text-gray-400">
                                    <i class="fas fa-lock"></i>
                                </span>
                                <input id="newPassword" name="newPassword" type="password" placeholder="Enter your new password"
                                       class="border rounded-lg py-2 pl-10 pr-3 mt-1 w-full focus:outline-none focus:ring-2 focus:ring-blue-500">
                            </div>
                            <div id="passwordError" class="error-message"></div>
                        </div>
                        <div class="mb-6">
                            <label for="confirmPassword" class="text-gray-700">Confirm New Password</label>
                            <div class="relative">
                                <span class="absolute left-3 top-2/4 transform -translate-y-2/4 text-gray-400">
                                    <i class="fas fa-lock"></i>
                                </span>
                                <input id="confirmPassword" name="confirmPassword" type="password" placeholder="Confirm your new password"
                                       class="border rounded-lg py-2 pl-10 pr-3 mt-1 w-full focus:outline-none focus:ring-2 focus:ring-blue-500">
                            </div>
                            <div id="confirmPasswordError" class="error-message"></div>
                        </div>
                        <div class="mb-6">
                            <button type="submit"
                                    class="bg-blue-500 hover:bg-blue-600 text-white font-bold py-2 px-4 rounded-full w-full transition-colors duration-300">
                                Reset Password
                            </button>
                        </div>
                    </form>
                    <p class="text-center mt-4">Don't have an Account? <a href="loginAndSignin.jsp" class="text-blue-500">Register Now!</a></p>
                </div>
            </div>
        </div>
        <%@include file="all_components/footer.jsp"%> 
    </body>

</html>
