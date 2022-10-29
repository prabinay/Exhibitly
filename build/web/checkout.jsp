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
    </head>
    <body>
        <%@include file="all_components/navbar.jsp"%>
        <div class="container">
            <div class="py-3 text-center">
                <h2>Checkout Here</h2>
            </div>
        </div>

        <div class="container">
            <div class="row g-5">

                <!--cart Page-->
                <div class="col-md-5 col-lg-4 order-md-last">

                    <h4 class="d-flex justify-content-between align-items-center mb-3">
                        <span class="text-primary">Cart Summary</span>
                        <span class="badge bg-primary rounded-pill"></span>
                    </h4>
                    <c:forEach var="cartItem" items="${cartItemList}">
                        <ul class="list-group mb-3">
                            <li class="list-group-item d-flex justify-content-between lh-sm">
                                <div>
                                    <h6 class="my-0">${cartItem.artName}</h6>
                                    <small class="text-muted">Art by ${cartItem.artistName}</small>
                                </div>
                                <span class="text-muted">${cartItem.price}</span>
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
                            <span>Total (USD)</span>
                            <strong>$</strong>
                        </li>
                    </ul>


                    <form class="card p-2">
                        <div class="input-group">
                            <input type="text" class="form-control" placeholder="Promo code">
                            <button type="submit" class="btn btn-secondary">Redeem</button>
                        </div>
                    </form>
                </div>

                <!--billing infos-->
                <div class="col-md-7 col-lg-8">
                    <h4 class="mb-3 text-primary">Billing address</h4>

                    <form action="/checkout" method="post" class="needs-validation" novalidate="">
                        <div class="row g-3">
                            <!--                            <div class="col-sm-6">
                                                            <label for="firstName" class="form-label">First name</label>
                                                            <input type="text" class="form-control" id="firstName" placeholder="" value="" required="">
                                                            <div class="invalid-feedback">
                                                                Valid first name is required.
                                                            </div>
                                                        </div>
                            
                                                        <div class="col-sm-6">
                                                            <label for="lastName" class="form-label">Last name</label>
                                                            <input type="text" class="form-control" id="lastName" placeholder="" value="" required="">
                                                            <div class="invalid-feedback">
                                                                Valid last name is required.
                                                            </div>
                                                        </div>-->

                            <!--                                <div class="col-12">
                                                                <label for="username" class="form-label">Username</label>
                                                                <div class="input-group has-validation">
                                                                    <span class="input-group-text">@</span>
                                                                    <input type="text" class="form-control" id="username" placeholder="Username" required="">
                                                                    <div class="invalid-feedback">
                                                                        Your username is required.
                                                                    </div>
                                                                </div>
                                                            </div>
                            
                                                            <div class="col-12">
                                                                <label for="email" class="form-label">Email <span class="text-muted">(Optional)</span></label>
                                                                <input type="email" class="form-control" id="email" placeholder="you@example.com">
                                                                <div class="invalid-feedback">
                                                                    Please enter a valid email address for shipping updates.
                                                                </div>
                                                            </div>-->

                            <div class="col-12">
                                <label for="address" class="form-label">Address</label>
                                <input type="text" class="form-control" id="address" placeholder="1234 Main St" required="">
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
                                <select class="form-select" id="country" required="">
                                    <option value="">Choose...</option>
                                    <option vcalue="Nepal"> Nepal</option>
                                </select>
                                <div class="invalid-feedback">
                                    Please select a valid country.
                                </div>
                            </div>

                            <div class="col-md-4">
                                <label for="state" class="form-label">State</label>
                                <select class="form-select" id="state" required="">
                                    <option value="">Choose...</option>
                                    <option value="1"> Province No 1</option>
                                    <option value="2"> Province No 2</option>
                                    <option value="3"> Province No 3</option>
                                    <option value="4"> Province No 4</option>
                                    <option value="5"> Province No 5</option>
                                    <option value="6"> Province No 6</option>
                                    <option value="7"> Province No 7</option>
                                </select>
                                <div class="invalid-feedback">
                                    Please provide a valid state.
                                </div>
                            </div>

                            <div class="col-md-3">
                                <label for="zip" class="form-label">Post code</label>
                                <input type="text" class="form-control" id="post" placeholder="" required="">
                                <div class="invalid-feedback">
                                    Post code required.
                                </div>
                            </div>
                            
                            <div class="col-12">
                                <label for="address" class="form-label">Contact No</label>
                                <input type="text" class="form-control" id="address" placeholder="" required="">
                                <div class="invalid-feedback">
                                    Please enter your shipping address.
                                </div>
                            </div>

                        </div>

                        <!--                        <hr class="my-4">
                        
                                                <div class="form-check">
                                                    <input type="checkbox" class="form-check-input" id="same-address">
                                                    <label class="form-check-label" for="same-address">Shipping address is the same as my billing address</label>
                                                </div>
                        
                                                <div class="form-check">
                                                    <input type="checkbox" class="form-check-input" id="save-info">
                                                    <label class="form-check-label" for="save-info">Save this information for next time</label>
                                                </div>-->

                        <hr class="my-4">

                        <h4 class="mb-3 text-primary">Payment</h4>
                        <div class="form-check">
                            <input type="checkbox" class="form-check-input" id="save-info" required>
                            <label class="form-check-label" for="save-info">Cash On Delivery</label>
                        </div>


                        <!--                        <div class="my-3">
                                                    <div class="form-check">
                                                        <input id="credit" name="paymentMethod" type="radio" class="form-check-input" checked="" required="">
                                                        <label class="form-check-label" for="credit">Credit card</label>
                                                    </div>
                                                    <div class="form-check">
                                                        <input id="debit" name="paymentMethod" type="radio" class="form-check-input" required="">
                                                        <label class="form-check-label" for="debit">Debit card</label>
                                                    </div>
                                                    <div class="form-check">
                                                        <input id="paypal" name="paymentMethod" type="radio" class="form-check-input" required="">
                                                        <label class="form-check-label" for="paypal">PayPal</label>
                                                    </div>
                                                </div>
                        
                                                <div class="row gy-3">
                                                    <div class="col-md-6">
                                                        <label for="cc-name" class="form-label">Name on card</label>
                                                        <input type="text" class="form-control" id="cc-name" placeholder="" required="">
                                                        <small class="text-muted">Full name as displayed on card</small>
                                                        <div class="invalid-feedback">
                                                            Name on card is required
                                                        </div>
                                                    </div>
                        
                                                    <div class="col-md-6">
                                                        <label for="cc-number" class="form-label">Credit card number</label>
                                                        <input type="text" class="form-control" id="cc-number" placeholder="" required="">
                                                        <div class="invalid-feedback">
                                                            Credit card number is required
                                                        </div>
                                                    </div>
                        
                                                    <div class="col-md-3">
                                                        <label for="cc-expiration" class="form-label">Expiration</label>
                                                        <input type="text" class="form-control" id="cc-expiration" placeholder="" required="">
                                                        <div class="invalid-feedback">
                                                            Expiration date required
                                                        </div>
                                                    </div>
                        
                                                    <div class="col-md-3">
                                                        <label for="cc-cvv" class="form-label">CVV</label>
                                                        <input type="text" class="form-control" id="cc-cvv" placeholder="" required="">
                                                        <div class="invalid-feedback">
                                                            Security code required
                                                        </div>
                                                    </div>
                                                </div>-->

                        <hr class="my-4">

                        <button class="w-100 btn btn-primary btn-lg" type="submit">Continue to checkout</button>
                    </form>
                </div>
            </div>    

        </div>


    </form>
</div>



</body>
<div style="margin-top:105px;">
    <%@include file="all_components/footer.jsp"%>
</div>
</html>
