<%-- 
    Document   : AjaxSearchShopDress
    Created on : 19 Nov, 2021, 12:58:14 PM
    Author     : ajula
--%>

<%@page import="java.sql.ResultSet"%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%

    if (request.getParameter("action") != "") {

        String sqlQry = "SELECT * FROM tbl_dress d INNER JOIN tbl_dressbrand db ON d.drsbrnd_id = db.drsbrnd_id where sh_id='"+request.getParameter("id")+"' ";
        String row = "SELECT count(*) as count FROM tbl_dress d INNER JOIN tbl_dressbrand db ON d.drsbrnd_id = db.drsbrnd_id where sh_id='"+request.getParameter("id")+"' ";
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
        System.out.println(sqlQry);
        if(Integer.parseInt(rsr.getString("count"))>0)
        {
            while (rs.next()) {
%>

<div class="col-md-3 mb-2">
    <div class="card-deck">
        <div class="card border-secondary" style="height: 520px">
            <img src="../Assets/Files/DressImage/<%=rs.getString("drs_img")%>" class="card-img-top">
            <div class="card-img-secondary">
                <h6 class="text-light bg-info text-center rounded p-1"><%=rs.getString("drs_ctgry")%></h6>
            </div>
            <div class="card-body">
                <h4 class="card-title text-danger">
                    Price : <%=rs.getString("drs_pr")%>/-
                </h4>
                <p>
                     <%
                                            if(!rs.getString("drsbrnd_nme").equals(""))
                                            {
                                                %>
                                                 Brand : <%=rs.getString("drsbrnd_nme")%><br>
                                                <%
                                            }
                                            %>
                                            <%
                                            if(!rs.getString("drs_ctgry").equals(""))
                                            {
                                                %>
                                                 Category : <%=rs.getString("drs_ctgry")%><br>
                                                <%
                                            }
                                            %>
                                            <%
                                            if(!rs.getString("drs_mtrl").equals(""))
                                            {
                                                %>
                                                 Material : <%=rs.getString("drs_mtrl")%><br>
                                                <%
                                            }
                                            %>
                                            <%
                                            if(!rs.getString("drs_size").equals(""))
                                            {
                                                %>
                                                 Size : <%=rs.getString("drs_size")%><br>
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
