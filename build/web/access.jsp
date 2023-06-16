<%-- 
    Document   : access.jsp
    Created on : Jun 13, 2023, 12:17:08 PM
    Author     : Prab1n
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Accessibility - Exhibity</title>
        <link rel="icon" href="https://img.icons8.com/fluency/48/000000/van-gogh.png" type="image/icon type">
        <%@include file="all_components/allCss.jsp"%>   
    </head>
    <body class="bg-gray-100">
        <%@include file="all_components/navbar.jsp"%>   
       
        <main class="container mx-auto bg-blue-100 max-w-screen-xl px-4 py-8 mb-2 mt-2" style="max-width: 800px;" >
            <!--<h1 class="text-2xl font-semibold mb-4"></h1>-->
            <div class="text-center mb-8 ">
                <h1 class="text-3xl font-bold mb-2 ">Accessibility Statement</h1>
                <div class="w-20 border-b-2 border-gray-400 mx-auto"></div>
            </div>
            
            <section class="mb-8">
                <h3 class="text-xl font-semibold mb-2">
                    <i class="fa fa-info-circle fa-lg text-blue-500 mr-2"></i>
                    Introduction
                </h3>
                <p>This Accessibility Statement outlines our commitment to making the Online Art Gallery website accessible to all users, including those with disabilities.</p>
            </section>

            <section class="mb-8">
                <h3 class="text-xl font-semibold mb-2">
                    <i class="fa fa-check-circle fa-lg text-green-500 mr-2"></i>
                    Accessibility Standards
                </h3>
                <p>We strive to comply with the Web Content Accessibility Guidelines (WCAG) 2.1 and aim to meet the Level AA success criteria. We continuously work towards improving the accessibility of our website.</p>
            </section>

            <section class="mb-8">
                <h3 class="text-xl font-semibold mb-2">
                    <i class="fa fa-cogs fa-lg text-purple-500 mr-2"></i>
                    Accessibility Features
                </h3>
                <p>We have implemented various accessibility features to enhance user experience, including:</p>
                <ul class="list-disc list-inside">
                    <li>Keyboard navigation support</li>
                    <li>Alternative text for images</li>
                    <li>Resizable text for better readability</li>
                    <li>High contrast mode</li>
                    <li>Accessible forms and input fields</li>
                </ul>
            </section>

            <section class="mb-8">
                <h3 class="text-xl font-semibold mb-2">
                    <i class="fa fa-exclamation-circle fa-lg text-red-500 mr-2"></i>
                    Limitations
                </h3>
                <p>While we strive to provide an accessible experience, we recognize that some areas of our website may still present accessibility challenges. We are actively working to address these limitations.</p>
            </section>

            <section class="mb-8">
                <h3 class="text-xl font-semibold mb-2">
                    <i class="fa fa-envelope fa-lg text-blue-500 mr-2"></i>
                    Contact Information
                </h3>
                <p>If you encounter any accessibility barriers on our website or have suggestions for improvement, please let us know by contacting our support team:</p>
                <ul class="list-disc list-inside">
                    <li>Email: support@onlineartgallery.com</li>
                    <li>Phone: 123-456-7890</li>
                </ul>
            </section>

            <section class="mb-8">
                <h3 class="text-xl font-semibold mb-2">
                    <i class="fa fa-comment fa-lg text-orange-500 mr-2"></i>
                    Feedback Mechanism
                </h3>
                <p>We welcome your feedback on the accessibility of our website. If you have encountered any accessibility issues or have suggestions, please fill out our <a href="#" class="text-blue-500">Accessibility Feedback Form</a>.</p>
            </section>

            <section>
                <h3 class="text-xl font-semibold mb-2">
                    <i class="fa fa-calendar fa-lg text-yellow-500 mr-2"></i>
                    Timeline for Improvements
                </h3>
                <p>We are committed to continuously improving the accessibility of our website. We are actively working on the following accessibility enhancements:</p>
                <ul class="list-disc list-inside">
                    <li>Implementing ARIA attributes for enhanced screen reader support</li>
                    <li>Providing captions for multimedia content</li>
                    <li>Conducting regular accessibility audits and user testing</li>
                </ul>
                <p>We aim to complete these improvements within the next six months.</p>
            </section>
        </main>

    </body>

    <%@include file="all_components/footer.jsp"%> 
</html>
