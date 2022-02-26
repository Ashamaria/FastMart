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
                String sel="select * from tbl_shop where sh_id='"+session.getAttribute("sid")+"'";
                ResultSet rs=con.selectCommand(sel);
                if(rs.next())
                {
                   
               
                %>
            <table border="1" cellpadding="10" style="border-collapse: collapse;" align="center">
                <tr>
                    <td colspan="2">
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
                    <td>Address</td>
                    <td>
                        <%=rs.getString("sh_siteaddr")%>
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
            </table>
                    <%
                    
                }%>
        </form>
    </body>
</html>
