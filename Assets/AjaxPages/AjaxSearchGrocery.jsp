<%@page import="java.sql.ResultSet"%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%

    if (request.getParameter("action") != "") {

        String sqlQry = "SELECT * FROM tbl_grocery g inner join tbl_grocerysubcategory gsc on gsc.grcrysubctgry_id=g.grcry_subctgry_id inner join tbl_grocerycategory gc on gc.grcryctgry_id=gsc.grcryctgry_id ";
        String row = "SELECT count(*) as count FROM tbl_grocery g inner join tbl_grocerysubcategory gsc on gsc.grcrysubctgry_id=g.grcry_subctgry_id inner join tbl_grocerycategory gc on gc.grcryctgry_id=gsc.grcryctgry_id where true ";

        if (!request.getParameter("cat").equals("")) {

            String cat = request.getParameter("cat");

            sqlQry += "AND gsc.grcryctgry_id IN(" + cat + ")";
            row += "AND gsc.grcryctgry_id IN(" + cat + ")";
        }
        if (!request.getParameter("sub").equals("")) {

            String sub = request.getParameter("sub");

            sqlQry += "AND g.grcrysubctgry_id IN(" + sub + ")";
            row += "AND g.grcrysubctgry_id IN(" + sub + ")";
        }
        if (!request.getParameter("unit").equals("")) {

            String unit = request.getParameter("unit");

            sqlQry += "AND g.grcry_unit IN(" + unit + ")";
            row += "AND g.grcry_unit IN(" + unit + ")";
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
            <img src="../Assets/Files/GroceryImage/<%=rs.getString("grcry_img")%>" height="220" class="card-img-top">
            <div class="card-img-secondary">
                <h6  class="text-light bg-info text-center rounded p-1"><%=rs.getString("grcrysubctgry_nme")%></h6>
            </div>
            <div class="card-body">
                <h4 class="card-title text-danger">
                    Price : <%=rs.getString("grcry_rate")%>/-
                </h4>
                <p>
                    Category  : <%=rs.getString("grcryctgry_nme")%><br>
                    Unit  : <%=rs.getString("grcry_unit")%><br>
                </p>
                <%
                    String stockSql = "select sum(grocerystock_quantity) as stock from tbl_grocerystock where grcry_id = '" + rs.getString("grcry_id") + "'";
                    ResultSet rsST = con.selectCommand(stockSql);
                    rsST.next();
                    if (rsST.getString("stock") != null) {
                        int stock = Integer.parseInt(rsST.getString("stock"));
                        if (stock > 0) {
                %>
                <a href="javascript:void(0)" onclick="addCart('<%=rs.getString("grcry_id")%>')" class="btn btn-success btn-block">Add to Cart</a>
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
                <a href="ViewGroceryMore.jsp?groceryid=<%=rs.getString("grcry_id")%>" class="btn btn-warning btn-block" onclick="window.location.href = 'ViewGroceryMore.jsp'">View More</a>
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