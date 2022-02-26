<%-- 
    Document   : ViewGadgetProduct
    Created on : 20 Nov, 2021, 8:49:15 PM
    Author     : ajula
--%>

<%@page import="java.sql.ResultSet" %>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Gadget Search</title>
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
                            String selBrand = "SELECT * from tbl_gadgetbrand";
                            ResultSet rsB = con.selectCommand(selBrand);
                            while (rsB.next()) {
                        %>
                        <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input type="checkbox" class="form-check-input product_check" value="<%=rsB.getString("gdbrnd_id")%>" id="brand"><%=rsB.getString("gdbrnd_nme")%>
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
                                    <input value="Laptop" id="category" type="checkbox" class="form-check-input product_check">Laptop
                                </label>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="Mobile" id="category" type="checkbox" class="form-check-input product_check">Mobile
                                </label>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="Headset" id="category" type="checkbox" class="form-check-input product_check">Headset
                                </label>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="Camera" id="category" type="checkbox" class="form-check-input product_check">Camera
                                </label>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="Television" id="category" type="checkbox" class="form-check-input product_check">Television
                                </label>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="Pendrive" id="category" type="checkbox" class="form-check-input product_check">Pendrive
                                </label>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="iPad" id="category" type="checkbox" class="form-check-input product_check">iPad
                                </label>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="Bluetooth Speaker" id="category" type="checkbox" class="form-check-input product_check">Bluetooth Speaker
                                </label>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="Scanner" id="category" type="checkbox" class="form-check-input product_check">Scanner
                                </label>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="Printer" id="category" type="checkbox" class="form-check-input product_check">Printer
                                </label>
                            </div>
                        </li>
                    </ul>
                    <h6 class="text-info"> Select Storage</h6>
                    <ul class="list-group">
                        <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="HDD" id="gadget-mmem" type="checkbox" class="form-check-input product_check">HDD
                                </label>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="SDD" id="gadget-mmem" type="checkbox" class="form-check-input product_check">SDD
                                </label>
                            </div>
                        </li>
                        
                    </ul>
                     <h6 class="text-info"> Select Capacity</h6>
                    <ul class="list-group">
                        <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="128GB" id="material" type="checkbox" class="form-check-input product_check">128GB
                                </label>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="256GB" id="gadget-ssd" type="checkbox" class="form-check-input product_check">256GB
                                </label>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="512GB" id="gadget-ssd" type="checkbox" class="form-check-input product_check">512GB
                                </label>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="1TB" id="gadget-ssd" type="checkbox" class="form-check-input product_check">1TB
                                </label>
                            </div>
                        </li>
                          <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="2TB" id="gadget-ssd" type="checkbox" class="form-check-input product_check">2TB
                                </label>
                            </div>
                        </li>
                    </ul>
                      <h6 class="text-info"> Select FrontCam</h6>
                    <ul class="list-group">
                        <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="3.9MP" id="gadget-fcam" type="checkbox" class="form-check-input product_check">3.9MP
                                </label>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="4MP" id="gadget-fcam" type="checkbox" class="form-check-input product_check">4MP
                                </label>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="4.5MP" id="gadget-fcam" type="checkbox" class="form-check-input product_check">4.5MP
                                </label>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="5MP" id="gadget-fcam" type="checkbox" class="form-check-input product_check">5MP
                                </label>
                            </div>
                        </li>
                          <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="5.5MP" id="gadget-fcam" type="checkbox" class="form-check-input product_check">5.5MP
                                </label>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="6MP" id="gadget-fcam" type="checkbox" class="form-check-input product_check">6MP
                                </label>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="6.5MP" id="gadget-fcam" type="checkbox" class="form-check-input product_check">6.5MP
                                </label>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="7MP" id="gadget-fcam" type="checkbox" class="form-check-input product_check">7MP
                                </label>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="7.5MP" id="gadget-fcam" type="checkbox" class="form-check-input product_check">7.5MP
                                </label>
                            </div>
                        </li>
                          <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="8MP" id="gadget-fcam" type="checkbox" class="form-check-input product_check">8MP
                                </label>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="8.5MP" id="gadget-fcam" type="checkbox" class="form-check-input product_check">8.5MP
                                </label>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="9MP" id="gadget-fcam" type="checkbox" class="form-check-input product_check">9MP
                                </label>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="9.5MP" id="gadget-fcam" type="checkbox" class="form-check-input product_check">9.5MP
                                </label>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="10MP" id="gadget-fcam" type="checkbox" class="form-check-input product_check">10MP
                                </label>
                            </div>
                        </li>
                          <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="10.5MP" id="gadget-fcam" type="checkbox" class="form-check-input product_check">10.5MP
                                </label>
                            </div>
                        </li>
                         <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="11MP" id="gadget-fcam" type="checkbox" class="form-check-input product_check">11MP
                                </label>
                            </div>
                        </li>
                         <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="11.5MP" id="gadget-fcam" type="checkbox" class="form-check-input product_check">11.5MP
                                </label>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="12MP" id="gadget-fcam" type="checkbox" class="form-check-input product_check">12MP
                                </label>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="12.5MP" id="gadget-fcam" type="checkbox" class="form-check-input product_check">12.5MP
                                </label>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="15MP" id="gadget-fcam" type="checkbox" class="form-check-input product_check">15MP
                                </label>
                            </div>
                        </li>
                          <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="15.5MP" id="gadget-fcam" type="checkbox" class="form-check-input product_check">15.5MP
                                </label>
                            </div>
                        </li>
                         <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="30MP" id="gadget-fcam" type="checkbox" class="form-check-input product_check">30MP
                                </label>
                            </div>
                        </li>
                    </ul>
                       <h6 class="text-info"> Select MainCam</h6>
                    <ul class="list-group">
                        <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="3.9MP" id="gadget-mcam" type="checkbox" class="form-check-input product_check">3.9MP
                                </label>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="4MP" id="gadget-mcam" type="checkbox" class="form-check-input product_check">4MP
                                </label>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="4.5MP" id="gadget-mcam" type="checkbox" class="form-check-input product_check">4.5MP
                                </label>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="5MP" id="gadget-mcam" type="checkbox" class="form-check-input product_check">5MP
                                </label>
                            </div>
                        </li>
                          <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="5.5MP" id="gadget-mcam" type="checkbox" class="form-check-input product_check">5.5MP
                                </label>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="6MP" id="gadget-mcam" type="checkbox" class="form-check-input product_check">6MP
                                </label>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="6.5MP" id="gadget-mcam" type="checkbox" class="form-check-input product_check">6.5MP
                                </label>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="7MP" id="gadget-mcam" type="checkbox" class="form-check-input product_check">7MP
                                </label>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="7.5MP" id="gadget-mcam" type="checkbox" class="form-check-input product_check">7.5MP
                                </label>
                            </div>
                        </li>
                          <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="8MP" id="gadget-mcam" type="checkbox" class="form-check-input product_check">8MP
                                </label>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="8.5MP" id="gadget-mcam" type="checkbox" class="form-check-input product_check">8.5MP
                                </label>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="9MP" id="gadget-mcam" type="checkbox" class="form-check-input product_check">9MP
                                </label>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="9.5MP" id="gadget-mcam" type="checkbox" class="form-check-input product_check">9.5MP
                                </label>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="10MP" id="gadget-mcam" type="checkbox" class="form-check-input product_check">10MP
                                </label>
                            </div>
                        </li>
                          <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="10.5MP" id="gadget-mcam" type="checkbox" class="form-check-input product_check">10.5MP
                                </label>
                            </div>
                        </li>
                         <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="11MP" id="gadget-mcam" type="checkbox" class="form-check-input product_check">11MP
                                </label>
                            </div>
                        </li>
                         <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="11.5MP" id="gadget-mcam" type="checkbox" class="form-check-input product_check">11.5MP
                                </label>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="12MP" id="gadget-mcam" type="checkbox" class="form-check-input product_check">12MP
                                </label>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="12.5MP" id="gadget-mcam" type="checkbox" class="form-check-input product_check">12.5MP
                                </label>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="15MP" id="gadget-mcam" type="checkbox" class="form-check-input product_check">15MP
                                </label>
                            </div>
                        </li>
                          <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="15.5MP" id="gadget-mcam" type="checkbox" class="form-check-input product_check">15.5MP
                                </label>
                            </div>
                        </li>
                         <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="30MP" id="gadget-mcam" type="checkbox" class="form-check-input product_check">30MP
                                </label>
                            </div>
                        </li>
                         <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="1280*720PX" id="gadget-mcam" type="checkbox" class="form-check-input product_check">1280*720PX
                                </label>
                            </div>
                        </li>
                          <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="1920*1080PX" id="gadget-mcam" type="checkbox" class="form-check-input product_check">1920*1080PX
                                </label>
                            </div>
                        </li>
                         <li class="list-group-item">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input value="3840*21600PX" id="gadget-mcam" type="checkbox" class="form-check-input product_check">3840*21600PX
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
                            String selProduct = "SELECT * from tbl_gadget where sh_id='" + request.getParameter("id")+"'";
                            ResultSet rs = con.selectCommand(selProduct);
                            while (rs.next()) {
                        %>
                        <div class="col-md-3 mb-2" >
                            <div class="card-deck">
                                <div class="card border-secondary">
                                    <img src="../Assets/Files/GadgetImage/<%=rs.getString("gd_img")%>" class="card-img-top" height="250">
                                    <div class="card-img-secondary">
                                        <h6  class="text-light bg-info text-center rounded p-1"><%=rs.getString("gd_ctgry")%></h6>
                                    </div>
                                    <div class="card-body">
                                        <h4 class="card-title text-danger">
                                            Price : <%=rs.getString("gd_pr")%>/-
                                        </h4>
                                        <p>
                                            <%
                                            if(!rs.getString("gd_ram").equals(""))
                                            {
                                                %>
                                                 RAM : <%=rs.getString("gd_ram")%><br>
                                                <%
                                            }
                                            else
                                            {
                                                out.println("<br>");
                                            }
                                            %>
                                            <%
                                            if(!rs.getString("gd_mmem").equals(""))
                                            {
                                                %>
                                                 Main Memory : <%=rs.getString("gd_mmem")%><br>
                                                <%
                                            }
                                            else
                                            {
                                                out.println("<br>");
                                            }
                                            %>
                                            <%
                                            if(!rs.getString("gd_mcam").equals(""))
                                            {
                                                %>
                                                 Main Camera : <%=rs.getString("gd_mcam")%><br>
                                                <%
                                            }
                                            else
                                            {
                                                out.println("<br>");
                                            }
                                            %>
                                            <%
                                            if(!rs.getString("gd_fcam").equals(""))
                                            {
                                                %>
                                                 Front Camera : <%=rs.getString("gd_fcam")%><br>
                                                <%
                                            }
                                            else
                                            {
                                                out.println("<br>");
                                            }
                                            %> 
                                        </p>
                                        <%
                                            String stockSql = "select sum(gadgetstock_quantity) as stock from tbl_gadgetstock where gd_id = '" + rs.getString("gd_id") + "'";
                                            ResultSet rsST = con.selectCommand(stockSql);
                                            rsST.next();
                                            if (rsST.getString("stock") != null) {
                                                int stock = Integer.parseInt(rsST.getString("stock"));
                                                if (stock > 0) {
                                        %>
                                        <a href="javascript:void(0)" onclick="addCart('<%=rs.getString("gd_id")%>')" class="btn btn-success btn-block">Add to Cart</a>
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
                                        <a href="ViewGadgetMore.jsp?gadgetid=<%=rs.getString("gd_id")%>" class="btn btn-warning btn-block" onclick="window.location.href = 'ViewGadgetMore.jsp'">View More</a>
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
                    url: "../Assets/AjaxPages/AjaxGadgetAddCart.jsp?id=" + id,
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
            $(document).ready(function(){
                
                $(".product_check").click(function (){
                    $("#loder").show();
                    
                    var action = 'data';
                    var brand = get_filter_text('brand');
                    var category = get_filter_text('category');
                    var storage = get_filter_text('storage');
                    var capacity = get_filter_text('capacity');
                    var frontcam = get_filter_text('frontcam');
                    var maincam = get_filter_text('maincam');
                    
                    
                    $.ajax({
                       url: "../Assets/AjaxPages/AjaxSearchGadget.jsp?action="+action+"&brand="+brand+"&category="+category+"&storage="+storage+"&capacity="+capacity+"&frontcam="+frontcam+"&maincam="+maincam,
                       success: function (response) {
                           $("#result").html(response);
                           $("#loder").hide();
                           $("#textChange").text("Filtered Products");
                    }
                    });
                    
                    
                });
                
                
                
               function get_filter_text(text_id)
               {
                   var filterData = [];
                   
                   $('#'+text_id+':checked').each(function (){
                       filterData.push($(this).val());
                   });
                   return filterData;
               }
            });
        </script>
        
    </body>
</html>
