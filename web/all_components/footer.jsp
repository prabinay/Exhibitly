<%-- 
    Document   : footer
    Created on : Sep 4, 2022, 2:25:23 AM
    Author     : Prab1n
--%>

<!--<div class="container-fluid text-center text-white p-3 mt-2" style="background-color: #303f9f;">
    <h5 > Copyright �2022 Exhibitly</h5>
</div>-->

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title> Exhibitly</title>

        <script>
            function generateCopyrightPage() {
                var currentYear = new Date().getFullYear();
                var copyrightText = `Copyright � ${currentYear} Your Company. All rights reserved.`;

                return copyrightText;
            }



        </script>

    </head>


    <body>
        <footer class="footer">
            <div class="container ml-8 mr-8">
                <div class="row ">
                    <div class="footer-col text-white-800" >

                        <ul  style="list-style-type: none;" class="list-disc">
                            <h4>Company</h4>
                            <li class="text-white-500"><a href="aboutUs.jsp">About</a></li>
                            <li class="text-white-500"><a href="services.jsp">our services</a></li>
                            <li class="text-white-500"><a href="policy.jsp">privacy policy</a></li>
                            <li class="text-white-500"><a href="tcs.jsp">Terms & Conditions</a></li>
                        </ul>
                    </div>
                    <div class="footer-col">

                        <ul>
                            <h4>Get Help</h4>
                            <li><a href="#">Buyer FAQ</a></li>
                            <li><a href="#">Testimonials</a></li>
                            <li><a href="#">Return Policy</a></li>
                            <li><a href="#">order status</a></li>
                            <li><a href="#">payment options</a></li>
                        </ul>
                    </div>
                    <div class="footer-col">

                        <ul>
                            <h4>Shop More</h4>
                            <li><a href="landscape">Landscape</a></li>
                            <li><a href="portrait">Portrait</a></li>
                            <li><a href="abstract#">Abstract</a></li>
                            <li><a href="cart">My Cart</a></li>
                        </ul>
                    </div>
                    <div class="footer-col">

                        <div class="social-links">
                            <h4>Follow Us</h4>
                            <a href="#"><i class="fab fa-facebook-f"></i></a>
                            <a href="#"><i class="fab fa-twitter"></i></a>
                            <a href="#"><i class="fab fa-instagram"></i></a>
                            <a href="#"><i class="fab fa-linkedin-in"></i></a>
                        </div>
                    </div>
                </div>
            </div>

<!--            <p id="copyright">
                <script>
                    var copyrightPage = generateCopyrightPage();
                    document.getElementById('copyright').textContent = copyrightPage;
                </script>
            </p>-->

        </footer>


    </body>

</html>