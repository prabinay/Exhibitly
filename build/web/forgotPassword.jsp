<%-- 
    Document   : forgotPassword
    Created on : Jun 26, 2023, 10:53:11 AM
    Author     : Prab1n
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Forgot Password</title>

        <link rel="icon" href="https://img.icons8.com/fluency/48/000000/van-gogh.png" type="image/icon type">
        <%@include file="all_components/allCss.jsp"%>    
        <style>
            /* Additional custom styles */
            .form-input {
                transition: border-color 0.3s ease;
            }

            .form-input:focus {
                outline: none;
                border-color: #6c63ff;
                box-shadow: 0 0 0 3px rgba(108, 99, 255, 0.2);
            }

            .error-message {
                color: #e53e3e;
                font-size: 0.875rem;
            }
        </style>
    </head>

    <body>
        <%@include file="all_components/navbar.jsp"%>  
        <div class="container px-4 py-8 mb-8 mt-20 mx-auto">
            <div class="flex justify-center">
                <div class="w-full md:w-8/12 lg:w-6/12">
                    <div class="bg-white rounded-lg shadow-lg p-6">
                        <h3 class="text-2xl font-bold mb-4">Forgot your password?</h3>
                        <p class="mb-4">Change your password in three easy steps. This will help you secure your password!</p>
                        <ol class="list-none">
                            <li class="flex items-start">
                                <span class="text-primary text-medium mr-2">1.</span>
                                <span>Enter your email address below.</span>
                            </li>
                            <li class="flex items-start">
                                <span class="text-primary text-medium mr-2">2.</span>
                                <span>Our system will send you an OTP to your email.</span>
                            </li>
                            <li class="flex items-start">
                                <span class="text-primary text-medium mr-2">3.</span>
                                <span>Enter the OTP on the next page.</span>
                            </li>
                        </ol>
                    </div>
                    <form class="bg-white rounded-lg shadow-lg mt-4 p-6" action="forgotPassword" method="POST" id="forgotPasswordForm">
                        <div class="mb-4">
                            <label for="email-for-pass" class="block">Enter your email address</label>
                            <input class="form-input w-full h-10 border border-gray-300 rounded-lg focus:border-primary-500 focus:outline-none transition-colors duration-300" type="text" name="email" id="email-for-pass" required="">
                            <small class="text-gray-600 text-xs">Enter the registered email address. Then we'll email an OTP to this address.</small>
                            <div id="emailError" class="error-message hidden"></div>
                        </div>
                        <div class="flex justify-between">
                            <button class="bg-green-500 hover:bg-green-600 text-white font-bold py-2 px-4 rounded" type="submit">Get New Password</button>
                            <button class="bg-red-500 hover:bg-red-600 text-white font-bold py-2 px-4 rounded" type="button" onclick="goBack()">Back to Login</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>

        <script>
            // Smooth input focus effect
            const inputField = document.getElementById('email-for-pass');
            const emailError = document.getElementById('emailError');
            const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;

            inputField.addEventListener('focus', () => {
                inputField.classList.add('border-primary-500');
                inputField.classList.add('ring-2');
                inputField.classList.add('ring-primary-500');
            });

            inputField.addEventListener('blur', () => {
                inputField.classList.remove('border-primary-500');
                inputField.classList.remove('ring-2');
                inputField.classList.remove('ring-primary-500');
            });

            // Validate email using regex
            const forgotPasswordForm = document.getElementById('forgotPasswordForm');
            forgotPasswordForm.addEventListener('submit', (e) => {
                if (!emailRegex.test(inputField.value)) {
                    e.preventDefault();
                    emailError.textContent = 'Please enter a valid email address.';
                    emailError.classList.remove('hidden');
                    inputField.classList.add('border-red-500');
                } else {
                    emailError.classList.add('hidden');
                    inputField.classList.remove('border-red-500');
                }
            });

            // Go back function for the Back to Login button
            function goBack() {
                window.history.back();
            }
        </script>

        <%@include file="all_components/footer.jsp"%>  
    </body>

</html>
