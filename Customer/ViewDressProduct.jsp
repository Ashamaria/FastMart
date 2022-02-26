<%@page import="java.sql.ResultSet" %>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Dress Search</title>
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
                        <%                            String selBrand = "SELECT * from tbl_dressbrand";
                            ResultSet rsB = con.selectCommand(selBrand);
                            while (rsB.next()) {
                        %>
                        <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input type="checkbox" class="form-check-input product_check" value="<%=rsB.getString("drsbrnd_id")%>" id="brand"><%=rsB.getString("drsbrnd_nme")%>
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
                                    <input value="Shirts" id="category" type="checkbox" class="form-check-input product_check">Shirts
                                </label>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="Pants" id="category" type="checkbox" class="form-check-input product_check">Pants
                                </label>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="Churidar" id="category" type="checkbox" class="form-check-input product_check">Churidar
                                </label>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="Sarees" id="category" type="checkbox" class="form-check-input product_check">Sarees
                                </label>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="Salwar" id="category" type="checkbox" class="form-check-input product_check">Salwar
                                </label>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="Shorts" id="category" type="checkbox" class="form-check-input product_check">Shorts
                                </label>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="Frocks" id="category" type="checkbox" class="form-check-input product_check">Frocks
                                </label>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="Suits" id="category" type="checkbox" class="form-check-input product_check">Suits
                                </label>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="Inner wears" id="category" type="checkbox" class="form-check-input product_check">Inner wears
                                </label>
                            </div>
                        </li>
                    </ul>
                    <h6 class="text-info"> Select Material</h6>
                    <ul class="list-group">
                        <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="Cotton" id="material" type="checkbox" class="form-check-input product_check">Cotton
                                </label>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="Jute" id="material" type="checkbox" class="form-check-input product_check">Jute
                                </label>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="Linen" id="material" type="checkbox" class="form-check-input product_check">Linen
                                </label>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="Satin" id="material" type="checkbox" class="form-check-input product_check">Satin
                                </label>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="Silk" id="material" type="checkbox" class="form-check-input product_check">Silk
                                </label>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="Wool" id="material" type="checkbox" class="form-check-input product_check">Wool
                                </label>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="Chiffon" id="material" type="checkbox" class="form-check-input product_check">Chiffon
                                </label>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="Rayon" id="material" type="checkbox" class="form-check-input product_check">Rayon
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
                        <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="Velvet" id="material" type="checkbox" class="form-check-input product_check">Velvet
                                </label>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="Crepe" id="material" type="checkbox" class="form-check-input product_check">Crepe
                                </label>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="Nylon" id="material" type="checkbox" class="form-check-input product_check">Nylon
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
                    <h6 class="text-info"> Select Size</h6>
                    <ul class="list-group">
                        <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="XL" id="size" type="checkbox" class="form-check-input product_check">XL
                                </label>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="XML" id="size" type="checkbox" class="form-check-input product_check">XML
                                </label>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="XXL" id="size" type="checkbox" class="form-check-input product_check">XXL
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
                        <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="Multicolor" id="color" type="checkbox" class="form-check-input product_check">Multicolor
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
                            String selProduct = "SELECT * from tbl_dress d inner join tbl_dressbrand db on db.drsbrnd_id=d.drsbrnd_id where sh_id='" + request.getParameter("id")+"'";
                            ResultSet rsP = con.selectCommand(selProduct);
                            while (rsP.next()) {
                        %>

                        <div class="col-md-3 mb-2">
                            <div class="card-deck">
                                <div class="card border-secondary">
                                    <img src="../Assets/Files/DressImage/<%=rsP.getString("drs_img")%>" class="card-img-top" height="250">
                                    <div class="card-img-secondary">
                                        <h6  class="text-light bg-info text-center rounded p-1"><%=rsP.getString("drs_ctgry")%></h6>
                                    </div>
                                    <div class="card-body">
                                        <h4 class="card-title text-danger">
                                            Price : <%=rsP.getString("drs_pr")%>/-
                                        </h4>
                                        <p>
                                            Brand  &nbsp;&nbsp;&nbsp;&nbsp;   : <%=rsP.getString("drsbrnd_nme")%><br>
                                            Category  : <%=rsP.getString("drs_ctgry")%><br>
                                            Material &nbsp; : <%=rsP.getString("drs_mtrl")%><br>
                                            Gender&nbsp;&nbsp;&nbsp;    : <%=rsP.getString("drs_gndr")%><br>
                                            Size    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  : <%=rsP.getString("drs_size")%><br>
                                            Color &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;     : <%=rsP.getString("drs_colr")%><br>
                                        </p>
                                        <%
                                            String stockSql = "select sum(dressstock_quantity) as stock from tbl_dressstock where drs_id = '" + rsP.getString("drs_id") + "'";
                                            ResultSet rsST = con.selectCommand(stockSql);
                                            rsST.next();
                                            if (rsST.getString("stock") != null) {
                                                int stock = Integer.parseInt(rsST.getString("stock"));
                                                if (stock > 0) {
                                        %>
                                        <a href="javascript:void(0)" onclick="addCart('<%=rsP.getString("drs_id")%>')" class="btn btn-success btn-block">Add to Cart</a>
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
                                        <a href="ViewDressMore.jsp?id=<%=rsP.getString("drs_id")%>" class="btn btn-warning btn-block">View More</a>
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
                    url: "../Assets/AjaxPages/AjaxDressAddCart.jsp?id=" + id,
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
                    var material = get_filter_text('maerial');
                    var gender = get_filter_text('gender');
                    var size = get_filter_text('size');
                    var color = get_filter_text('color');


                    $.ajax({
                        url: "../Assets/AjaxPages/AjaxSearchDress.jsp?action=" + action + "&brand=" + brand + "&category=" + category + "&material=" + material + "&gender=" + gender + "&size=" + size + "&color=" + color,
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

