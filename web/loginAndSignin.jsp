<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Login & Registration</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css">
        <script src="https://apis.google.com/js/platform.js"></script>
        <%@include file="all_components/allCss.jsp"%>
    </head>
    <body>
        <%@include file="all_components/navbar.jsp"%>
        <div class="container mx-auto py-8">


            <div id="LoginAndRegistrationForm">
                <h1 id="formTitle" class="text-2xl font-bold mb-4">Login</h1>
                <div id="formSwitchBtn" class="flex mb-4">
                    <button onclick="ShowLoginForm()" id="ShowLoginBtn" class="active bg-blue-500 text-grey px-4 py-2 rounded-l">Login</button>
                    <button onclick="ShowRegistrationForm()" id="ShowRegistrationBtn" class="bg-blue-500 text-grey px-4 py-2 rounded-r">Registration</button>
                </div>
                <div id="LoginFrom">
                    <c:if test="${not empty failed}">
                        <h5 class="text-center text-danger">${failed}</h5>
                        <c:remove var="failed" scope="session"/>
                    </c:if>

                    <c:if test="${not empty success}">
                        <h5 class="text-center text-success">${success}</h5>
                        <c:remove var="success" scope="session"/>
                    </c:if>
                    <form action="login" method="post">
                        <div class="flex flex-col mb-4" >
                            <input id="LoginEmail" name="email" class="input-text border border-gray-400 px-4 py-2 rounded" type="text" placeholder="Email Address">
                            <input id="LoginPassword" name="password" class="mt-2 input-text border border-gray-400 px-4 py-2 rounded" type="password" placeholder="Password">
                        </div>

                        <div class="flex items-center mb-4">
                            <div class="w-1/2">
                                <a id="ForgotPassword" href="JavaScript:void(0);" onclick="ShowForgotPasswordForm()" class="text-blue-500">Forgot Password?</a>
                            </div>
                            <div class="w-1/2 text-right">
                                <input id="rememberMe" type="checkbox" class="mr-2">
                                <label for="rememberMe">Remember Me</label>
                            </div>
                        </div>

                        <div class="flex justify-center">
                            <input onclick="return ValidateLoginForm();" class="Submit-Btn bg-blue-500 text-white px-4 py-2 rounded" type="submit" value="Login" id="LoginBtn">
                        </div>
                    </form>
                    <p class="text-center mt-4 text-sm">
                        Don't have an account? 
                        <a href="JavaScript:void(0);" onclick="ShowRegistrationForm()" class="text-blue-500">Registration now</a>
                    </p>
                </div>
                <div id="RegistrationFrom">
                    <c:if test= "${not empty success}">
                        <p class="text-center text-success">${success}</p> 
                        <c:remove var="success" scope="session" />
                    </c:if>

                    <c:if test= "${not empty failed}">
                        <p class="text-center text-danger">${failed}</p> 
                        <c:remove var="failed" scope="session" />
                    </c:if>
                    <form action="register" method="post">
                        <div class="flex flex-col mb-4">
                            <input id="RegiName" name="name" class="input-text border border-gray-400 px-4 py-2 rounded" type="text" placeholder="Full Name">
                            <input id="RegiEmailAddres" name="email" class="mt-2 input-text border border-gray-400 px-4 py-2 rounded" type="email" placeholder="Email Address">
                            <input id="RegiPhone" name="phone" class="mt-2 input-text border border-gray-400 px-4 py-2 rounded" type="phone" placeholder="Phone">
                            <input id="RegiPassword" name="pwd" class="mt-2 input-text border border-gray-400 px-4 py-2 rounded" type="password" placeholder="Password">
                            <input id="RegiConfirmPassword"  class="mt-2 input-text border border-gray-400 px-4 py-2 rounded" type="password" placeholder="Confirm Password">
                            <div class="mt-2">
                                <label class="flex items-center">
                                    <input id="check" type="checkbox" class="form-checkbox" id="exampleCheck1" name="check">
                                    <span class="ml-2">Agree with our <a class="text-blue-500" href="tcs.jsp"> Terms & Conditions</a></span>
                                </label>
                            </div>

                        </div>
                        <div class="flex justify-center">
                            <input onclick="return ValidateRegistrationForm();" class="Submit-Btn bg-blue-500 text-white px-4 py-2 rounded" type="submit" value="Register" id="RegistrationitBtn">
                        </div>
                    </form>
                    <p class="text-center mt-4 text-sm">
                        Already have an account? 
                        <a href="#" onclick="ShowLoginForm()" class="text-blue-500">Login now</a>
                    </p>
                </div>
                <div id="ForgotPasswordForm">
                    <form action="">
                        <div class="flex justify-center mb-4">
                            <input class="input-text border border-gray-400 px-4 py-2 rounded" type="email" id="forgotPassEmail" placeholder="Email Address">
                        </div>
                        <div class="flex justify-center">
                            <input onclick="return ValidateForgotPasswordForm();" class="Submit-Btn bg-blue-500 text-white px-4 py-2 rounded" type="submit" value="Reset Password" id="PasswordResetBtn">
                        </div>
                    </form>
                    <p class="text-center mt-4 text-sm">
                        Back to the 
                        <a href="JavaScript:void(0);" onclick="ShowLoginForm()" class="text-blue-500">Login page</a> | <a href="JavaScript:void(0);" onclick="ShowRegistrationForm()" class="text-blue-500">Registration page</a>
                    </p>
                </div>
            </div>
        </div>

        <%@include file="all_components/footer.jsp"%>

        <script src="all_components/js/main.js" type="text/javascript"></script>
        <script src="all_components/js/validation.js" type="text/javascript"></script>
    </body>
</html>
