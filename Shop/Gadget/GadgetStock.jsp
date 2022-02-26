<%--
    Document   : GadgetStock
    Created on : 12 Nov, 2021, 11:52:15 AM
    Author     : asha
--%>

<%@page import="java.sql.ResultSet" %>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Gadget Stock</title>
    </head>
    <body>
        <%

            if (request.getParameter("btn_stock") != null) {

                String date = request.getParameter("stockdate");
                String id = request.getParameter("hid");
                String quantity = request.getParameter("quantity");

                String ins = "insert into tbl_gadgetstock(gadgetstock_date,gadgetstock_quantity,gd_id)values('" + date + "','" + quantity + "','" + id + "')";
                if (con.executeCommand(ins)) {
                    response.sendRedirect("GadgetStock.jsp?id=" + id);

                } else {
                    out.println("<script>alert('Failed')</script>");
                    System.out.println(ins);
                }

            }

        %>
        <form method="post">
            <table border="1" cellpadding="10" style="border-collapse: collapse;" align="center">
                <tr>
                    <td>Date</td>
                    <td><input type="date" name="stockdate" id="stockdate" required="">
                        <input type="hidden" name="hid" id="hid"  value="<%=request.getParameter("id")%>">
                    </td>
                </tr>
                <tr>
                    <td>Quantity</td>
                    <td><input type="number" name="quantity" id="quantity" required=""></td>
                </tr>
                <tr>
                    <td align="center" colspan="2"><input type="submit" name="btn_stock" id="btn_stock" value="Add Stock"></td>
                </tr>
            </table>
        </form>
        <table border="1" align='center'>
            <tr>
                <th>Sl.No</th>
                <th>Date</th>
                <th>Quantity</th>
            </tr>
            <%
                int total = 0;
                int i = 0;
                String sel = "select * from tbl_gadget g inner join tbl_gadgetstock gs on gs.gd_id=g.gd_id where gs.gd_id='" + request.getParameter("id") + "'";
                ResultSet rs = con.selectCommand(sel);
                while (rs.next()) {
                    i++;
                    total = total + Integer.parseInt(rs.getString("gadgetstock_quantity"));
            %>
            <tr>
                <td><%=i%></td>
                <td><%=rs.getString("gadgetstock_date")%></td>
                <td><%=rs.getString("gadgetstock_quantity")%></td>
                <%
                    }
                %>
            <tr>
                <td colspan="3" align="right">
                    Total = <%=total%>
                </td>
            </tr>
        </table>
    </body>

</html>
