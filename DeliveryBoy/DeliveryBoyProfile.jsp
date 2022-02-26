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
        <title>DeliveryBoy Profile</title>
    </head>
    <body>
        <form method="post" name="form1">
            <%
                String sel="select * from tbl_deliveryboy where dlvryby_id='"+session.getAttribute("did")+"'";
                ResultSet rs=con.selectCommand(sel);
                if(rs.next())
                {
                   
               
                %>
            <table border="1" cellpadding="10" style="border-collapse: collapse;" align="center">
                <tr>
                    <td colspan="2">
                       
                    </td>
                </tr>
                <tr>
                    <td>Name</td>
                    <td>
                        <%=rs.getString("dlvryby_nme")%>
                    </td>
                </tr>
                <tr>
                    <td>Address</td>
                    <td>
                        <%=rs.getString("dlvryby_addr")%>
                    </td>
                </tr>
                <tr>
                    <td>Contact</td>
                    <td>
                        <%=rs.getString("dlvryby_contct")%>
                    </td>
                </tr>
                
                <tr>
                    <td>Email</td>
                    <td>
                        <%=rs.getString("dlvryby_email")%>
                    </td>
                </tr>
            </table>
                    <%
                    
                }%>
        </form>
    </body>
</html>
