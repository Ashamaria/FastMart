<%@page import="java.sql.ResultSet" %>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Footwear Search</title>
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
                            String selBrand = "SELECT * from tbl_footwearbrand";
                            ResultSet rsB = con.selectCommand(selBrand);
                            while (rsB.next()) {
                        %>
                        <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input type="checkbox" class="form-check-input product_check" value="<%=rsB.getString("ftwrbrnd_id")%>" id="brand"><%=rsB.getString("ftwrbrnd_nme")%>
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
                                <label class="form-check-label">
                                    <input value="Shoe" id="category" type="checkbox" class="form-check-input product_check">Shoe
                                </label>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="Flats" id="category" type="checkbox" class="form-check-input product_check">Flats
                                </label>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="Jutis" id="category" type="checkbox" class="form-check-input product_check">Jutis
                                </label>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="Heels" id="category" type="checkbox" class="form-check-input product_check">Heels
                                </label>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="Sandals" id="category" type="checkbox" class="form-check-input product_check">Sandals
                                </label>
                            </div>
                        </li>

                    </ul>

                    <h6 class="text-info"> Select Gender</h6>
                    <ul class="list-group">
                        <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="Male" id="gender" type="checkbox" class="form-check-input product_check">Male
                                </label>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="Female" id="gender" type="checkbox" class="form-check-input product_check">Female
                                </label>
                            </div>
                        </li>
                    </ul>
                    <h6 class="text-info"> Select Isformal</h6>
                    <ul class="list-group">
                        <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="formal" id="isformal" type="checkbox" class="form-check-input product_check">Formal
                                </label>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="Casual" id="isformal" type="checkbox" class="form-check-input product_check">Casual
                                </label>
                            </div>
                        </li>
                    </ul>
                    <h6 class="text-info"> Select Size</h6>
                    <ul class="list-group">
                        <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="6" id="size" type="checkbox" class="form-check-input product_check">6
                                </label>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="6.5" id="size" type="checkbox" class="form-check-input product_check">6.5
                                </label>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="7" id="size" type="checkbox" class="form-check-input product_check">7
                                </label>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="7.5" id="size" type="checkbox" class="form-check-input product_check">7.5
                                </label>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="8" id="size" type="checkbox" class="form-check-input product_check">8
                                </label>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="8.5" id="size" type="checkbox" class="form-check-input product_check">8.5
                                </label>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="9" id="size" type="checkbox" class="form-check-input product_check">9
                                </label>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="9.5" id="size" type="checkbox" class="form-check-input product_check">9.5
                                </label>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="10" id="size" type="checkbox" class="form-check-input product_check">10
                                </label>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="10.5" id="size" type="checkbox" class="form-check-input product_check">10.5
                                </label>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="11" id="size" type="checkbox" class="form-check-input product_check">11
                                </label>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="11.5" id="size" type="checkbox" class="form-check-input product_check">11.5
                                </label>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="12" id="size" type="checkbox" class="form-check-input product_check">12
                                </label>
                            </div>
                        </li>
                    </ul>
                    <h6 class="text-info"> Select Material</h6>
                    <ul class="list-group">
                        <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="Leather" id="material" type="checkbox" class="form-check-input product_check">Leather
                                </label>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="Canvas" id="material" type="checkbox" class="form-check-input product_check">Canvas
                                </label>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="Rubber" id="material" type="checkbox" class="form-check-input product_check">Rubber
                                </label>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="Synthetics" id="material" type="checkbox" class="form-check-input product_check">Synthetics
                                </label>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="Foam" id="material" type="checkbox" class="form-check-input product_check">Foam
                                </label>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="Denim" id="material" type="checkbox" class="form-check-input product_check">Denim
                                </label>
                            </div>
                        </li>                        
                    </ul>
                    <h6 class="text-info"> Select Color</h6>
                    <ul class="list-group">
                        <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="Red" id="color" type="checkbox" class="form-check-input product_check">Red
                                </label>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="Redorange" id="color" type="checkbox" class="form-check-input product_check">Redorange
                                </label>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="Orange" id="color" type="checkbox" class="form-check-input product_check">Orange
                                </label>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="yellow" id="color" type="checkbox" class="form-check-input product_check">yellow
                                </label>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="Yellowgreen" id="color" type="checkbox" class="form-check-input product_check">Yellowgreen
                                </label>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="Green" id="color" type="checkbox" class="form-check-input product_check">Green
                                </label>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="Skyblue" id="color" type="checkbox" class="form-check-input product_check">Skyblue
                                </label>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="Blue" id="color" type="checkbox" class="form-check-input product_check">Blue
                                </label>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="Violet" id="color" type="checkbox" class="form-check-input product_check">Violet
                                </label>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="Brown" id="color" type="checkbox" class="form-check-input product_check">Brown
                                </label>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="Black" id="color" type="checkbox" class="form-check-input product_check">Black
                                </label>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="White" id="color" type="checkbox" class="form-check-input product_check">White
                                </label>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="Grey" id="color" type="checkbox" class="form-check-input product_check">Grey
                                </label>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="Magenta" id="color" type="checkbox" class="form-check-input product_check">Magenta
                                </label>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="Pink" id="color" type="checkbox" class="form-check-input product_check">Pink
                                </label>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="LightBlue" id="color" type="checkbox" class="form-check-input product_check">LightBlue
                                </label>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="Aquagreen" id="color" type="checkbox" class="form-check-input product_check">Aquagreen
                                </label>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="Jadegreen" id="color" type="checkbox" class="form-check-input product_check">Jadegreen
                                </label>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="Peach" id="color" type="checkbox" class="form-check-input product_check">Peach
                                </label>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="Goldenyellow" id="color" type="checkbox" class="form-check-input product_check">Goldenyellow
                                </label>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="Yelloworange" id="color" type="checkbox" class="form-check-input product_check">Yelloworange
                                </label>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="Mahogany" id="color" type="checkbox" class="form-check-input product_check">Mahogany
                                </label>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="Tan" id="color" type="checkbox" class="form-check-input product_check">Tan
                                </label>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="Lightbrown" id="color" type="checkbox" class="form-check-input product_check">Lightbrown
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
                            String selProduct = "SELECT * from tbl_footwear d inner join tbl_footwearbrand db on db.ftwrbrnd_id=d.ftwrbrnd_id";
                            ResultSet rsP = con.selectCommand(selProduct);
                            while (rsP.next()) {
                        %>
                        <div class="col-md-3 mb-2">
                            <div class="card-deck">
                                <div class="card border-secondary">
                                    <img src="../Assets/Files/FootwearImage/<%=rsP.getString("ftwr_img")%>" class="card-img-top" height="250">
                                    <div class="card-img-secondary">
                                        <h6 class="text-light bg-info text-center rounded p-1"><%=rsP.getString("ftwr_ctgry")%></h6>
                                    </div>
                                    <div class="card-body">
                                        <h4 class="card-title text-danger">
                                            Price : <%=rsP.getString("ftwr_pr")%>/-
                                        </h4>
                                        <p>
                                            Brand  &nbsp;&nbsp;&nbsp;&nbsp;   : <%=rsP.getString("ftwrbrnd_nme")%><br>
                                            Category  : <%=rsP.getString("ftwr_ctgry")%><br>
                                            Gender&nbsp;&nbsp;&nbsp;    : <%=rsP.getString("ftwr_gndr")%><br>
                                            Material &nbsp; : <%=rsP.getString("ftwr_mtrl")%><br>
                                            Isformal &nbsp;&nbsp;&nbsp;    : <%=rsP.getString("ftwr_isfrml")%><br>
                                            Size    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  : <%=rsP.getString("ftwr_size")%><br>
                                            Color &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;     : <%=rsP.getString("ftwr_colr")%><br>
                                        </p>
                                        <%
                                            String stockSql = "select sum(footwearstock_quantity) as stock from tbl_footwearstock where ftwr_id = '" + rsP.getString("ftwr_id") + "'";
                                            ResultSet rsST = con.selectCommand(stockSql);
                                            rsST.next();
                                            if (rsST.getString("stock") != null) {
                                                int stock = Integer.parseInt(rsST.getString("stock"));
                                                if (stock > 0) {
                                        %>
                                        <a href="javascript:void(0)" onclick="addCart('<%=rsP.getString("ftwr_id")%>')" class="btn btn-success btn-block">Add to Cart</a>
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
                                        <a href="ViewFootwearMore.jsp?footwearid=<%=rsP.getString("ftwr_id")%>" class="btn btn-warning btn-block" onclick="window.location.href = 'ViewFootwearMore.jsp'">View More</a>
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
                    url: "../Assets/AjaxPages/AjaxFootwearAddCart.jsp?id=" + id,
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
                    var brand = get_filter_text('brand');
                    var category = get_filter_text('category');
                    var material = get_filter_text('material');
                    var gender = get_filter_text('gender');
                    var size = get_filter_text('size');
                    var color = get_filter_text('color');
                    var isformal = get_filter_text('isformal')


                    $.ajax({
                        url: "../Assets/AjaxPages/AjaxSearchFootwear.jsp?action=" + action + "&brand=" + brand + "&category=" + category + "&material=" + material + "&gender=" + gender + "&size=" + size + "&color=" + color + "&isformal=" + isformal,
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