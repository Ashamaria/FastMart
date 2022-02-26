<%-- 
    Document   : ViewMore
    Created on : 6 Nov, 2021, 11:50:50 AM
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
                String selQry = "select * from tbl_dress where drs_id='" + request.getParameter("id") + "'";
                ResultSet rs = con.selectCommand(selQry);
                if(rs.next())
                {
                %>
                <tr><td><img src="../Assets/Files/DressImage/<%=rs.getString("drs_img")%>" width="120" height="120"></td></tr><br>
                <tr><td>Category:</td><td><%=rs.getString("drs_ctgry")%></td></tr>
                <tr><td>Brand:</td><td><%=rs.getString("drsbrnd_id")%></td></tr>
                <tr><td>Material:</td><td><%=rs.getString("drs_mtrl")%></td></tr>
                <tr><td>Size:</td><td><%=rs.getString("drs_size")%></td></tr>
                <tr><td>Color:</td><td><%=rs.getString("drs_colr")%></td></tr> 
                <tr><td>Return:</td><td><%=rs.getString("drs_rtn")%></td></tr>          
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
                String selQryy = "select * from tbl_dressgallery where drs_id='" + request.getParameter("dressid") + "'";
                ResultSet rs1 = con.selectCommand(selQryy);
                while (rs1.next()) {
                    i++;
            %>
           
                <td>
                    <img src="../Assets/Files/DressImage/<%=rs1.getString("drsglry_img")%>" width="120" height="120"><br>
                    <%=rs1.getString("drsglry_cptn")%>
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
