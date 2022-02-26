<%@page import="java.sql.ResultSet" %>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Grocery Search</title>
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

        <!-- jQuery library --><script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

        <!-- Popper JS -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

        <!-- Latest compiled JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
        <style>
            .custom-alert-box{
                width: 20%;
                height: 10%;
                position: fixed;
                bottom: 0;
                right: 0;
                left: auto;
            }

            .success {
                color: #3c763d;
                background-color: #dff0d8;
                border-color: #d6e9c6;
                display: none;
            }

            .failure {
                color: #a94442;
                background-color: #f2dede;
                border-color: #ebccd1;
                display: none;
            }

            .warning {
                color: #8a6d3b;
                background-color: #fcf8e3;
                border-color: #faebcc;
                display: none;
            }
        </style>
        <script>
            function changeSub(cid)
            {
                var cat = get_filter_text('cat');
                if (cat.length !== 0)
                {
                    $.ajax({
                        url: "../Assets/AjaxPages/AjaxSearchSubCategory.jsp?data=" + cat,
                        success: function(response) {
                            $("#subcat").html(response);
                        }
                    });

                }
                else
                {
                    $("#subcat").html("");
                }


                function get_filter_text(text_id)
                {
                    var filterData = [];

                    $('#' + text_id + ':checked').each(function() {
                        filterData.push("\'" + $(this).val() + "\'");
                    });
                    return filterData;
                }
            }


            $(document).ready(function() {

                $(".product_check").click(function() {
                    $("#loder").show();

                    var action = 'data';

                    var category = get_filter_text('cat');
                    var subcategory = get_filter_text('subcat');
                    var unit = get_filter_text('unit');


                    $.ajax({
                        url: "../Assets/AjaxPages/AjaxSearchGrocery.jsp?action=" + action + "&cat=" + category + "&sub=" + subcategory + "&unit=" + unit,
                        success: function(response) {
                            $("#result").html(response);
                            $("#loder").hide();
                            $("#textChange").text("Filtered Products");
                        }
                    });


                });



                function get_filter_text(text_id)
                {
                    var filterData = [];

                    $('#' + text_id + ':checked').each(function() {
                        filterData.push($(this).val());
                    });
                    return filterData;
                }
            });
        </script>

    </head>
    <body>
        <div class="custom-alert-box">
            <div class="alert-box success">Successful Added to Cart !!!</div>
            <div class="alert-box failure">Failed to Add Cart !!!</div>
            <div class="alert-box warning">Already Added to Cart !!!</div>
        </div>
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-3">
                    <h5>Filter Product</h5>

                    <hr>
                    <h6 class="text-info"> Select Category</h6>
                    <ul class="list-group">
                        <%
                            String selCat = "SELECT * from tbl_grocerycategory";
                            ResultSet rsB = con.selectCommand(selCat);
                            while (rsB.next()) {
                        %>
                        <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input type="checkbox" class="form-check-input product_check" onclick="changeSub(this)" value="<%=rsB.getString("grcryctgry_id")%>" id="cat"><%=rsB.getString("grcryctgry_nme")%>
                                </label>
                            </div>
                        </li>
                        <%
                            }
                        %>
                    </ul>
                    <h6 class="text-info"> Select Sub Category</h6>
                    <ul class="list-group" id="subcat">
                        <%
                            String selCat1 = "SELECT * from tbl_grocerysubcategory";
                            ResultSet rsS = con.selectCommand(selCat1);
                            while (rsS.next()) {
                        %>
                        <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input type="checkbox" class="form-check-input product_check" onclick="changeSub(this)" value="<%=rsS.getString("grcrysubctgry_id")%>" id="cat"><%=rsS.getString("grcrysubctgry_nme")%>
                                </label>
                            </div>
                        </li>
                        <%
                            }
                        %>
                    </ul>
                    <h6 class="text-info"> Select Unit</h6>
                    <ul class="list-group">
                        <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="100 gm" id="unit" type="checkbox" class="form-check-input product_check" onclick="myFunction()">100 gm
                                </label>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="250 gm" id="unit" type="checkbox" class="form-check-input product_check">250 gm
                                </label>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="500 gm" id="unit" type="checkbox" class="form-check-input product_check">500 gm
                                </label>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="750 gm" id="unit" type="checkbox" class="form-check-input product_check">750 gm
                                </label>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="800 gm" id="unit" type="checkbox" class="form-check-input product_check">800 gm
                                </label>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="1 kg" id="unit" type="checkbox" class="form-check-input product_check">1 kg
                                </label>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="2 kg" id="unit" type="checkbox" class="form-check-input product_check">2 kg
                                </label>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="3 kg" id="unit" type="checkbox" class="form-check-input product_check">3 kg
                                </label>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="3.5 kg" id="unit" type="checkbox" class="form-check-input product_check">3.5 kg
                                </label>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="4 kg" id="unit" type="checkbox" class="form-check-input product_check">4 kg
                                </label>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="5 kg" id="unit" type="checkbox" class="form-check-input product_check">5 kg
                                </label>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="6 kg" id="unit" type="checkbox" class="form-check-input product_check">6 kg
                                </label>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="7 kg" id="unit" type="checkbox" class="form-check-input product_check">7 kg
                                </label>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="8 kg" id="unit" type="checkbox" class="form-check-input product_check">8 kg
                                </label>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="9 kg" id="unit" type="checkbox" class="form-check-input product_check">9 kg
                                </label>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="10 kg" id="unit" type="checkbox" class="form-check-input product_check">10 kg
                                </label>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="15 kg" id="unit" type="checkbox" class="form-check-input product_check">15 kg
                                </label>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="20 kg" id="unit" type="checkbox" class="form-check-input product_check">20 kg
                                </label>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="25 kg" id="unit" type="checkbox" class="form-check-input product_check">25 kg
                                </label>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="0.5 L" id="unit" type="checkbox" class="form-check-input product_check">0.5 L
                                </label>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="1 L" id="unit" type="checkbox" class="form-check-input product_check">1 L
                                </label>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="1.5 L" id="unit" type="checkbox" class="form-check-input product_check">1.5 L
                                </label>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="2 L" id="unit" type="checkbox" class="form-check-input product_check">2 L
                                </label>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="2.5 L" id="unit" type="checkbox" class="form-check-input product_check">2.5 L
                                </label>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="3 L" id="unit" type="checkbox" class="form-check-input product_check">3 L
                                </label>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="4 L" id="unit" type="checkbox" class="form-check-input product_check">4 L
                                </label>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="5 L" id="unit" type="checkbox" class="form-check-input product_check">5 L
                                </label>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="6 L" id="unit" type="checkbox" class="form-check-input product_check">6 L
                                </label>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="7 L" id="unit" type="checkbox" class="form-check-input product_check">7 L
                                </label>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="8 L" id="unit" type="checkbox" class="form-check-input product_check">8 L
                                </label>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="9 L" id="unit" type="checkbox" class="form-check-input product_check">9 L
                                </label>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="10 L" id="unit" type="checkbox" class="form-check-input product_check">10 L
                                </label>
                            </div>
                        </li>

                    </ul>


                </div>
                <div class="col-lg-9">
                    <h5 class="text-center" id="textChange">All Products</h5>
                    <hr>
                    <div class="text-center">
                        <img src="../Assets/Files/loader.gif" id='loder' width="200" style="display: none"/>
                    </div>
                    <div class="row" id="result">
                        <%
                            String selProduct = "select * from tbl_grocery g inner join tbl_grocerysubcategory gsc on gsc.grcrysubctgry_id=g.grcry_subctgry_id inner join tbl_grocerycategory gc on gc.grcryctgry_id=gsc.grcryctgry_id";
                            ResultSet rsP = con.selectCommand(selProduct);
                            while (rsP.next()) {
                        %>
                        <div class="col-md-3 mb-2">
                            <div class="card-deck">
                                <div class="card border-secondary">
                                    <img src="../Assets/Files/GroceryImage/<%=rsP.getString("grcry_img")%>" height="220" class="card-img-top">
                                    <div class="card-img-secondary">
                                        <h6  class="text-light bg-info text-center rounded p-1"><%=rsP.getString("grcrysubctgry_nme")%></h6>
                                    </div>
                                    <div class="card-body">
                                        <h4 class="card-title text-danger">
                                            Price : <%=rsP.getString("grcry_rate")%>/-
                                        </h4>
                                        <p>
                                            Category  : <%=rsP.getString("grcryctgry_nme")%><br>
                                            Unit  : <%=rsP.getString("grcry_unit")%><br>
                                        </p>
                                        <%
                                            String stockSql = "select sum(grocerystock_quantity) as stock from tbl_grocerystock where grcry_id = '" + rsP.getString("grcry_id") + "'";
                                            ResultSet rsST = con.selectCommand(stockSql);
                                            rsST.next();
                                            if (rsST.getString("stock") != null) {
                                                int stock = Integer.parseInt(rsST.getString("stock"));
                                                if (stock > 0) {
                                        %>
                                        <a href="javascript:void(0)" onclick="addCart('<%=rsP.getString("grcry_id")%>')" class="btn btn-success btn-block">Add to Cart</a>
                                        <%
                                        } else if (stock == 0) {
                                        %>
                                        <a href="javascript:void(0)" class="btn btn-danger btn-block">Out of Stock</a>
                                        <%
                                            }
                                        } else {
                                        %>
                                        <a href="javascript:void(0)" class="btn btn-warning btn-block">Stock Not Found</a>
                                        <%
                                            }
                                        %>
                                        <a href="ViewGroceryMore.jsp?groceryid=<%=rsP.getString("grcry_id")%>" class="btn btn-warning btn-block" onclick="window.location.href = 'ViewGroceryMore.jsp'">View More</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <%
                            }
                        %>
                    </div>
                </div>
            </div>
        </div>
        <script>
            function addCart(id)
            {
                $.ajax({
                    url: "../Assets/AjaxPages/AjaxGroceryAddCart.jsp?id=" + id,
                    success: function(response) {
                        if (response.trim() === "Added to Cart")
                        {
                            $("div.success").fadeIn(300).delay(1500).fadeOut(400);
                        }
                        else if (response.trim() === "Already Added to Cart")
                        {
                            $("div.warning").fadeIn(300).delay(1500).fadeOut(400);
                        }
                        else
                        {
                            $("div.failure").fadeIn(300).delay(1500).fadeOut(400);
                        }
                    }
                });
            }

            $(document).ready(function() {

                $(".product_check").click(function() {
                    $("#loder").show();

                    var action = 'data';

                    var category = get_filter_text('category');

                    var unit = get_filter_text('unit');


                    $.ajax({
                        url: "../Assets/AjaxPages/AjaxSearchGrocery.jsp?Groceryaction=" + action + "&category=" + category + "&unit=" + unit,
                        success: function(response) {
                            $("#result").html(response);
                            $("#loder").hide();
                            $("#textChange").text("Filtered Products");
                        }
                    });



                });



                function get_filter_text(text_id)
                {
                    var filterData = [];

                    $('#' + text_id + ':checked').each(function() {
                        filterData.push($(this).val());
                    });
                    return filterData;
                }
            });



        </script>
    </body>
</html>
