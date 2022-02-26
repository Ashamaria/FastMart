<%@page import="java.sql.ResultSet"%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%

    if (request.getParameter("action") != "") {

        String sqlQry = "SELECT * FROM tbl_gadget d INNER JOIN tbl_gadgetbrand db ON d.gdbrnd_id = db.gdbrnd_id where sh_id='"+request.getParameter("id")+"' ";
        String row = "SELECT count(*) as count FROM tbl_gadget d INNER JOIN tbl_gadgetbrand db ON d.gdbrnd_id = db.gdbrnd_id where sh_id='"+request.getParameter("id")+"' ";
        System.out.println(sqlQry);
        if (!request.getParameter("brand").equals("")) {

            String brand = request.getParameter("brand");

            sqlQry += "AND d.gdbrnd_id IN('" + brand + "')";
            row += "AND d.gdbrnd_id IN('" + brand + "')";
        }
        if (!request.getParameter("category").equals("")) {

            String category = request.getParameter("category");

            sqlQry += "AND gd_ctgry IN('" + category + "')";
            row += "AND gd_ctgry IN('" + category + "')";
        }
        if (!request.getParameter("storage").equals("")) {

            String storage = request.getParameter("storage");

            sqlQry += "AND gd_mmem IN('" + storage + "')";
            row += "AND gd_mmem IN('" + storage + "')";
        }
        if (!request.getParameter("capacity").equals("")) {

            String capacity = request.getParameter("capacity");

            sqlQry += "AND gd_ssd IN('" + capacity + "')";
             row += "AND gd_ssd IN('" + capacity + "')";
        }
        if (!request.getParameter("frontcam").equals("")) {

            String frontcam = request.getParameter("frontcam");

            sqlQry += "AND gd_fcam IN('" + frontcam + "')";
            row += "AND gd_fcam IN('" + frontcam + "')";
        }
        if (!request.getParameter("maincam").equals("")) {

            String maincam = request.getParameter("maincam");

            sqlQry += "AND gd_mcam IN('" + maincam + "')";
            row += "AND gd_mcam IN('" + maincam + "')";
        }
        ResultSet rs = con.selectCommand(sqlQry);
        ResultSet rsr = con.selectCommand(row);
          rsr.next();
        
        if(Integer.parseInt(rsr.getString("count"))>0)
        {
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
        }
        else
        {
            out.println("<h4>Products Not Found!!!!</h4>");
        }
    }

%>