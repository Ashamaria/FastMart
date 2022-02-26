<%-- 
    Document   : ViewGroceryMore
    Created on : 18 Nov, 2021, 9:14:18 PM
    Author     : ajula
--%>

<%@page import="java.sql.ResultSet" %>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Dress More</title>
    </head>
    <body>
         <table align='center'>
            <%
                String ctgryName="";
                String selQry = "select * from tbl_grocery where grcry_id='" + request.getParameter("id") + "'";
                ResultSet rs = con.selectCommand(selQry);
                if(rs.next())
                {
                %>
                <tr><td><img src="../Assets/Files/GroceryImage/<%=rs.getString("grcry_img")%>" width="120" height="120"></td></tr><br>
                <tr><td>Category:</td><td><%=rs.getString("grcry_ctgry")%></td></tr>
                <tr><td>Unit:</td><td><%=rs.getString("grcry_unit")%></td></tr>
                <tr><td>Return:</td><td><%=rs.getString("grcry_rtn")%></td></tr>          
               <%
                }
                   
            %>
         </table>
         <br>
               <hr>
               <table align='center'>
             <tr>
            <%
                int i = 0;
                String selQryy = "select * from tbl_grocerygallery where grcry_id='" + request.getParameter("groceryid") + "'";
                ResultSet rs1 = con.selectCommand(selQryy);
                while (rs1.next()) {
                    i++;
            %>
           
                <td>
                    <img src="../Assets/Files/GroceryImage/<%=rs1.getString("grcryglry_img")%>" width="120" height="120"><br>
                    <%=rs1.getString("grcryglry_desc")%>
                </td>
           
            <%
            if(i==3)
            {
                out.println("</tr><tr>");
                i=0;
            }
                }
            %>
        </table>
    </body>
</html>