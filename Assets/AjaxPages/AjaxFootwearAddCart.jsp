<%-- 
    Document   : AjaxFootwearAddCart
    Created on : 19 Nov, 2021, 9:04:58 PM
    Author     : ajula
--%>

<%@page import="java.sql.ResultSet" %>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%
    String id = request.getParameter("id");
    String selQry = "select count(*) as count from tbl_booking where cust_id='" + session.getAttribute("cid") + "' and booking_status='0'";
    ResultSet rsC = con.selectCommand(selQry);
    System.out.println(selQry);
    rsC.next();
    if (Integer.parseInt(rsC.getString("count")) > 0) {
        String sel = "select booking_id as id from tbl_booking where cust_id='" + session.getAttribute("cid") + "' and booking_status='0'";
       System.out.println(sel);
        ResultSet rs = con.selectCommand(sel);
        if (rs.next()) {
            String sqlQry = "select count(*) as count from tbl_cart where booking_id='" + rs.getString("id") + "' and ftwr_id='" + id + "'";
                System.out.println(sqlQry);
            ResultSet rsc = con.selectCommand(sqlQry);
            rsc.next();
            if (Integer.parseInt(rsc.getString("count")) > 0) {
                out.println("Already Added to Cart");
            } else {
                String insQry = "insert into tbl_cart(booking_id,ftwr_id)values('" + rs.getString("id") + "','" + id + "')";
                    System.out.println(insQry);
                if (con.executeCommand(insQry)) {
                    out.println("Added to Cart");
                } else {
                    out.println("Failed to Add Cart");
                }
            }
        }
    } else {
        String ins = "insert into tbl_booking(cust_id)values('" + session.getAttribute("cid") + "')";
        System.out.println(ins);
        if (con.executeCommand(ins)) {
            String sel = "select Max(booking_id) as id from tbl_booking";
            System.out.println(sel);
            ResultSet rs = con.selectCommand(sel);
            if (rs.next()) {
                String insQry = "insert into tbl_cart(booking_id,ftwr_id)values('" + rs.getString("id") + "','" + id + "')";
                System.out.println(insQry);
                if (con.executeCommand(insQry)) {
                    out.println("Added to Cart");
                } else {
                    out.println("Failed to Add Cart");
                }
            }
        }
    }


%>