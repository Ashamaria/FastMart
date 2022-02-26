<%-- 
    Document   : AjaxSearchShopGrocery
    Created on : 19 Nov, 2021, 2:21:13 PM
    Author     : ajula
--%>

<%@page import="java.sql.ResultSet"%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%

    if (request.getParameter("action") != "") {

        String sqlQry = "select * from tbl_grocery g inner join tbl_grocerysubcategory gsc on gsc.grcrysubctgry_id=g.grcry_subctgry_id inner join tbl_grocerycategory gc on gc.grcryctgry_id=gsc.grcryctgry_id where sh_id='" + request.getParameter("id") + "'";
        String row = "SELECT count(*) as count from tbl_grocery g inner join tbl_grocerysubcategory gsc on gsc.grcrysubctgry_id=g.grcry_subctgry_id inner join tbl_grocerycategory gc on gc.grcryctgry_id=gsc.grcryctgry_id where sh_id='" + request.getParameter("id") + "'";
        if (!request.getParameter("category").equals("")) {

            String category = request.getParameter("category");

            sqlQry += "AND grcryctgry_nme IN('" + category + "')";
            row += "AND grcryctgry_nme IN('" + category + "')";
        }
        if (!request.getParameter("subcategory").equals("")) {

            String subcategory = request.getParameter("subcategory");

            sqlQry += "AND grcrysubctgry_nme IN('" + subcategory + "')";
            row += "AND grcrysubctgry_nme IN('" + subcategory + "')";
        }
        if (!request.getParameter("unit").equals("")) {

            String unit = request.getParameter("unit");

            sqlQry += "AND grcry_unit IN('" + unit + "')";
             row += "AND grcry_unit IN('" + unit + "')";
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
            <img src="../Assets/Files/GroceryImage/<%=rs.getString("grcry_img")%>" class="card-img-top">
            <div class="card-img-secondary">
                <h6 class="text-light bg-info text-center rounded p-1"><%=rs.getString("grcry_ctgry")%></h6>
            </div>
            <div class="card-body">
                <h4 class="card-title text-danger">
                    Price : <%=rs.getString("grcry_pr")%>/-
                </h4>
                <p>
                   
                                            <%
                                            if(!rs.getString("grcryctgry_nme").equals(""))
                                            {
                                                %>
                                                 Category : <%=rs.getString("grcryctgry_nme")%><br>
                                                <%
                                            }
                                            %>
                                            <%
                                            if(!rs.getString("grcrysubctgry_nme").equals(""))
                                            {
                                                %>
                                                Sub Category : <%=rs.getString("grcrysubctgry_nme")%><br>
                                                <%
                                            }
                                            %>
                                            <%
                                            if(!rs.getString("grcry_unit").equals(""))
                                            {
                                                %>
                                                 Unit : <%=rs.getString("grcry_unit")%><br>
                                                <%
                                            }
                                            %>
                                            
                </p>
                <a href="#" class="btn btn-success btn-block">Add to Cart</a>
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

