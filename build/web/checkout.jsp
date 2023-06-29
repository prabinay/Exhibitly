<%-- 
    Document   : checkout
    Created on : Sep 13, 2022, 12:06:10 AM
    Author     : Prab1n
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page  isELIgnored="false"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Checkout Here</title>
        <link rel="icon" href="https://img.icons8.com/fluency/48/000000/van-gogh.png" type="image/icon type">

        <%@include file="all_components/allCss.jsp"%>
        <style>
            .print {
                display:none;
            }
            .no-print{
                display:block;

            }
            @media print{
                .print {
                    display:block;

                }
                .no-print{
                    display:none;
                }
            }
        </style>
        <script>         var jsPrintAll = function () {
                            setTimeout(function () {
                                    window.print();
                            }, 500);
                    }     </script>
    </head>
    <body>
        <div class="no-print">
            <%@include file="all_components/navbar.jsp"%>
        </div>
        <div class="container print">
            <div class="max-w-4x3 mx-auto p-8 bg-white ">
                <div class="flex justify-between items-center mb-6">
                    <div class="text-center mb-8">
                        <h1 class="text-3xl font-bold mb-2">Bill Invoice</h1>
                        <div class="w-20 border-b-2 border-gray-400 mx-auto"></div>
                    </div>
                    <div class="text-sm">
                        <span class="text-gray-600">Invoice No: <span id="invoiceNumber"></span></span>
                        <br>
                        <span class="text-gray-600">Date: <span id="invoiceDate"></span></span>
                    </div>
                </div>

                <div class="flex justify-between mb-6">
                    <div>
                        <h2 class="text-xl font-bold">From:</h2>
                        <address>
                            Exhibitly<br>
                            <!--                            123 Main Street<br>
                                                        City, State, ZIP<br>-->
                            Phone: (123) 456-7890<br>
                            Email: info@exhibitly.com
                        </address>
                    </div>
                    <div>
                        <h2 class="text-xl font-bold">To:</h2>
                        <address>
                            ${userobj.name}<br>
                            <!--                            456 Client Street<br>
                                                        City, State, ZIP<br>-->
                            Phone: ${userobj.phone_no}<br>
                            Email: ${userobj.email}
                        </address>
                    </div>
                </div>

                <div class="container p-3">
                    <div class="text-center mb-8">
                        <h3 class="text-3xl font-bold mb-2">Items Purchased</h3>
                        <div class="w-20 border-b-2 border-gray-400 mx-auto"></div>
                    </div>
                    <table class="table table-light">
                        <thead>
                            <!--<th>Photo</th>-->
                        <th>Product Name</th>
                        <th>Price</th>
                        <th>Quantity</th>

                        </thead>
                        <tbody>
                            <!--total price calculation-->
                            <c:set var="total_price" value="${0}" />

                            <c:forEach var="cartItem" items="${cartItemList}">
                                <c:set var="total_price" value="${total_price+cartItem.price}" />

                                <tr>
                                    <td>${cartItem.artName}</td>

                                    <td>Rs.${cartItem.price}</td>
                                    <td>${cartItem.quantity}

                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>

                    <div class="float-right w-full py-3" style="text-align:right;">
                        <div class="text-right">

                            <h3 style="margin-bottom: 10px;">Total Price: Rs.${total_price}</h3>

                        </div>
                    </div>
                </div>

                <div class="text-sm mt-5">
                    <strong>Payment Terms:</strong> Please make the payment within 30 days of receiving this invoice.
                </div>

            </div>

        </div>


        <div class="container mt-5 no-print " >
            <div class="row g-5">
                <!--total price calculation-->
                <c:set  var="total_price" value="${0}"/>
                <!--cart Page-->
                <div class="col-md-5 col-lg-4 order-md-last ">

                    <h4 class="d-flex justify-content-between align-items-center mb-3">
                        <span class="text-lg font-bold text-blue-500 text-center">Cart Summary</span>
                        <span class="badge bg-primary rounded-pill"></span>
                    </h4>
                    <c:forEach var="cartItem" items="${cartItemList}">
                        <c:set  var="total_price" value="${total_price+cartItem.price}"/>
                        <ul class="list-group mb-3">
                            <li class="list-group-item d-flex justify-content-between lh-sm">
                                <div>
                                    <h6 class="my-0">${cartItem.artName}</h6>
                                    <small class="text-muted">Art by ${cartItem.artistName}</small>
                                </div>
                                <span class="text-muted">Rs.${cartItem.price}</span>
                            </li>

                            <!--                            <li class="list-group-item d-flex justify-content-between bg-light">
                                                            <div class="text-success">
                                                                <h6 class="my-0">Promo code</h6>
                                                                <small>EXAMPLECODE</small>
                                                            </div>
                                                            <span class="text-success">−$5</span>
                                                        </li>-->
                        </c:forEach>
                        <li class="list-group-item d-flex justify-content-between">
                            <span>Total (NRs)</span>
                            <strong>Rs.${total_price}</strong>
                        </li>
                    </ul>
                    <div class="no-print bg-blue-500 hover:bg-blue-700 text-white py-2 px-4 rounded-md font-medium text-center ">
                        <input   type="button" id="btnPrint" onclick="jsPrintAll()" value="Get Receipt" />
                    </div>

                </div>

                <!--billing infos-->
                <div class="col-md-7 col-lg-8">
                    <h4 class="text-lg font-bold text-blue-500 ">Billing address</h4>

                    <form action="checkout" method="post" class="needs-validation mt-2" novalidate="">
                        <div class="row g-3">

                            <div class="col-12">
                                <label for="address" class="form-label">Address</label>
                                <input type="text" class="form-control" name="address" placeholder="1234 Main St" required="">
                                <div class="invalid-feedback">
                                    Please enter your shipping address.
                                </div>
                            </div>

                            <!--                            <div class="col-12">
                                                            <label for="address2" class="form-label">Address 2 <span class="text-muted">(Optional)</span></label>
                                                            <input type="text" class="form-control" id="address2" placeholder="Apartment or suite">
                                                        </div>-->

                            <div class="col-md-5">
                                <label for="country" class="form-label">Country</label>
                                <select class="form-select" name="country" required>
                                    <option value="">Choose...</option>
                                    <option value="Nepal"> Nepal</option>
                                </select>
                                <div class="invalid-feedback">
                                    Please select a valid country.
                                </div>
                            </div>

                            <div class="col-md-4">
                                <label for="state" class="form-label">State</label>
                                <select class="form-select" name="state" required>
                                    <option value="">Choose...</option>
                                    <option value="Province No 1"> Province No 1</option>
                                    <option value="Province No 2"> Province No 2</option>
                                    <option value="Province No 3"> Province No 3</option>
                                    <option value="Province No 4"> Province No 4</option>
                                    <option value="Province No 5"> Province No 5</option>
                                    <option value="Province No 6"> Province No 6</option>
                                    <option value="Province No 7"> Province No 7</option>
                                </select>
                                <div class="invalid-feedback">
                                    Please provide a valid state.
                                </div>
                            </div>

                            <div class="col-md-3">
                                <label for="zip" class="form-label">Post code</label>
                                <input id="RegiPhone" name="phone"type="text" class="form-control" name="postcode" placeholder="" pattern="^\d{5}(?:-\d{4})?$" required>
                                <div class="invalid-feedback">
                                    Post code required.
                                </div>
                            </div>

                            <div class="col-12">
                                <label for="contactNo" class="form-label">Contact No</label>
                                <input id="RegiPhone"  name="phone" value="${userobj.phone_no}" type="text" class="form-control" name="contactno"  pattern="[0-9]{10}"   pattern="[0-9]{10}" required>

                                <div class="invalid-feedback">
                                    Please enter your shipping address.
                                </div>
                            </div>

                        </div>

                        <hr class="my-4">

                        <h4 class="text-lg font-bold text-blue-500 ">Payment</h4>
                        <div class="form-check">

                            <label class="form-check-label" for="save-info">
                                <input id="payment-button" type="checkbox" name="checkboxGroup" class="form-check-input" id="save-info" required>Pay via Khalti
                            </label>
                        </div>

                        <!--                        <div class="justify-start mt-2">
                                                    <button id="payment-button">
                                                     <img src="img/khalti.jpg" alt="Khalti Logo" class="mr-2 h-6">
                                                        
                                                    </button>
                                                </div>-->


                        <hr class="my-4">

                        <button class="bg-blue-500 hover:bg-blue-700 text-white py-2 px-4 rounded-md font-medium" type="submit">Place Order</button>

<!--                        <div class="flex justify-center">
                            <input onclick="return ValidateRegistrationForm();" class="Submit-Btn bg-blue-500 text-white px-4 py-2 rounded" type="submit" value="Register" id="RegistrationitBtn">
                        </div>-->
                    </form>
                </div>
            </div>    

        </div>

    </div>



    <script>
        window.onload = function () {
            var invoiceNumber = Math.floor(Math.random() * 1000000); // Generate a random number
            document.getElementById("invoiceNumber").textContent = invoiceNumber; // Set the generated number in the element
        }


        // Generate unique invoice number
        function generateInvoiceNumber() {
            const timestamp = Date.now();
            const randomNum = Math.floor(Math.random() * 10000);
            return `${timestamp}-${randomNum}`;
                }

                // Get current date in desired format
                function getCurrentDate() {
                    const options = {year: 'numeric', month: 'long', day: 'numeric'};
                    return new Date().toLocaleDateString(undefined, options);
                }

                // Set invoice number and date on page load
                window.addEventListener('DOMContentLoaded', function () {
                    const invoiceNumber = generateInvoiceNumber();
                    const invoiceDate = getCurrentDate();

                    document.getElementById('invoiceNumber').textContent = invoiceNumber;
                    document.getElementById('invoiceDate').textContent = invoiceDate;
                });


//  Khalti integration
                var config = {
                    // replace the publicKey with yours
                    "publicKey": "test_public_key_6438ab66f99f4d6f97c19e6931cb9078",
                    "productIdentity": "1234567890",
                    "productName": "Dragon",
                    "productUrl": "http://gameofthrones.wikia.com/wiki/Dragons",
                    "paymentPreference": [
                        "KHALTI",
//                    "EBANKING",
//                    "MOBILE_BANKING",
//                    "CONNECT_IPS",
//                    "SCT",
                    ],
                    "eventHandler": {
                        onSuccess(payload) {
                            // hit merchant api for initiating verfication
                            console.log(payload);
                            alert('Success! Payments successful.');
                        },
                        onError(error) {
                            console.log(error);
                            alert('Failed! Payments is not successful.');
                        },
                        onClose() {
                            console.log('widget is closing');
                        }
                    }
                };

                var checkout = new KhaltiCheckout(config);
                var btn = document.getElementById("payment-button");
                btn.onclick = function () {
                    // minimum transaction amount must be 10, i.e 1000 in paisa.
                    checkout.show({amount: ${total_price} });
                }
    </script>

    <script src="all_components/js/validation.js" type="text/javascript"></script>



</body>
<div style="margin-top:105px;" class="no-print">
    <%@include file="all_components/footer.jsp"%>
</div>
</html>
