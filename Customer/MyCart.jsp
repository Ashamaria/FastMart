<%--
    Document   : MyCart
    Created on : Nov 15, 2021, 10:37:02 PM
    Author     : PSST
--%>
<%@page import="java.sql.ResultSet" %>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link
            rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css"
            />
        <style>
            .product-image {
                float: left;
                width: 20%;
            }

            .product-details {
                float: left;
                width: 37%;
            }

            .product-price {
                float: left;
                width: 12%;
            }

            .product-quantity {
                float: left;
                width: 10%;
            }

            .product-removal {
                float: left;
                width: 9%;
            }

            .product-line-price {
                float: left;
                width: 12%;
                text-align: right;
            }

            /* This is used as the traditional .clearfix class */
            .group:before,
            .shopping-cart:before,
            .column-labels:before,
            .product:before,
            .totals-item:before,
            .group:after,
            .shopping-cart:after,
            .column-labels:after,
            .product:after,
            .totals-item:after {
                content: "";
                display: table;
            }

            .group:after,
            .shopping-cart:after,
            .column-labels:after,
            .product:after,
            .totals-item:after {
                clear: both;
            }

            .group,
            .shopping-cart,
            .column-labels,
            .product,
            .totals-item {
                zoom: 1;
            }

            /* Apply clearfix in a few places */
            /* Apply dollar signs */
            .product .product-price:before,
            .product .product-line-price:before,
            .totals-value:before {
                content: "₹";
            }

            /* Body/Header stuff */
            body {
                padding: 0px 30px 30px 20px;
                font-family: "HelveticaNeue-Light", "Helvetica Neue Light",
                    "Helvetica Neue", Helvetica, Arial, sans-serif;
                font-weight: 100;
            }

            h1 {
                font-weight: 100;
            }

            label {
                color: #aaa;
            }

            .shopping-cart {
                margin-top: -45px;
            }

            /* Column headers */
            .column-labels label {
                padding-bottom: 15px;
                margin-bottom: 15px;
                border-bottom: 1px solid #eee;
            }
            .column-labels .product-image,
            .column-labels .product-details,
            .column-labels .product-removal {
                text-indent: -9999px;
            }

            /* Product entries */
            .product {
                margin-bottom: 20px;
                padding-bottom: 10px;
                border-bottom: 1px solid #eee;
            }
            .product .product-image {
                text-align: center;
            }
            .product .product-image img {
                width: 100px;
            }
            .product .product-details .product-title {
                margin-right: 20px;
                font-family: "HelveticaNeue-Medium", "Helvetica Neue Medium";
            }
            .product .product-details .product-description {
                margin: 5px 20px 5px 0;
                line-height: 1.4em;
            }
            .product .product-quantity input {
                width: 40px;
            }
            .product .remove-product {
                border: 0;
                padding: 4px 8px;
                background-color: #c66;
                color: #fff;
                font-family: "HelveticaNeue-Medium", "Helvetica Neue Medium";
                font-size: 12px;
                border-radius: 3px;
            }
            .product .remove-product:hover {
                background-color: #a44;
            }

            /* Totals section */
            .totals .totals-item {
                float: right;
                clear: both;
                width: 100%;
                margin-bottom: 10px;
            }
            .totals .totals-item label {
                float: left;
                clear: both;
                width: 79%;
                text-align: right;
            }
            .totals .totals-item .totals-value {
                float: right;
                width: 21%;
                text-align: right;
            }
            .totals .totals-item-total {
                font-family: "HelveticaNeue-Medium", "Helvetica Neue Medium";
            }

            .checkout {
                float: right;
                border: 0;
                margin-top: 20px;
                padding: 6px 25px;
                background-color: #6b6;
                color: #fff;
                font-size: 25px;
                border-radius: 3px;
            }

            .checkout:hover {
                background-color: #494;
            }

            /* Make adjustments for tablet */
            @media screen and (max-width: 650px) {
                .shopping-cart {
                    margin: 0;
                    padding-top: 20px;
                    border-top: 1px solid #eee;
                }

                .column-labels {
                    display: none;
                }

                .product-image {
                    float: right;
                    width: auto;
                }
                .product-image img {
                    margin: 0 0 10px 10px;
                }

                .product-details {
                    float: none;
                    margin-bottom: 10px;
                    width: auto;
                }

                .product-price {
                    clear: both;
                    width: 70px;
                }

                .product-quantity {
                    width: 100px;
                }
                .product-quantity input {
                    margin-left: 20px;
                }

                .product-quantity:before {
                    content: "x";
                }

                .product-removal {
                    width: auto;
                }

                .product-line-price {
                    float: right;
                    width: 70px;
                }
            }
            /* Make more adjustments for phone */
            @media screen and (max-width: 350px) {
                .product-removal {
                    float: right;
                }

                .product-line-price {
                    float: right;
                    clear: left;
                    width: auto;
                    margin-top: 10px;
                }

                .product .product-line-price:before {
                    content: "Item Total: ₹";
                }

                .totals .totals-item label {
                    width: 60%;
                }
                .totals .totals-item .totals-value {
                    width: 40%;
                }
            }


            label{
                margin: 0px 15px;
            }



            /*SWITCH 2 ------------------------------------------------*/
            .switch2{
                position: relative;
                display: inline-block;
                width: 60px;
                height: 32px;
                border-radius: 27px;
                background-color: #bdc3c7;
                cursor: pointer;
                transition: all .3s;
            }
            .switch2 input{
                display: none;
            }
            .switch2 input:checked + div{
                left: calc(100% - 40px);
            }
            .switch2 div{
                position: absolute;
                width: 40px;
                height: 40px;
                border-radius: 25px;
                background-color: white;
                top: -4px;
                left: 0px;
                box-shadow: 0px 0px 0.5px 0.5px rgb(170,170,170);
                transition: all .2s;
            }

            .switch2-checked{
                background-color: #2ecc71;
            }


        </style>
    </head>
    <%
        String ch = "";
        String flag="";
        if (request.getParameter("btn_checkout") != null) {
                 
                 
                 
                 if(request.getParameter("cb_checkout")!=null){
                   flag="true";
                 }else{
                     flag="false";
                 
                 }
                 
                 
                 
                 String amt = request.getParameter("carttotalamt");
                 
                 String selD = "select * from tbl_deliveryboy d inner join tbl_deliveryboy_deliverypincode ddp on ddp.dlvryby_id=d.dlvryby_id where dlvryby_dlvrypin = '"+session.getAttribute("cpin")+"'";
                 ResultSet rsD = con.selectCommand(selD);
                rsD.next();
                String did = rsD.getString("dlvryby_id");
                
                String selC = "select * from tbl_booking where cust_id='"+session.getAttribute("cid")+"'and booking_status='0'";
                ResultSet rsC = con.selectCommand(selC);
                rsC.next();
                
                
                String upQry = "update tbl_booking set dlvryby_id='"+did+"',booking_date=curdate(),booking_amnt='"+amt+"',booking_status='1' where cust_id='"+session.getAttribute("cid")+"'";
                if(con.executeCommand(upQry))
                {
                    String updQry = "update tbl_cart set cart_status = '1' where booking_id='"+rsC.getString("booking_id")+"'";
                    con.executeCommand(updQry);
                    
                }
                 
                 session.setAttribute("bid", rsC.getString("booking_id"));
                 
                 
                 
            if(flag.equals("true"))
            {
                
               response.sendRedirect("Payment.jsp");
                
            }
            else
            {
                %>
      <script type="text/javascript">
            alert("Booking Complated");
            setTimeout(function(){window.location.href='HomePage.jsp'},100);
        </script>
     <%
            }
        }


    %>
    <body onload="recalculateCart()">
        <h1>Cart</h1>
<form method="post">
        <div class="shopping-cart" style="margin-top: 50px">
            <div class="column-labels">
                <label class="product-image">Image</label>
                <label class="product-details">Product</label>
                <label class="product-price">Price</label>
                <label class="product-quantity">Quantity</label>
                <label class="product-removal">Remove</label>
                <label class="product-line-price">Total</label>
            </div>
            <%                String sel = "select * from tbl_booking b inner join tbl_cart c on c.booking_id=b.booking_id where b.cust_id='" + session.getAttribute("cid") + "' and booking_status='0'";
                ResultSet rs = con.selectCommand(sel);
                while (rs.next()) {
                    String selDress = "select * from tbl_dress where drs_id='" + rs.getString("drs_id") + "'";
                    ResultSet rsDress = con.selectCommand(selDress);
                    if (rsDress.next()) {
                        String selDressStock = "select sum(dressstock_quantity) as stock from tbl_dressstock where drs_id='" + rsDress.getString("drs_id") + "'";
                        ResultSet rsDressStock = con.selectCommand(selDressStock);
                        if (rsDressStock.next()) {
            %>

            <div class="product">
                <div class="product-image">
                    <img
                        src="../Assets/Files/DressImage/<%=rsDress.getString("drs_img")%>"
                        />
                </div>
                <div class="product-details">
                    <div class="product-title"><%=rsDress.getString("drs_ctgry")%></div>
                    <p class="product-description">
                        <%=rsDress.getString("drs_desc")%>
                    </p>
                </div>
                <div class="product-price"><%=rsDress.getString("drs_pr")%></div>
                <div class="product-quantity">
                    <input alt="<%=rs.getString("cart_id")%>" type="number" value="<%=rs.getString("cart_qty")%>" min="1" max="<%=rsDressStock.getString("stock")%>"/>
                </div>
                <div class="product-removal">
                    <button class="remove-product" value="<%=rs.getString("cart_id")%>">Remove</button>
                </div>
                <div class="product-line-price">
                    <%
                        float pr = Float.parseFloat(rsDress.getString("drs_pr"));
                        float qty = Float.parseFloat(rs.getString("cart_qty"));
                        float tot = pr * qty;
                        out.println(String.format("%.2f", tot));
                    %>
                </div>
            </div>
            <%
                    }
                }
                String selFootwear = "select * from tbl_footwear where ftwr_id='" + rs.getString("ftwr_id") + "'";
                ResultSet rsFootwear = con.selectCommand(selFootwear);
                if (rsFootwear.next()) {
                    String selFootwearStock = "select sum(footwearstock_quantity) as stock from tbl_footwearstock where ftwr_id='" + rsFootwear.getString("ftwr_id") + "'";
                    ResultSet rsFootwearStock = con.selectCommand(selFootwearStock);
                    if (rsFootwearStock.next()) {
            %>

            <div class="product">
                <div class="product-image">
                    <img
                        src="../Assets/Files/FootwearImage/<%=rsFootwear.getString("ftwr_img")%>"
                        />
                </div>
                <div class="product-details">
                    <div class="product-title"><%=rsFootwear.getString("ftwr_ctgry")%></div>
                    <p class="product-description">
                        <%=rsFootwear.getString("ftwr_mtrl")%>
                    </p>
                </div>
                <div class="product-price"><%=rsFootwear.getString("ftwr_pr")%></div>
                <div class="product-quantity">
                    <input alt="<%=rs.getString("cart_id")%>" type="number" value="<%=rs.getString("cart_qty")%>" min="1" max="<%=rsFootwearStock.getString("stock")%>"/>
                </div>
                <div class="product-removal">
                    <button class="remove-product" value="<%=rs.getString("cart_id")%>">Remove</button>
                </div>
                <div class="product-line-price">
                    <%
                        float pr = Float.parseFloat(rsFootwear.getString("ftwr_pr"));
                        float qty = Float.parseFloat(rs.getString("cart_qty"));
                        float tot = pr * qty;
                        out.println(String.format("%.2f", tot));
                    %>
                </div>
            </div>
            <%
                    }
                }
                String selGrocery = "select * from tbl_grocery where grcry_id='" + rs.getString("grcry_id") + "'";
                ResultSet rsGrocery = con.selectCommand(selGrocery);
                if (rsGrocery.next()) {
                    String selGroceryStock = "select sum(grocerystock_quantity) as stock from tbl_grocerystock where grcry_id='" + rsGrocery.getString("grcry_id") + "'";
                    ResultSet rsGroceryStock = con.selectCommand(selGroceryStock);
                    String selGroceryBook = "select sum(cart_qty) as qty from tbl_cart  where grcry_id='" + rsGrocery.getString("grcry_id") + "'";
                    ResultSet rsGroceryBook = con.selectCommand(selGroceryBook);
                    rsGroceryBook.next();
                    int GroceryBookQty = Integer.parseInt(rsGroceryBook.getString("qty"));
                    if (rsGroceryStock.next()) {
            %>

            <div class="product">
                <div class="product-image">
                    <img
                        src="../Assets/Files/GroceryImage/<%=rsGrocery.getString("grcry_img")%>"
                        />
                </div>
                <div class="product-details">
                    <div class="product-title"><%=rsGrocery.getString("grcry_rtn")%></div>
                    <p class="product-description">
                        <%=rsGrocery.getString("grcry_unit")%>
                    </p>
                </div>
                <div class="product-price"><%=rsGrocery.getString("grcry_rate")%></div>
                <div class="product-quantity">
                    <input alt="<%=rs.getString("cart_id")%>" type="number" value="<%=rs.getString("cart_qty")%>" min="1" max="<%=Integer.parseInt(rsGroceryStock.getString("stock"))-GroceryBookQty%>"/>
                </div>
                <div class="product-removal">
                    <button class="remove-product" value="<%=rs.getString("cart_id")%>">Remove</button>
                </div>
                <div class="product-line-price">
                    <%
                        float pr = Float.parseFloat(rsGrocery.getString("grcry_rate"));
                        float qty = Float.parseFloat(rs.getString("cart_qty"));
                        float tot = pr * qty;
                        out.println(String.format("%.2f", tot));
                    %>
                </div>
            </div>

            <%
                    }
                }
                String selUtensil = "select * from tbl_utensil where utsl_id='" + rs.getString("utsl_id") + "'";
                ResultSet rsUtensil = con.selectCommand(selUtensil);
                if (rsUtensil.next()) {
                    String selUtensilStock = "select sum(utensilstock_quantity) as stock from tbl_utensilstock where utsl_id='" + rsUtensil.getString("utsl_id") + "'";
                    ResultSet rsUtensilStock = con.selectCommand(selUtensilStock);
                    if (rsUtensilStock.next()) {
            %>

            <div class="product">
                <div class="product-image">
                    <img
                        src="../Assets/Files/UtensilImage/<%=rsUtensil.getString("utsl_img")%>"
                        />
                </div>
                <div class="product-details">
                    <div class="product-title"><%=rsUtensil.getString("utsl_ctgry")%></div>
                    <p class="product-description">
                        <%=rsUtensil.getString("utsl_pr")%>
                    </p>
                </div>
                <div class="product-price"><%=rsUtensil.getString("utsl_pr")%></div>
                <div class="product-quantity">
                    <input alt="<%=rs.getString("cart_id")%>" type="number" value="<%=rs.getString("cart_qty")%>" min="1" max="<%=rsUtensilStock.getString("stock")%>"/>
                </div>
                <div class="product-removal">
                    <button class="remove-product" value="<%=rs.getString("cart_id")%>">Remove</button>
                </div>
                <div class="product-line-price">
                    <%
                        float pr = Float.parseFloat(rsUtensil.getString("utsl_pr"));
                        float qty = Float.parseFloat(rs.getString("cart_qty"));
                        float tot = pr * qty;
                        out.println(String.format("%.2f", tot));
                    %>
                </div>
            </div>
            <%
                    }
                }
                String selGadget = "select * from tbl_gadget where gd_id='" + rs.getString("gd_id") + "'";
                ResultSet rsGadget = con.selectCommand(selGadget);
                if (rsGadget.next()) {
                    String selGadgetStock = "select sum(gadgetstock_quantity) as stock from tbl_gadgetstock where gd_id='" + rsGadget.getString("gd_id") + "'";
                    ResultSet rsGadgetStock = con.selectCommand(selGadgetStock);
                    if (rsGadgetStock.next()) {
            %>

            <div class="product">
                <div class="product-image">
                    <img
                        src="../Assets/Files/GadgetImage/<%=rsGadget.getString("gd_img")%>"
                        />
                </div>
                <div class="product-details">
                    <div class="product-title"><%=rsGadget.getString("gd_ctgry")%></div>
                    <p class="product-description">
                        <%=rsGadget.getString("gd_pr")%>
                    </p>
                </div>
                <div class="product-price"><%=rsGadget.getString("gd_pr")%></div>
                <div class="product-quantity">
                    <input alt="<%=rs.getString("cart_id")%>" type="number" value="<%=rs.getString("cart_qty")%>" min="1" max="<%=rsGadgetStock.getString("stock")%>"/>
                </div>
                <div class="product-removal">
                    <button class="remove-product" value="<%=rs.getString("cart_id")%>">Remove</button>
                </div>
                <div class="product-line-price">
                    <%
                        float pr = Float.parseFloat(rsGadget.getString("gd_pr"));
                        float qty = Float.parseFloat(rs.getString("cart_qty"));
                        float tot = pr * qty;
                        out.println(String.format("%.2f", tot));
                    %>
                </div>
            </div>
            <%
                        }
                    }

                }
            %>

            <div class="totals">
                <div class="totals-item totals-item-total">
                    <label>Grand Total</label>
                    <div class="totals-value" id="cart-total">0</div>
                    <input type="hidden" id="cart-totalamt" name="carttotalamt" value=""/>
                </div>
            </div>
            
                <span >COD</span>
                <label class="switch2 switch2-checked">

                    <input type="checkbox" name="cb_checkout" checked />
                    <div></div>

                </label>
                <span>Card Payment</span>
                <button type="submit" class="checkout" name="btn_checkout">Checkout</button>
            

        </div>
</form>
        <!-- partial -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
        <script>
        /* Set rates + misc */
        var fadeTime = 300;

        /* Assign actions */
        $(".product-quantity input").change(function() {
            $.ajax({
                url: "../Assets/AjaxPages/AjaxCart.jsp?action=Update&id=" + this.alt + "&qty=" + this.value
            });
            updateQuantity(this);

        });

        $(".product-removal button").click(function() {

            $.ajax({
                url: "../Assets/AjaxPages/AjaxCart.jsp?action=Delete&id=" + this.value
            });
            removeItem(this);
        });

        /* Recalculate cart */
        function recalculateCart() {
            var subtotal = 0;

            /* Sum up row totals */
            $(".product").each(function() {
                subtotal += parseFloat(
                        $(this).children(".product-line-price").text()
                        );
            });

            /* Calculate totals */
            var total = subtotal;

            /* Update totals display */
            $(".totals-value").fadeOut(fadeTime, function() {
                $("#cart-total").html(total.toFixed(2));
                document.getElementById("cart-totalamt").value = total.toFixed(2);
                if (total == 0) {
                    $(".checkout").fadeOut(fadeTime);
                } else {
                    $(".checkout").fadeIn(fadeTime);
                }
                $(".totals-value").fadeIn(fadeTime);
            });
        }

        /* Update quantity */
        function updateQuantity(quantityInput) {
            /* Calculate line price */
            var productRow = $(quantityInput).parent().parent();
            var price = parseFloat(productRow.children(".product-price").text());
            var quantity = $(quantityInput).val();
            var linePrice = price * quantity;
            /* Update line price display and recalc cart totals */
            productRow.children(".product-line-price").each(function() {
                $(this).fadeOut(fadeTime, function() {
                    $(this).text(linePrice.toFixed(2));
                    recalculateCart();
                    $(this).fadeIn(fadeTime);
                });
            });
        }

        /* Remove item from cart */
        function removeItem(removeButton) {
            /* Remove row from DOM and recalc cart total */
            var productRow = $(removeButton).parent().parent();
            productRow.slideUp(fadeTime, function() {
                productRow.remove();
                recalculateCart();
            });

        }

        $('.switch2 input').on('change', function() {
            var dad = $(this).parent();
            if ($(this).is(':checked'))
                dad.addClass('switch2-checked');
            else
                dad.removeClass('switch2-checked');
        });
        </script>
    </body>
</html>
