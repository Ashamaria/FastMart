<%--
    Document   : FootwearStock
    Created on : 12 Nov, 2021, 12:02:53 PM
    Author     : ajula
--%>

<%@page import="java.sql.ResultSet" %>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ootwear Stock</title>
    </head>
    <body>
        <%

            if (request.getParameter("btn_stock") != null) {
                String id = request.getParameter("hid");
                String date = request.getParameter("stockdate");
                String quantity = request.getParameter("quantity");

                String ins = "insert into tbl_footwearstock(ftwr_id,footwearstock_date,footwearstock_quantity)values('" + id + "','" + date + "','" + quantity + "')";
                if (con.executeCommand(ins)) {
                    response.sendRedirect("FootwearStock.jsp?id=" + id);

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
                        <input type="hidden" name="hid" id="hid" value="<%=request.getParameter("id")%>">
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
                <th>Quanity</th>


            </tr>
            <%
                int total=0;
                int i = 0;
                String sel = "select * from tbl_footwearstock fs inner join tbl_footwear f on fs.ftwr_id=f.ftwr_id where fs.ftwr_id='" + request.getParameter("id") + "'";
                ResultSet rs = con.selectCommand(sel);
                while (rs.next()) {
                    i++;
                    total = total + Integer.parseInt(rs.getString("footwearstock_quantity"));
            %>
            <tr>
                <td><%=i%></td>                
                <td><%=rs.getString("footwearstock_date")%></td>
                <td><%=rs.getString("footwearstock_quantity")%></td>

            </tr>
            <%
                }
            %>
            <tr>
                <td colspan="3" align="center">
                     Total = <%=total%>
                </td>
            </tr>
        </table>
    </body>
</html>
