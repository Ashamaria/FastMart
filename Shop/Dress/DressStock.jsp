<%--
    Document   : DressStock
    Created on : 12 Nov, 2021, 11:52:15 AM
    Author     : ajula
--%>

<%@page import="java.sql.ResultSet" %>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Dress Stock</title>
    </head>
    <body>
        <%

            if (request.getParameter("btn_stock") != null) {
                String date = request.getParameter("stockdate");
                String id = request.getParameter("hid");
                String quantity = request.getParameter("quantity");

                String ins = "insert into tbl_dressstock(dressstock_date,dressstock_quantity,drs_id)values('" + date + "','" + quantity + "','" + id + "')";
                if (con.executeCommand(ins)) {
                    response.sendRedirect("DressStock.jsp?did=" + id);

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
                        <input type="hidden" name="hid" id="hid"  value="<%=request.getParameter("did")%>">
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
                String sel = "select * from tbl_dressstock d inner join tbl_dress db on d.drs_id=db.drs_id where d.drs_id='" + request.getParameter("did") + "'";
                ResultSet rs = con.selectCommand(sel);
                while (rs.next()) {
                    i++;
                     total = total + Integer.parseInt(rs.getString("dressstock_quantity"));
            %>
            <tr>
                <td><%=i%></td>                
                <td><%=rs.getString("dressstock_date")%></td>
                <td><%=rs.getString("dressstock_quantity")%></td>
                
            </tr>
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
