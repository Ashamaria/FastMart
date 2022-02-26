<%-- 
    Document   : CustomerProfile
    Created on : 18 Sep, 2021, 9:08:46 PM
    Author     : hp
--%>
<%@page import="java.sql.ResultSet" %>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Dress Profile</title>
    </head>
    <body>
        <form method="post" name="form1">
            <%
                String sel = "select * from tbl_shop s inner join tbl_place tb on tb.plc_id=s.plc_id inner join tbl_district td on td.dist_id=tb.dist_id inner join tbl_shoptype st on s.sh_typ=st.shtyp_id where sh_id='" + request.getParameter("id") + "'";
                ResultSet rs = con.selectCommand(sel);
                if (rs.next()) {


            %>
            <table border="1" cellpadding="10" style="border-collapse: collapse;" align="center">
                <tr>
                    <td colspan="2" align="center">
                        <img style="border-radius: 50%"  src="../Assets/Files/ShopOwnerPhoto/<%=rs.getString("sh_photo")%>" width="120" height="120" align="center"/>
                    </td>
                </tr>
                <tr>
                    <td>Name</td>
                    <td>
                        <%=rs.getString("sh_nme")%>
                    </td>
                </tr>
                <tr>
                    <td>Contact</td>
                    <td>
                        <%=rs.getString("sh_contct")%>
                    </td>
                </tr>
                <tr>
                    <td>Email</td>
                    <td>
                        <%=rs.getString("sh_email")%>
                    </td>
                </tr>
                <tr>
                    <td>District</td>
                    <td>
                        <%=rs.getString("dist_nme")%>
                    </td>
                </tr>
                <tr>
                    <td>Place</td>
                    <td>
                        <%=rs.getString("plc_nme")%>
                    </td>
                </tr>
                <tr>
                    <td>Address</td>
                    <td>
                        <%=rs.getString("sh_siteaddr")%>
                    </td>
                </tr>

                <tr align="center">
                    <td colspan="2">

                        <%
                            if (rs.getString("shtyp_typ").equals("Gadget")) {
                        %>
                        <a href="ViewGadgetProduct.jsp?id=<%=rs.getString("sh_id")%>">View Product</a>
                        <%
                        } else if (rs.getString("shtyp_typ").equals("Footwear")) {
                        %>
                        <a href="ViewFootwearProduct.jsp?id=<%=rs.getString("sh_id")%>">View Product</a>
                        <%
                        } else if (rs.getString("shtyp_typ").equals("Utensil")) {
                        %>
                        <a href="ViewUtensilProduct.jsp?id=<%=rs.getString("sh_id")%>">View Product</a>
                        <%
                        } else if (rs.getString("shtyp_typ").equals("Dress")) {
                        %>
                        <a href="ViewDressProduct.jsp?id=<%=rs.getString("sh_id")%>">View Product</a>
                        <%
                        } else if (rs.getString("shtyp_typ").equals("Grocery")) {
                        %>
                        <a href="ViewGroceryProduct.jsp?id=<%=rs.getString("sh_id")%>">View Product</a>
                        <%
                            }

                        %>

                    </td>


                </tr>

            </table>
            <%                }%>
        </form>
    </body>
</html>
