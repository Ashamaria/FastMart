<%@page import="java.sql.ResultSet"%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%

    if (request.getParameter("action") != "") {

        String sqlQry = "SELECT * FROM tbl_utensil u INNER JOIN tbl_utensilbrand ub ON u.utslbrnd_id = ub.utslbrnd_id where true ";
        String row = "SELECT count(*) as count FROM tbl_utensil u INNER JOIN tbl_utensilbrand ub ON u.utslbrnd_id = ub.utslbrnd_id where true ";

        if (!request.getParameter("brand").equals("")) {

            String brand = request.getParameter("brand");

            sqlQry += "AND u.utslbrnd_id IN('" + brand + "')";
            row += "AND u.utslbrnd_id IN('" + brand + "')";
        }
        if (!request.getParameter("category").equals("")) {

            String category = request.getParameter("category");

            sqlQry += "AND utsl_ctgry IN('" + category + "')";
            row += "AND utsl_ctgry IN('" + category + "')";
        }
        if (!request.getParameter("material").equals("")) {

            String material = request.getParameter("material");

            sqlQry += "AND utsl_mtrl IN('" + material + "')";
            row += "AND utsl_mtrl IN('" + material + "')";
        }

        if (!request.getParameter("size").equals("")) {

            String size = request.getParameter("size");

            sqlQry += "AND utsl_size IN('" + size + "')";
            row += "AND utsl_size IN('" + size + "')";
        }

        ResultSet rs = con.selectCommand(sqlQry);
        ResultSet rsr = con.selectCommand(row);
        rsr.next();
        System.out.println(sqlQry);

        if (Integer.parseInt(rsr.getString("count")) > 0) {
            while (rs.next()) {
%>

<div class="col-md-3 mb-2">
    <div class="card-deck">
        <div class="card border-secondary">
            <img src="../Assets/Files/UtensilImage/<%=rs.getString("utsl_img")%>" class="card-img-top" height="250">
            <div class="card-img-secondary">
                <h6 class="text-light bg-info text-center rounded p-1"><%=rs.getString("utsl_ctgry")%></h6>
            </div>
            <div class="card-body">
                <h4 class="card-title text-danger">
                    Price : <%=rs.getString("utsl_pr")%>/-
                </h4>
                <p>

                    Brand  &nbsp;&nbsp;&nbsp;&nbsp;   : <%=rs.getString("utsl_nme")%><br>
                    Category  : <%=rs.getString("utsl_ctgry")%><br>
                    Material &nbsp; : <%=rs.getString("utsl_mtrl")%><br>
                    <%
                        if (!rs.getString("utsl_size").equals("")) {
                    %>
                    Size    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  : <%=rs.getString("utsl_size")%><br>

                    <%
                        } else {
                            out.println("<br>");
                        }
                    %>
                </p>
                <%
                    String stockSql = "select sum(utensilstock_quantity) as stock from tbl_utensilstock where utsl_id = '" + rs.getString("utsl_id") + "'";
                    ResultSet rsST = con.selectCommand(stockSql);
                    rsST.next();
                    if (rsST.getString("stock") != null) {
                        int stock = Integer.parseInt(rsST.getString("stock"));
                        if (stock > 0) {
                %>
                <a href="javascript:void(0)" onclick="addCart('<%=rs.getString("utsl_id")%>')" class="btn btn-success btn-block">Add to Cart</a>
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
                <a href="ViewUtensilMore.jsp?utensilid=<%=rs.getString("utsl_id")%>" class="btn btn-warning btn-block" onclick="window.location.href = 'ViewUtensilMore.jsp'">View More</a>
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