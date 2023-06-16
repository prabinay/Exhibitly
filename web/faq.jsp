<%-- 
    Document   : faq
    Created on : Jun 16, 2023, 11:25:18 PM
    Author     : Prab1n
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>FAQ Page</title>
        <link rel="icon" href="https://img.icons8.com/fluency/48/000000/van-gogh.png" type="image/icon type">

        <%@include file="all_components/allCss.jsp"%>

        <style>
            .wrapper {
                margin-top: 32px;
                margin-bottom: 32px;
            }

            .text-center {
                text-align: center;
            }

            .text-5xl {
                font-size: 3rem;
            }

            .font-semibold {
                font-weight: 600;
            }

            .mb-10 {
                margin-bottom: 2.5rem;
            }

            .flex {
                display: flex;
            }

            .flex-col {
                flex-direction: column;
            }

            .items-center {
                align-items: center;
            }

            .gap-5 {
                gap: 1.25rem;
            }

            .bg-red-100 {
                background-color: #FECACA;
            }

            .p-4 {
                padding: 1rem;
            }

            .text-justify {
                text-align: justify;
            }

            .mx-5 {
                margin-left: 1.25rem;
                margin-right: 1.25rem;
            }

            .md\:w-9\/12 {
                width: 75%;
            }

            .justify-between {
                justify-content: space-between;
            }

            .cursor-pointer {
                cursor: pointer;
            }

            .text-blue-500 {
                color: #3B82F6;
            }

            .text-xl {
                font-size: 1.25rem;
            }

            .text-green {
                color: #10B981;
            }

            .text-sm {
                font-size: 0.875rem;
            }

            .md\:text-base {
                font-size: 1rem;
            }
        </style>
    </head>
    <%@include file="all_components/navbar.jsp"%>  

    <body class="bg-gray-100">
        <div class="wrapper mt-4 mb-32">
            <h1 class="text-center text-5xl font-semibold mb-10">FAQ</h1>
            <div class="flex flex-col items-center gap-3">
                <!-- First Question -->
                <div class="flex flex-col gap-2 bg-red-100 p-4 text-justify mx-5 md:w-9/12">
                    <!-- Question -->
                    <div class="flex justify-between items-center cursor-pointer text-blue-500">
                        <h1 class="text-xl font-semibold text-green">How do I browse artwork on the online gallery?</h1>
                    </div>

                    <!-- Answer -->
                    <p class="text-sm md:text-base">
                        You can browse artwork on our online gallery by visiting our website and navigating 
                        through the different categories or using the search function to find specific pieces.
                    </p>
                </div>

                <div class="flex flex-col gap-2 bg-red-100 p-4 text-justify mx-5 md:w-9/12">
                    <!-- Question -->
                    <div class="flex justify-between items-center cursor-pointer text-blue-500">
                        <h1 class="text-xl font-semibold text-green">How can I purchase artwork from the online
                            gallery?</h1>
                    </div>

                    <!-- Answer -->
                    <p class="text-sm md:text-base">
                        To purchase artwork from our online gallery, simply select the piece you are interested 
                        and click on the "Add to Cart" or "Buy Now" button. Follow the prompts to complete 
                        purchase securely.                     </p>
                </div>

                <div class="flex flex-col gap-2 bg-red-100 p-4 text-justify mx-5 md:w-9/12">
                    <!-- Question -->
                    <div class="flex justify-between items-center cursor-pointer text-blue-500">
                        <h1 class="text-xl font-semibold text-green">What payment methods are accepted?</h1>
                    </div>

                    <!-- Answer -->
                    <p class="text-sm md:text-base">
                        We accept payment via Khalti only for now.
                        You can choose the payment option during the checkout process.
                    </p>
                </div>

                <div class="flex flex-col gap-2 bg-red-100 p-4 text-justify mx-5 md:w-9/12">
                    <!-- Question -->
                    <div class="flex justify-between items-center cursor-pointer text-blue-500">
                        <h1 class="text-xl font-semibold text-green">How can I contact customer support for further assistance?
                        </h1>
                    </div>

                    <!-- Answer -->
                    <p class="text-sm md:text-base">
                        If you have any additional questions or need further assistance, you can reach out to us via email   
                        and our customer support team will be happy to assist you.
                    </p>
                </div>

                <div class="flex flex-col gap-2 bg-red-100 p-4 text-justify mx-5 md:w-9/12">
                    <!-- Question -->
                    <div class="flex justify-between items-center cursor-pointer text-blue-500">
                        <h1 class="text-xl font-semibold text-green">How can I purchase artwork from the online gallery?</h1>
                    </div>

                    <!-- Answer -->
                    <p class="text-sm md:text-base">
                        To purchase artwork from our online gallery, simply select the piece you are interested in and click on the "Add to Cart" or "Buy Now" button. Follow the prompts to complete your purchase securely.                     </p>
                </div>

                <div class="flex flex-col gap-2 bg-red-100 p-4 text-justify mx-5 md:w-9/12">
                    <!-- Question -->
                    <div class="flex justify-between items-center cursor-pointer text-blue-500">
                        <h1 class="text-xl font-semibold text-green">How can I purchase artwork from the online gallery?</h1>
                    </div>

                    <!-- Answer -->
                    <p class="text-sm md:text-base">
                        To purchase artwork from our online gallery, simply select the piece you are interested in and click on the "Add to Cart" or "Buy Now" button. Follow the prompts to complete your purchase securely.                     </p>
                </div>



                <!-- Repeat the above question and answer blocks for the remaining questions -->

            </div>
        </div>
    </body>

    <%@include file="all_components/footer.jsp"%> 

</html>
