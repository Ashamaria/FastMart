<%-- 
    Document   : EditProfile
    Created on : 20 Sep, 2021, 1:12:04 PM
    Author     : hp
--%>

<%@page import="java.sql.ResultSet" %>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form method="POST" name="form1">
            <%
                if(request.getParameter("btn_edit")!=null)
                {
                   
                    String up = "update tbl_shop set sh_nme = '"+request.getParameter("txt_name")+"'"
                            + ",sh_siteaddr='"+request.getParameter("txt_address")+"',"
                            + "sh_contct='"+request.getParameter("txt_contact")+"',"
                            + "sh_email = '"+request.getParameter("txt_email")+"'"
                            + "where sh_id='"+session.getAttribute("sid")+"'";
                   
                    con.executeCommand(up);
                    response.sendRedirect("EditProfile.jsp");
                   
                }
               
               
               
                String sel="select * from tbl_shop where sh_id='"+session.getAttribute("sid")+"'";
                ResultSet rs=con.selectCommand(sel);
                if(rs.next())
                {
                   
               
                %>
            <table border="1" cellpadding="10" style="border-collapse: collapse;" align="center">
                <tr>  
                    <td>Name</td>
                    <td>
                        <input type="text" name="txt_name" value="<%=rs.getString("sh_nme")%>">
                    </td>
                </tr>
                <tr>
                    <td>Address</td>
                    <td>
                        <textarea rows="5" cols="30" name="txt_address" ><%=rs.getString("sh_siteaddr")%></textarea>
                    </td>
                </tr>
                <tr>
                    <td>Contact</td>
                    <td>
                        <input type="text" name="txt_contact" value="<%=rs.getString("sh_contct")%>">
                    </td>
                </tr>
                <tr>
                    <td>Email</td>
                    <td>
                        <input type="email" name="txt_email"value="<%=rs.getString("sh_email")%>">
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <input type="submit"name="btn_edit" id="btn_edit" value="Edit">
                       
                    </td>
                </tr>
            </table>
                    <%
                }
                    %>
        </form>
    </body>
</html>