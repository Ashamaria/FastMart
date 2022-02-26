<%@page import="java.sql.ResultSet"%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%

    if (request.getParameter("action") != "") {

        String sqlQry = "SELECT * FROM tbl_dress d INNER JOIN tbl_dressbrand db ON d.drsbrnd_id = db.drsbrnd_id where true ";
        String row = "SELECT count(*) as count FROM tbl_dress d INNER JOIN tbl_dressbrand db ON d.drsbrnd_id = db.drsbrnd_id where true ";

        if (!request.getParameter("brand").equals("")) {

            String brand = request.getParameter("brand");

            sqlQry += "AND d.drsbrnd_id IN('" + brand + "')";
            row += "AND d.drsbrnd_id IN('" + brand + "')";
        }
        if (!request.getParameter("category").equals("")) {

            String category = request.getParameter("category");

            sqlQry += "AND drs_ctgry IN('" + category + "')";
            row += "AND drs_ctgry IN('" + category + "')";
        }
        if (!request.getParameter("material").equals("")) {

            String material = request.getParameter("material");

            sqlQry += "AND drs_mtrl IN('" + material + "')";
            row += "AND drs_mtrl IN('" + material + "')";
        }
        if (!request.getParameter("gender").equals("")) {

            String gender = request.getParameter("gender");

            sqlQry += "AND drs_gndr IN('" + gender + "')";
            row += "AND drs_gndr IN('" + gender + "')";
        }
        if (!request.getParameter("size").equals("")) {

            String size = request.getParameter("size");

            sqlQry += "AND drs_size IN('" + size + "')";
            row += "AND drs_size IN('" + size + "')";
        }
        if (!request.getParameter("color").equals("")) {

            String color = request.getParameter("color");

            sqlQry += "AND drs_colr IN('" + color + "')";
            row += "AND drs_colr IN('" + color + "')";
        }
        ResultSet rs = con.selectCommand(sqlQry);
        ResultSet rsr = con.selectCommand(row);
        rsr.next();

        if (Integer.parseInt(rsr.getString("count")) > 0) {
            while (rs.next()) {
%>

<div class="col-md-3 mb-2">
                            <div class="card-deck">
                                <div class="card border-secondary">
                                    <img src="../Assets/Files/DressImage/<%=rs.getString("drs_img")%>" class="card-img-top" height="250">
                                    <div class="card-img-secondary">
                                        <h6  class="text-light bg-info text-center rounded p-1"><%=rs.getString("drs_ctgry")%></h6>
                                    </div>
                                    <div class="card-body">
                                        <h4 class="card-title text-danger">
                                            Price : <%=rs.getString("drs_pr")%>/-
                                        </h4>
                                        <p>
                                            Brand  &nbsp;&nbsp;&nbsp;&nbsp;   : <%=rs.getString("drsbrnd_nme")%><br>
                                            Category  : <%=rs.getString("drs_ctgry")%><br>
                                            Material &nbsp; : <%=rs.getString("drs_mtrl")%><br>
                                            Gender&nbsp;&nbsp;&nbsp;    : <%=rs.getString("drs_gndr")%><br>
                                            Size    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  : <%=rs.getString("drs_size")%><br>
                                            Color &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;     : <%=rs.getString("drs_colr")%><br>
                                        </p>
                                        <%
                                            String stockSql = "select sum(dressstock_quantity) as stock from tbl_dressstock where drs_id = '" + rs.getString("drs_id") + "'";
                                            ResultSet rsST = con.selectCommand(stockSql);
                                            rsST.next();
                                            if (rsST.getString("stock") != null) {
                                                int stock = Integer.parseInt(rsST.getString("stock"));
                                                if (stock > 0) {
                                        %>
                                        <a href="javascript:void(0)" onclick="addCart('<%=rs.getString("drs_id")%>')" class="btn btn-success btn-block">Add to Cart</a>
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
                                        <a href="ViewDressMore.jsp?id=<%=rs.getString("drs_id")%>" class="btn btn-warning btn-block">View More</a>
                                    </div>
                                </div>
                            </div>
                        </div>

<%
            }
        } else {
            out.println("<h4>Products Not Found!!!!</h4>");
        }
    }

%>