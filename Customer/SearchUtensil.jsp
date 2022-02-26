<%@page import="java.sql.ResultSet" %>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Utensil Search</title>
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

        <!-- jQuery library -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

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
                    <h6 class="text-info"> Select Brand</h6>
                    <ul class="list-group">
                        <%
                            String selBrand = "SELECT * from tbl_utensilbrand";
                            ResultSet rsB = con.selectCommand(selBrand);
                            while (rsB.next()) {
                        %>
                        <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input type="checkbox" class="form-check-input product_check" value="<%=rsB.getString("utslbrnd_id")%>" id="brand"><%=rsB.getString("utslbrnd_nme")%>
                                </label>
                            </div>
                        </li>
                        <%
                            }
                        %>
                    </ul>
                    <h6 class="text-info"> Select Category</h6>
                    <ul class="list-group">
                        <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label" >
                                    <input onclick="getSize(this.value)" value="Cooker" id="category" type="checkbox" class="form-check-input product_check">Cooker
                                </label>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="Peeler" id="category" type="checkbox" class="form-check-input product_check">Peeler
                                </label>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="Spatula" id="category" type="checkbox" class="form-check-input product_check">Spatula
                                </label>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="Knife" id="category" type="checkbox" class="form-check-input product_check">Knife
                                </label>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="Spoon" id="category" type="checkbox" class="form-check-input product_check">Spoon
                                </label>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="Grater" id="category" type="checkbox" class="form-check-input product_check">Grater
                                </label>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="Fork" id="category" type="checkbox" class="form-check-input product_check">Fork
                                </label>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="Whisk" id="category" type="checkbox" class="form-check-input product_check">Whisk
                                </label>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="Frying Pan" id="category" type="checkbox" class="form-check-input product_check">Frying Pan
                                </label>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="Sieve" id="category" type="checkbox" class="form-check-input product_check">Sieve
                                </label>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="Plate" id="category" type="checkbox" class="form-check-input product_check">Plate
                                </label>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="Kettle" id="category" type="checkbox" class="form-check-input product_check">Kettle
                                </label>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="Mixer Blender" id="category" type="checkbox" class="form-check-input product_check">Mixer Blender
                                </label>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="Glass" id="category" type="checkbox" class="form-check-input product_check">Glass
                                </label>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="Cup" id="category" type="checkbox" class="form-check-input product_check">Cup
                                </label>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="Sauce Pan" id="category" type="checkbox" class="form-check-input product_check">Sauce Pan
                                </label>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="Vessel" id="category" type="checkbox" class="form-check-input product_check">Vessel
                                </label>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="Container" id="category" type="checkbox" class="form-check-input product_check">Container
                                </label>
                            </div>
                        </li>
                    </ul>
                    <h6 class="text-info"> Select Material</h6>
                    <ul class="list-group">
                        <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="Aluminium" id="material" type="checkbox" class="form-check-input product_check">Aluminium
                                </label>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="Fiber" id="material" type="checkbox" class="form-check-input product_check">Fiber
                                </label>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="Plastic" id="material" type="checkbox" class="form-check-input product_check">Plastic
                                </label>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="Stainless Steel" id="material" type="checkbox" class="form-check-input product_check">Stainless Steel
                                </label>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="Wood" id="material" type="checkbox" class="form-check-input product_check">Wood
                                </label>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="Glass" id="material" type="checkbox" class="form-check-input product_check">Glass
                                </label>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="Ceramic" id="material" type="checkbox" class="form-check-input product_check">Ceramic
                                </label>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="Cast Iron" id="material" type="checkbox" class="form-check-input product_check">Cast Iron
                                </label>
                            </div>
                        </li>

                    </ul>

                    <h6 class="text-info"> Select Size</h6>
                    <ul class="list-group" id="size">
                        <li class="list-group-item" >
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="XL" id="size" type="checkbox" class="form-check-input product_check">XL
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
                            String selProduct = "SELECT * from tbl_utensil d inner join tbl_utensilbrand db on db.utslbrnd_id=d.utslbrnd_id";
                            ResultSet rsP = con.selectCommand(selProduct);
                            while (rsP.next()) {
                        %>
                        <div class="col-md-3 mb-2">
                            <div class="card-deck">
                                <div class="card border-secondary">
                                    <img src="../Assets/Files/UtensilImage/<%=rsP.getString("utsl_img")%>" class="card-img-top" height="250">
                                    <div class="card-img-secondary">
                                        <h6 class="text-light bg-info text-center rounded p-1"><%=rsP.getString("utsl_ctgry")%></h6>
                                    </div>
                                    <div class="card-body">
                                        <h4 class="card-title text-danger">
                                            Price : <%=rsP.getString("utsl_pr")%>/-
                                        </h4>
                                        <p>

                                            Brand  &nbsp;&nbsp;&nbsp;&nbsp;   : <%=rsP.getString("utsl_nme")%><br>
                                            Category  : <%=rsP.getString("utsl_ctgry")%><br>
                                            Material &nbsp; : <%=rsP.getString("utsl_mtrl")%><br>
                                            <%
                                                if (!rsP.getString("utsl_size").equals("")) {
                                            %>
                                            Size    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  : <%=rsP.getString("utsl_size")%><br>
                                          
                                            <%
                                                }
                                            else
                                                {
                                                out.println("<br>");
                                                }
                                            %>
                                        </p>
                                        <%
                                            String stockSql = "select sum(utensilstock_quantity) as stock from tbl_utensilstock where utsl_id = '" + rsP.getString("utsl_id") + "'";
                                            ResultSet rsST = con.selectCommand(stockSql);
                                            rsST.next();
                                            if (rsST.getString("stock") != null) {
                                                int stock = Integer.parseInt(rsST.getString("stock"));
                                                if (stock > 0) {
                                        %>
                                        <a href="javascript:void(0)" onclick="addCart('<%=rsP.getString("utsl_id")%>')" class="btn btn-success btn-block">Add to Cart</a>
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
                                        <a href="ViewUtensilMore.jsp?utensilid=<%=rsP.getString("utsl_id")%>" class="btn btn-warning btn-block" onclick="window.location.href = 'ViewUtensilMore.jsp'">View More</a>
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
                    url: "../Assets/AjaxPages/AjaxUtensilAddCart.jsp?id=" + id,
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
            function getSize(size)
            {

                $.ajax({
                    url: "../Assets/AjaxPages/AjaxSearchUtensilSize.jsp?size=" + size,
                    success: function(response) {
                        $("#size").html(response);
                    }
                });
            }




            $(document).ready(function() {

                $(".product_check").click(function() {
                    $("#loder").show();

                    var action = 'data';
                    var brand = get_filter_text('brand');
                    var category = get_filter_text('category');
                    var material = get_filter_text('material');
                    var size = get_filter_text('size');


                    $.ajax({
                        url: "../Assets/AjaxPages/AjaxSearchUtensil.jsp?Utensilaction=" + action + "&brand=" + brand + "&category=" + category + "&material=" + material + "&size=" + size,
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
