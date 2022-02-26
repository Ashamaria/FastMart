<%-- 
    Document   : ViewGadgetMore
    Created on : 20 Nov, 2021, 8:48:45 PM
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
                String selQry = "select * from tbl_gadget where gd_id='" + request.getParameter("gadgetid") + "'";
                ResultSet rs = con.selectCommand(selQry);
                if(rs.next())
                {
                %>
                <tr><td><img src="../Assets/Files/GadgetImage/<%=rs.getString("gd_img")%>" width="120" height="120"></td></tr><br>
                <tr><td>Category:</td><td><%=rs.getString("gd_ctgry")%></td></tr>
                <tr><td>Brand:</td><td><%=rs.getString("gdbrnd_id")%></td></tr>
                <tr><td>Capacity</td><td><%=rs.getString("gd_memm")%></td></tr>
                <tr><td>Storage</td><td><%=rs.getString("gd_ssd")%></td></tr>
                <tr><td>Return:</td><td><%=rs.getString("gd_rtn")%></td></tr>          
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
                String selQryy = "select * from tbl_gadgetgallery where gd_id='" + request.getParameter("gadgetid") + "'";
                ResultSet rs1 = con.selectCommand(selQryy);
                while (rs1.next()) {
                    i++;
            %>
           
                <td>
                    <img src="../Assets/Files/GadgetImage/<%=rs1.getString("gdglry_img")%>" width="120" height="120"><br>
                    <%=rs1.getString("gdglry_cptn")%>
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
