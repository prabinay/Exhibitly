<%-- 
    Document   : footer
    Created on : Sep 4, 2022, 2:25:23 AM
    Author     : Prab1n
--%>

<!--<div class="container-fluid text-center text-white p-3 mt-2" style="background-color: #303f9f;">
    <h5 > Copyright ©2022 Exhibitly</h5>
</div>-->

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <title> Exhibitly</title>

        <%@include file="allCss.jsp"%>
    </head>

    <style >

        *{
            margin:0;
            padding:0;
            box-sizing: border-box;
            font-family: 'spartan', open sans ;
        }

        h1{
            font-size: 50px;
            line-height: 64px;
            color: white;
        }

        h2{
            font-size: 45px;
            line-height: 64px;
            color: white;
        }

        h4{
            font-size: 20px;
            color: white;
        }

        h6{
            font-size: 12px;
            font-weight: 700;
        }


        p{
            font-size: 16px;
            color: black;
            margin: 15px 0 20px 0;
        }

        .section-p1{
            padding: 40px 80px;
        }

        .section-m1{
            margin: 40px 0;
        }

        body{
            width:100%;
        }



        /*feature box*/
        #feature{
            display: flex;
            align-items: center;
            justify-content: space-between;
            flex-wrap:wrap;
        }

        #feature .feature-box{
            width:180px;
            text-align: center;
            padding: 25px 15px;
            box-shadow: 20px 20px 34px rgba(0,0,0,0.03);
            border: 1px solid #cce7d0;
            border-radius: 4px;
            margin: 15px 0;
        }

        #feature .feature-box:hover{
            box-shadow: 10px 10px 54px rgba(70,62,221,0.1);
        }
        #feature .feature-box img{
            width: 100%;
            margin-bottom: 10px;

        }


        #feature .feature-box h6{
            padding: 9px 8px 6px 8px;
            line-height: 1;
            border-radius: 4px;
            color: #088178;
            background-color: #fddde4;
        }

        /*footer*/
        footer{
            display: flex;
            justify-content: space-between;
            flex-wrap:wrap;
            background-color: #303f9f;

        }

        footer .col{
            display: flex;
            flex-direction: column;
            align-items: flex-start;
            margin-bottom: 20px;

        }

        footer .logo{
            margin-bottom:30px;
        }

        footer h4{
            font-size: 14px;
            padding-bottom: 20px;

        }

        footer p{
            font-size: 13px;
            margin: 0 0 8px 0;

        }
        footer a{
            font-size: 15px;
            text-decoration: none;
            color:white;
            margin-bottom: 10px;

        }

        footer .follow{
            margin-top: 20px;

        }

        footer .follow i{
            color:white;
            padding-right: 4px;
            cursor: pointer;
        }

        footer .payment .row img{
            border: 1px solid white;
            border-radius: 6px;

        }

        footer .follow i:hover,
        footer a:hover{
            color:white;
        }

        footer .copyright{
            width:100%;
            font-size: 40px;
            text-align: center;
            color: white;
        }


    </style>
    <footer class="section-p1">
        <div class="col ">
            <img class="logo" src="img/logo2.jpg" alt="">
            <!--<h5 > <i class="fa-brands fa-artstation text-success" style="height:40px;width:40px;">Exhibitly</i> </h5>-->      

            <h4>Contact<br>
                <strong>Address:</strong> Gongabu, Kathmandu, Nepal <br>
                <strong>Phone:</strong>+01 22773663/ +977 9805163247 <br>
                <strong>Hours:</strong> 10:00 -18:00, Sun-Fri<br>
            </h4>


        </div>

        <div class="col">
            <h4>About</h4>
            <a href="#">About us</a>
            <a href="#" >Delivery Information</a>
            <a href="#" >Privacy Policy</a> 
            <a href="#" >Terms & Conditions</a>
            <a href="#">Contact us</a>

        </div>

        <div class="col">
            <h4>My Account</h4>
            <a href="register.jsp">Sign In</a>
            <a href="cart">View cart</a>
            <!--<a href="">My Wishlist</a>--> 
            <!--<a href="">Track My Order</a>-->
            <a href="">Help</a>

        </div>

        <!--        <div class="col payment">
                    <h4> Secured Payment Gateways</h4> 
                    <i class="fa fa-cc-mastercard"></i>
                    <i class="fa fa-cc-visa"></i
                    <i class="fa fa-cc-jcb"></i>
        
                </div>-->

        <div class="col">
            <h4 >Follow Us On</h4>
            <div class="container">
                <!-- Section: Social media -->
                <!--<section class="mb-4">-->`
                    <!-- Facebook -->
                    <a class="btn btn-outline-light btn-floating m-1" href="#!" role="button"
                       ><i class="fab fa-facebook-f"></i
                        ></a>

                    <!-- Twitter -->
                    <a class="btn btn-outline-light btn-floating m-1" href="#!" role="button"
                       ><i class="fab fa-twitter"></i
                        ></a>

                    <!-- Google -->
                    <a class="btn btn-outline-light btn-floating m-1" href="#!" role="button"
                       ><i class="fab fa-google"></i
                        ></a>

                    <!-- Instagram -->
                    <a class="btn btn-outline-light btn-floating m-1" href="#!" role="button"
                       ><i class="fab fa-instagram"></i
                        ></a>

                    <!-- Linkedin -->
                    <a class="btn btn-outline-light btn-floating m-1" href="#!" role="button"
                       ><i class="fab fa-linkedin-in"></i
                        ></a>

<!--                     Github 
                    <a class="btn btn-outline-light btn-floating m-1" href="#!" role="button"
                       ><i class="fab fa-github"></i
                        ></a>-->
                </section>
                <!-- Section: Social media -->
            </div>

        </div>


        <hr>
        <div class="copyright ">
            <hr>
            <h4> Copyright  © 2022 Exhibitly</h4>
        </div>
    </footer>
</html>