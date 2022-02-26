<%-- 
    Document   : AjaxSearchShopFootwear
    Created on : 19 Nov, 2021, 1:13:52 PM
    Author     : ajula
--%>

<%@page import="java.sql.ResultSet"%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%

    if (request.getParameter("action") != "") {

        String sqlQry = "SELECT * FROM tbl_footwear d INNER JOIN tbl_footwearbrand db ON d.ftwrbrnd_id = db.ftwrbrnd_id where sh_id='"+request.getParameter("id")+"' ";
        String row = "SELECT count(*) as count FROM tbl_footwear d INNER JOIN tbl_footwearbrand db ON d.ftwrbrnd_id = db.ftwrbrnd_id where sh_id='"+request.getParameter("id")+"' ";
        System.out.println(sqlQry);
        if (!request.getParameter("brand").equals("")) {

            String brand = request.getParameter("brand");

            sqlQry += "AND d.ftwrbrnd_id IN('" + brand + "')";
            row += "AND d.ftwrbrnd_id IN('" + brand + "')";
        }
        if (!request.getParameter("category").equals("")) {

            String category = request.getParameter("category");

            sqlQry += "AND ftwr_ctgry IN('" + category + "')";
            row += "AND ftwr_ctgry IN('" + category + "')";
        }
        if (!request.getParameter("material").equals("")) {

            String material = request.getParameter("material");

            sqlQry += "AND ftwr_mtrl IN('" + material + "')";
            row += "AND ftwr_mtrl IN('" + material + "')";
        }
        if (!request.getParameter("size").equals("")) {

            String size = request.getParameter("size");

            sqlQry += "AND ftwr_size IN('" + size + "')";
             row += "AND ftwr_size IN('" + size + "')";
        }
        if (!request.getParameter("color").equals("")) {

            String color = request.getParameter("color");

            sqlQry += "AND ftwr_colr IN('" + color + "')";
            row += "AND ftwr_colr IN('" + color + "')";
        }
        ResultSet rs = con.selectCommand(sqlQry);
        ResultSet rsr = con.selectCommand(row);
          rsr.next();
        
        if(Integer.parseInt(rsr.getString("count"))>0)
        {
            while (rs.next()) {
%>

<div class="col-md-3 mb-2">
    <div class="card-deck">
        <div class="card border-secondary">
            <img src="../Assets/Files/FootwearImage/<%=rs.getString("ftwr_img")%>" class="card-img-top" height="250">
            <div class="card-img-secondary">
                <h6 class="text-light bg-info text-center rounded p-1"><%=rs.getString("ftwr_ctgry")%></h6>
            </div>
            <div class="card-body">
                <h4 class="card-title text-danger">
                    Price : <%=rs.getString("ftwr_pr")%>/-
                </h4>
                <p>
                    Brand  &nbsp;&nbsp;&nbsp;&nbsp;   : <%=rs.getString("ftwrbrnd_nme")%><br>
                    Category  : <%=rs.getString("ftwr_ctgry")%><br>
                    Gender&nbsp;&nbsp;&nbsp;    : <%=rs.getString("ftwr_gndr")%><br>
                    Material &nbsp; : <%=rs.getString("ftwr_mtrl")%><br>
                    Isformal &nbsp;&nbsp;&nbsp;    : <%=rs.getString("ftwr_isfrml")%><br>
                    Size    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  : <%=rs.getString("ftwr_size")%><br>
                    Color &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;     : <%=rs.getString("ftwr_colr")%><br>
                </p>
                <%
                    String stockSql = "select sum(footwearstock_quantity) as stock from tbl_footwearstock where ftwr_id = '" + rs.getString("ftwr_id") + "'";
                    ResultSet rsST = con.selectCommand(stockSql);
                    rsST.next();
                    if (rsST.getString("stock") != null) {
                        int stock = Integer.parseInt(rsST.getString("stock"));
                        if (stock > 0) {
                %>
                <a href="javascript:void(0)" onclick="addCart('<%=rs.getString("ftwr_id")%>')" class="btn btn-success btn-block">Add to Cart</a>
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
                <a href="ViewFootwearMore.jsp?footwearid=<%=rs.getString("ftwr_id")%>" class="btn btn-warning btn-block" onclick="window.location.href = 'ViewFootwearMore.jsp'">View More</a>
            </div>
        </div>
    </div>
</div>
<%
    }
        }
        else
        {
            out.println("<h4>Products Not Found!!!!</h4>");
        }
    }

%>
