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
        <title>View Utensil More</title>
    </head>
    <body>
        <table align='center'>
            <%
                String ctgryName = "";
                String selQry = "select * from tbl_utensil where utsl_id='" + request.getParameter("utensilid") + "'";
                ResultSet rs = con.selectCommand(selQry);
                if (rs.next()) {
                    ctgryName = rs.getString("utsl_ctgry");
                    if (ctgryName.equals("Cooker")) {
            %>
            <tr><td><img src="../Assets/Files/UtensilImage/<%=rs.getString("utsl_img")%>" width="120" height="120"></td></tr><br>
            <tr><td>Category:</td><td><%=rs.getString("utsl_ctgry")%></td></tr>
            <tr><td>Brand:</td><td><%=rs.getString("utslbrnd_id")%></td></tr>
            <tr><td>Material</td><td><%=rs.getString("utsl_mtrl")%></td></tr>
            <tr><td>Size:</td><td><%=rs.getString("utsl_size")%></td></tr>
            <tr><td>Name:</td><td><%=rs.getString("utsl_nme")%></td></tr> 
            <tr><td>Price:</td><td><b><%=rs.getString("utsl_pr")%></b></td></tr>       
            <tr><td>Return:</td><td><%=rs.getString("utsl_rtn")%></td></tr>

            <%
            } else if (ctgryName.equals("Peeler")) {
            %>

            <tr><td><img src="../Assets/Files/UtensilImage/<%=rs.getString("utsl_img")%>" width="120" height="120"></td></tr><br>
            <tr><td>Category:</td><td><%=rs.getString("utsl_ctgry")%></td></tr>
            <tr><td>Brand:</td><td><%=rs.getString("utslbrnd_id")%></td></tr>
            <tr><td>Material</td><td><%=rs.getString("utsl_mtrl")%></td></tr>
            <tr><td>Name:</td><td><%=rs.getString("utsl_nme")%></td></tr> 
            <tr><td>Price:</td><td><b><%=rs.getString("utsl_pr")%></b></td></tr>       
            <tr><td>Return:</td><td><%=rs.getString("utsl_rtn")%></td></tr>
            <%
            } else if (ctgryName.equals("Spatula")) {
            %>

            <tr><td><img src="../Assets/Files/UtensilImage/<%=rs.getString("utsl_img")%>" width="120" height="120"></td></tr><br>
            <tr><td>Category:</td><td><%=rs.getString("utsl_ctgry")%></td></tr>
            <tr><td>Brand:</td><td><%=rs.getString("utslbrnd_id")%></td></tr>
            <tr><td>Material</td><td><%=rs.getString("utsl_mtrl")%></td></tr>
            <tr><td>Name:</td><td><%=rs.getString("utsl_nme")%></td></tr> 
            <tr><td>Price:</td><td><b><%=rs.getString("utsl_pr")%></b></td></tr>       
            <tr><td>Return:</td><td><%=rs.getString("utsl_rtn")%></td></tr>
            <%
            } else if (ctgryName.equals("Knife")) {
            %>

            <tr><td><img src="../Assets/Files/UtensilImage/<%=rs.getString("utsl_img")%>" width="120" height="120"></td></tr><br>
            <tr><td>Category:</td><td><%=rs.getString("utsl_ctgry")%></td></tr>
            <tr><td>Brand:</td><td><%=rs.getString("utslbrnd_id")%></td></tr>
            <tr><td>Material</td><td><%=rs.getString("utsl_mtrl")%></td></tr>
            <tr><td>Size:</td><td><%=rs.getString("utsl_size")%></td></tr>
            <tr><td>Name:</td><td><%=rs.getString("utsl_nme")%></td></tr> 
            <tr><td>Price:</td><td><b><%=rs.getString("utsl_pr")%></b></td></tr>       
            <tr><td>Return:</td><td><%=rs.getString("utsl_rtn")%></td></tr>
            <%
            } else if (ctgryName.equals("Spoon")) {
            %>

            <tr><td><img src="../Assets/Files/UtensilImage/<%=rs.getString("utsl_img")%>" width="120" height="120"></td></tr><br>
            <tr><td>Category:</td><td><%=rs.getString("utsl_ctgry")%></td></tr>
            <tr><td>Brand:</td><td><%=rs.getString("utslbrnd_id")%></td></tr>
            <tr><td>Material</td><td><%=rs.getString("utsl_mtrl")%></td></tr>
            <tr><td>Size:</td><td><%=rs.getString("utsl_size")%></td></tr>
            <tr><td>Name:</td><td><%=rs.getString("utsl_nme")%></td></tr> 
            <tr><td>Price:</td><td><b><%=rs.getString("utsl_pr")%></b></td></tr>       
            <tr><td>Return:</td><td><%=rs.getString("utsl_rtn")%></td></tr>
            <%
            } else if (ctgryName.equals("Grater")) {
            %>

            <tr><td><img src="../Assets/Files/UtensilImage/<%=rs.getString("utsl_img")%>" width="120" height="120"></td></tr><br>
            <tr><td>Category:</td><td><%=rs.getString("utsl_ctgry")%></td></tr>
            <tr><td>Brand:</td><td><%=rs.getString("utslbrnd_id")%></td></tr>
            <tr><td>Material</td><td><%=rs.getString("utsl_mtrl")%></td></tr>
            <tr><td>Name:</td><td><%=rs.getString("utsl_nme")%></td></tr> 
            <tr><td>Price:</td><td><b><%=rs.getString("utsl_pr")%></b></td></tr>       
            <tr><td>Return:</td><td><%=rs.getString("utsl_rtn")%></td></tr>
            <%
            } else if (ctgryName.equals("Fork")) {
            %>

            <tr><td><img src="../Assets/Files/UtensilImage/<%=rs.getString("utsl_img")%>" width="120" height="120"></td></tr><br>
            <tr><td>Category:</td><td><%=rs.getString("utsl_ctgry")%></td></tr>
            <tr><td>Brand:</td><td><%=rs.getString("utslbrnd_id")%></td></tr>
            <tr><td>Material</td><td><%=rs.getString("utsl_mtrl")%></td></tr>
            <tr><td>Name:</td><td><%=rs.getString("utsl_nme")%></td></tr> 
            <tr><td>Price:</td><td><b><%=rs.getString("utsl_pr")%></b></td></tr>       
            <tr><td>Return:</td><td><%=rs.getString("utsl_rtn")%></td></tr>
            <%
            } else if (ctgryName.equals("Whisk")) {
            %>

            <tr><td><img src="../Assets/Files/UtensilImage/<%=rs.getString("utsl_img")%>" width="120" height="120"></td></tr><br>
            <tr><td>Category:</td><td><%=rs.getString("utsl_ctgry")%></td></tr>
            <tr><td>Brand:</td><td><%=rs.getString("utslbrnd_id")%></td></tr>
            <tr><td>Material</td><td><%=rs.getString("utsl_mtrl")%></td></tr>
            <tr><td>Size:</td><td><%=rs.getString("utsl_size")%></td></tr>
            <tr><td>Name:</td><td><%=rs.getString("utsl_nme")%></td></tr> 
            <tr><td>Price:</td><td><b><%=rs.getString("utsl_pr")%></b></td></tr>       
            <tr><td>Return:</td><td><%=rs.getString("utsl_rtn")%></td></tr>
            <%
            } else if (ctgryName.equals("Frying Pan")) {
            %>

            <tr><td><img src="../Assets/Files/UtensilImage/<%=rs.getString("utsl_img")%>" width="120" height="120"></td></tr><br>
            <tr><td>Category:</td><td><%=rs.getString("utsl_ctgry")%></td></tr>
            <tr><td>Brand:</td><td><%=rs.getString("utslbrnd_id")%></td></tr>
            <tr><td>Material</td><td><%=rs.getString("utsl_mtrl")%></td></tr>
            <tr><td>Size:</td><td><%=rs.getString("utsl_size")%></td></tr>
            <tr><td>Name:</td><td><%=rs.getString("utsl_nme")%></td></tr> 
            <tr><td>Price:</td><td><b><%=rs.getString("utsl_pr")%></b></td></tr>       
            <tr><td>Return:</td><td><%=rs.getString("utsl_rtn")%></td></tr>
            <%
            } else if (ctgryName.equals("Sieve")) {
            %>

            <tr><td><img src="../Assets/Files/UtensilImage/<%=rs.getString("utsl_img")%>" width="120" height="120"></td></tr><br>
            <tr><td>Category:</td><td><%=rs.getString("utsl_ctgry")%></td></tr>
            <tr><td>Brand:</td><td><%=rs.getString("utslbrnd_id")%></td></tr>
            <tr><td>Material</td><td><%=rs.getString("utsl_mtrl")%></td></tr>
            <tr><td>Size:</td><td><%=rs.getString("utsl_size")%></td></tr>
            <tr><td>Name:</td><td><%=rs.getString("utsl_nme")%></td></tr> 
            <tr><td>Price:</td><td><b><%=rs.getString("utsl_pr")%></b></td></tr>       
            <tr><td>Return:</td><td><%=rs.getString("utsl_rtn")%></td></tr>
            <%
            } else if (ctgryName.equals("Plate")) {
            %>

            <tr><td><img src="../Assets/Files/UtensilImage/<%=rs.getString("utsl_img")%>" width="120" height="120"></td></tr><br>
            <tr><td>Category:</td><td><%=rs.getString("utsl_ctgry")%></td></tr>
            <tr><td>Brand:</td><td><%=rs.getString("utslbrnd_id")%></td></tr>
            <tr><td>Material</td><td><%=rs.getString("utsl_mtrl")%></td></tr>
            <tr><td>Size:</td><td><%=rs.getString("utsl_size")%></td></tr>
            <tr><td>Name:</td><td><%=rs.getString("utsl_nme")%></td></tr> 
            <tr><td>Price:</td><td><b><%=rs.getString("utsl_pr")%></b></td></tr>       
            <tr><td>Return:</td><td><%=rs.getString("utsl_rtn")%></td></tr>
            <%
                }else if(ctgryName.equals("Kettle"))
                    {
               %>
               
                <tr><td><img src="../Assets/Files/UtensilImage/<%=rs.getString("utsl_img")%>" width="120" height="120"></td></tr><br>
                <tr><td>Category:</td><td><%=rs.getString("utsl_ctgry")%></td></tr>
                <tr><td>Brand:</td><td><%=rs.getString("utslbrnd_id")%></td></tr>
                <tr><td>Material</td><td><%=rs.getString("utsl_mtrl")%></td></tr>
                <tr><td>Size:</td><td><%=rs.getString("utsl_size")%></td></tr>
                <tr><td>Name:</td><td><%=rs.getString("utsl_nme")%></td></tr> 
                <tr><td>Price:</td><td><b><%=rs.getString("utsl_pr")%></b></td></tr>       
                <tr><td>Return:</td><td><%=rs.getString("utsl_rtn")%></td></tr>
                <%
                }else if(ctgryName.equals("Blender"))
                    {
               %>
               
                <tr><td><img src="../Assets/Files/UtensilImage/<%=rs.getString("utsl_img")%>" width="120" height="120"></td></tr><br>
                <tr><td>Category:</td><td><%=rs.getString("utsl_ctgry")%></td></tr>
                <tr><td>Brand:</td><td><%=rs.getString("utslbrnd_id")%></td></tr>
                <tr><td>Material</td><td><%=rs.getString("utsl_mtrl")%></td></tr>                
                <tr><td>Name:</td><td><%=rs.getString("utsl_nme")%></td></tr> 
                <tr><td>Price:</td><td><b><%=rs.getString("utsl_pr")%></b></td></tr>       
                <tr><td>Return:</td><td><%=rs.getString("utsl_rtn")%></td></tr>
                <%
                }else if(ctgryName.equals("Glass"))
                    {
               %>
               
                <tr><td><img src="../Assets/Files/UtensilImage/<%=rs.getString("utsl_img")%>" width="120" height="120"></td></tr><br>
                <tr><td>Category:</td><td><%=rs.getString("utsl_ctgry")%></td></tr>
                <tr><td>Brand:</td><td><%=rs.getString("utslbrnd_id")%></td></tr>
                <tr><td>Material</td><td><%=rs.getString("utsl_mtrl")%></td></tr>
                <tr><td>Size:</td><td><%=rs.getString("utsl_size")%></td></tr>
                <tr><td>Name:</td><td><%=rs.getString("utsl_nme")%></td></tr> 
                <tr><td>Price:</td><td><b><%=rs.getString("utsl_pr")%></b></td></tr>       
                <tr><td>Return:</td><td><%=rs.getString("utsl_rtn")%></td></tr>
                <%
                }else if(ctgryName.equals("Cup"))
                    {
               %>
               
                <tr><td><img src="../Assets/Files/UtensilImage/<%=rs.getString("utsl_img")%>" width="120" height="120"></td></tr><br>
                <tr><td>Category:</td><td><%=rs.getString("utsl_ctgry")%></td></tr>
                <tr><td>Brand:</td><td><%=rs.getString("utslbrnd_id")%></td></tr>
                <tr><td>Material</td><td><%=rs.getString("utsl_mtrl")%></td></tr>
                <tr><td>Size:</td><td><%=rs.getString("utsl_size")%></td></tr>
                <tr><td>Name:</td><td><%=rs.getString("utsl_nme")%></td></tr> 
                <tr><td>Price:</td><td><b><%=rs.getString("utsl_pr")%></b></td></tr>       
                <tr><td>Return:</td><td><%=rs.getString("utsl_rtn")%></td></tr>
                <%
                }else if(ctgryName.equals("Sauce Pan"))
                    {
               %>
               
                <tr><td><img src="../Assets/Files/UtensilImage/<%=rs.getString("utsl_img")%>" width="120" height="120"></td></tr><br>
                <tr><td>Category:</td><td><%=rs.getString("utsl_ctgry")%></td></tr>
                <tr><td>Brand:</td><td><%=rs.getString("utslbrnd_id")%></td></tr>
                <tr><td>Material</td><td><%=rs.getString("utsl_mtrl")%></td></tr>
                <tr><td>Size:</td><td><%=rs.getString("utsl_size")%></td></tr>
                <tr><td>Name:</td><td><%=rs.getString("utsl_nme")%></td></tr> 
                <tr><td>Price:</td><td><b><%=rs.getString("utsl_pr")%></b></td></tr>       
                <tr><td>Return:</td><td><%=rs.getString("utsl_rtn")%></td></tr>
                <%
                }else if(ctgryName.equals("Vessel"))
                    {
               %>
               
                <tr><td><img src="../Assets/Files/UtensilImage/<%=rs.getString("utsl_img")%>" width="120" height="120"></td></tr><br>
                <tr><td>Category:</td><td><%=rs.getString("utsl_ctgry")%></td></tr>
                <tr><td>Brand:</td><td><%=rs.getString("utslbrnd_id")%></td></tr>
                <tr><td>Material</td><td><%=rs.getString("utsl_mtrl")%></td></tr>
                <tr><td>Size:</td><td><%=rs.getString("utsl_size")%></td></tr>
                <tr><td>Name:</td><td><%=rs.getString("utsl_nme")%></td></tr> 
                <tr><td>Price:</td><td><b><%=rs.getString("utsl_pr")%></b></td></tr>       
                <tr><td>Return:</td><td><%=rs.getString("utsl_rtn")%></td></tr>
                <%
                }else if(ctgryName.equals("Container"))
                    {
               %>
               
                <tr><td><img src="../Assets/Files/UtensilImage/<%=rs.getString("utsl_img")%>" width="120" height="120"></td></tr><br>
                <tr><td>Category:</td><td><%=rs.getString("utsl_ctgry")%></td></tr>
                <tr><td>Brand:</td><td><%=rs.getString("utslbrnd_id")%></td></tr>
                <tr><td>Material</td><td><%=rs.getString("utsl_mtrl")%></td></tr>
                <tr><td>Size:</td><td><%=rs.getString("utsl_size")%></td></tr>
                <tr><td>Name:</td><td><%=rs.getString("utsl_nme")%></td></tr> 
                <tr><td>Price:</td><td><b><%=rs.getString("utsl_pr")%></b></td></tr>       
                <tr><td>Return:</td><td><%=rs.getString("utsl_rtn")%></td></tr>
            <%
                    }
                }
            %> 
        </table>
        <br>
        <hr>
        <table align='center'>
            <tr>
                <%
                    int i = 0;
                    String selQryy = "select * from tbl_utensilgallery where utsl_id='" + request.getParameter("utensilid") + "'";
                    ResultSet rs1 = con.selectCommand(selQryy);
                    while (rs1.next()) {
                        i++;
                %>

                <td>
                    <img src="../Assets/Files/UtensilImage/<%=rs1.getString("utslglry_img")%>" width="120" height="120"><br>
                    <%=rs1.getString("utslglry_desc")%>
                </td>

                <%
                        if (i == 3) {
                            out.println("</tr><tr>");
                            i = 0;
                        }
                    }
                %>
        </table>
    </body>
</html>
