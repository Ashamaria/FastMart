<%-- 
    Document   : ViewFootwearMore
    Created on : 18 Nov, 2021, 8:51:21 PM
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
                String selQry = "select * from tbl_footwear where ftwr_id='" + request.getParameter("id") + "'";
                ResultSet rs = con.selectCommand(selQry);
                if(rs.next())
                {
                %>
                <tr><td><img src="../Assets/Files/FootwearImage/<%=rs.getString("ftwr_img")%>" width="120" height="120"></td></tr><br>
                <tr><td>Category:</td><td><%=rs.getString("ftwr_ctgry")%></td></tr>
                <tr><td>Brand:</td><td><%=rs.getString("ftwrbrnd_id")%></td></tr>
                <tr><td>Material:</td><td><%=rs.getString("ftwr_mtrl")%></td></tr>
                <tr><td>Size:</td><td><%=rs.getString("ftwr_size")%></td></tr>
                <tr><td>Color:</td><td><%=rs.getString("ftwr_colr")%></td></tr>
                <tr><td>Return:</td><td><%=rs.getString("ftwr_rtn")%></td></tr>          
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
                String selQryy = "select * from tbl_footweargallery where drs_id='" + request.getParameter("footwearid") + "'";
                ResultSet rs1 = con.selectCommand(selQryy);
                while (rs1.next()) {
                    i++;
            %>
           
                <td>
                    <img src="../Assets/Files/FootwearImage/<%=rs1.getString("ftwrglry_img")%>" width="120" height="120"><br>
                    <%=rs1.getString("ftwrglry_cptn")%>
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
