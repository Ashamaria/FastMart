<%-- 
    Document   : ViewBookings
    Created on : 21 Dec, 2021, 12:50:02 PM
    Author     : hp
--%>
<%@page import="java.sql.ResultSet" %>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Bookings</title>
    </head>
    <%
        if (request.getParameter("id") != null) {
            String up = "update tbl_cart set cart_status='2' where cart_id='" + request.getParameter("id") + "'";
            System.out.println(up);
            if (con.executeCommand(up)) {
                response.sendRedirect("ViewBookings.jsp");
            }
        }


    %>
    <body>
        <table align='center' border="1" width="50%" >
            <tr>
                <th>SL.No</th>
                <th>Category</th>
                <th>Price</th>
                <th>Status</th>
            </tr>
            <%                int i = 0;
                String selQry = "select * from tbl_booking b inner join tbl_cart c on c.booking_id=b.booking_id where b.cust_id='" + session.getAttribute("cid") + "'";
                ResultSet rs = con.selectCommand(selQry);
                while (rs.next()) {
                    i++;
                    String selDress = "select * from tbl_dress where drs_id='" + rs.getString("drs_id") + "'";
                    ResultSet rsDress = con.selectCommand(selDress);
                    String selFootwear = "select * from tbl_footwear where ftwr_id='" + rs.getString("ftwr_id") + "'";
                    ResultSet rsFootwear = con.selectCommand(selFootwear);
                    String selGrocery = "select * from tbl_grocery g inner join tbl_grocerysubcategory gs inner join tbl_grocerycategory gc on g.grcry_subctgry_id=gs.grcrysubctgry_id and gs.grcryctgry_id=gc.grcryctgry_id where grcry_id='" + rs.getString("grcry_id") + "'";
                    ResultSet rsGrocery = con.selectCommand(selGrocery);
                    String selUtensil = "select * from tbl_utensil where utsl_id='" + rs.getString("utsl_id") + "'";
                    ResultSet rsUtensil = con.selectCommand(selUtensil);
                    String selGadget = "select * from tbl_gadget where gd_id='" + rs.getString("gd_id") + "'";
                    ResultSet rsGadget = con.selectCommand(selGadget);
                    if (rsDress.next()) {
            %>
            <tr>
                <td><%=i%></td>
                <td><%=rsDress.getString("drs_ctgry")%></td>
                <td><%=rsDress.getString("drs_pr")%></td>
                <td><%
                    if (rs.getString("booking_status").equals("1")) {
                        out.println("On Progress..");
                    } else if (rs.getString("booking_status").equals("2")) {
                        out.println("Order Picked...");
                    } else if (rs.getString("booking_status").equals("3")) {

                        if (rs.getString("cart_status").equals("2")) {
                    %>
                    Pickup Pending
                    <%
                    } else if (rs.getString("cart_status").equals("3")) {
                    %>
                    Completed
                    <%
                    } else {
                    %>

                    Order Delivered <a href="ViewBookings.jsp?id=<%=rs.getString("cart_id")%>">Return</a>

                    <%
                            }
                        }

                    %></td>
            </tr>         
            <%                }
                if (rsFootwear.next()) {
            %>
            <tr>
                <td><%=i%></td>
                <td><%=rsFootwear.getString("ftwr_ctgry")%></td>
                <td><%=rsFootwear.getString("ftwr_pr")%></td>
                <td><%
                    if (rs.getString("booking_status").equals("1")) {
                        out.println("On Progress..");
                    } else if (rs.getString("booking_status").equals("2")) {
                        out.println("Order Picked...");
                    } else if (rs.getString("booking_status").equals("3")) {
                    %>
                    Order Delivered <a href="ViewBookings.jsp?id=<%=rs.getString("cart_id")%>">Return</a>
                    <%
                        }

                    %></td>
            </tr>         
            <%                }
                if (rsGrocery.next()) {
            %>
            <tr>
                <td><%=i%></td>
                <td><%=rsGrocery.getString("grcryctgry_nme")%></td>
                <td><%=rsGrocery.getString("grcry_rate")%></td>
                <td><%
                    if (rs.getString("booking_status").equals("1")) {
                        out.println("On Progress..");
                    } else if (rs.getString("booking_status").equals("2")) {
                        out.println("Order Picked...");
                    } else if (rs.getString("booking_status").equals("3")) {
                    %>
                    Order Delivered <a href="ViewBookings.jsp?id=<%=rs.getString("cart_id")%>">Return</a>
                    <%
                        }

                    %></td>
            </tr>         
            <%                }
                if (rsUtensil.next()) {
            %>
            <tr>
                <td><%=i%></td>
                <td><%=rsUtensil.getString("utsl_ctgry")%></td>
                <td><%=rsUtensil.getString("utsl_pr")%></td>
                <td><%
                    if (rs.getString("booking_status").equals("1")) {
                        out.println("On Progress..");
                    } else if (rs.getString("booking_status").equals("2")) {
                        out.println("Order Picked...");
                    } else if (rs.getString("booking_status").equals("3")) {
                    %>
                    Order Delivered <a href="ViewBookings.jsp?id=<%=rs.getString("cart_id")%>">Return</a>
                    <%
                        }

                    %></td>
            </tr>         
            <%                }
                if (rsGadget.next()) {
            %>
            <tr>
                <td><%=i%></td>
                <td><%=rsGadget.getString("gd_ctgry")%></td>
                <td><%=rsGadget.getString("gd_pr")%></td>
                <td><%
                    if (rs.getString("booking_status").equals("1")) {
                        out.println("On Progress..");
                    } else if (rs.getString("booking_status").equals("2")) {
                        out.println("Order Picked...");
                    } else if (rs.getString("booking_status").equals("3")) {
                    %>
                    Order Delivered <a href="ViewBookings.jsp?id=<%=rs.getString("cart_id")%>">Return</a>
                    <%
                        }

                    %></td>
            </tr>         
            <%                    }
                }

            %> 
        </table>

    </body>
</html>
