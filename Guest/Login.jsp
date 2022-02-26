<%-- 
    Document   : Login
    Created on : 24 Sep, 2021, 3:20:40 PM
    Author     : hp
--%>

<%@page import="java.sql.ResultSet" %>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%--
    Document   : Login
    Created on : 24 Sep, 2021, 3:20:40 PM
    Author     : hp
--%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
    </head>
    <%
   
    if(request.getParameter("btn_login")!=null)
    {
        String uname = request.getParameter("txt_uname");
        String pass = request.getParameter("txt_pass");
       
        String selC = "select * from tbl_customer where cust_email='"+uname+"' and cust_pass='"+pass+"'";
        ResultSet rsC = con.selectCommand(selC);
        String selD = "select * from tbl_deliveryboy where dlvryby_email='"+uname+"' and dlvryby_pass='"+pass+"' and dlvryby_sts='1'";
        ResultSet rsC1 = con.selectCommand(selD);
        String selS = "select * from tbl_shop s inner join tbl_shoptype t on s.sh_typ = t.shtyp_id where sh_email='"+uname+"' and sh_ownrpass='"+pass+"' and sh_sts='1'";
        ResultSet rsC2 = con.selectCommand(selS);
        String selA = "select * from tbl_admin where admin_username='"+uname+"' and admin_password='"+pass+"'";
        ResultSet rsC3 = con.selectCommand(selA);
       
        if(rsC.next())
        {
            session.setAttribute("cid", rsC.getString("cust_id"));
            session.setAttribute("cname", rsC.getString("cust_nme"));
            response.sendRedirect("../Customer/HomePage.jsp");
           
        }
        else if(rsC1.next())
        {
            session.setAttribute("did", rsC1.getString("dlvryby_id"));
            session.setAttribute("dname", rsC1.getString("dlvryby_nme"));
            response.sendRedirect("../DeliveryBoy/HomePage.jsp");
           
        }
        else if(rsC2.next())
        {
                session.setAttribute("sid", rsC2.getString("sh_id"));
                session.setAttribute("sname", rsC2.getString("sh_nme"));
            if(rsC2.getString("shtyp_typ").equals("Gadget"))
            {
               
               
                session.setAttribute("styp", rsC2.getString("shtyp_id"));
                session.setAttribute("shtypname", rsC2.getString("shtyp_typ"));
                response.sendRedirect("../Shop/Gadget/HomePage.jsp");
           
            }
            else if(rsC2.getString("shtyp_typ").equals("Dress"))
            {
               
               
                session.setAttribute("styp", rsC2.getString("shtyp_id"));
                session.setAttribute("shtypname", rsC2.getString("shtyp_typ"));
                response.sendRedirect("../Shop/Dress/HomePage.jsp");
           
            }
            else if(rsC2.getString("shtyp_typ").equals("Footwear"))
            {
               
               
                session.setAttribute("styp", rsC2.getString("shtyp_id"));
                session.setAttribute("shtypname", rsC2.getString("shtyp_typ"));
                response.sendRedirect("../Shop/Footwear/HomePage.jsp");
           
            }
            else if(rsC2.getString("shtyp_typ").equals("Utensil"))
            {
               
               
                session.setAttribute("styp", rsC2.getString("shtyp_id"));
                session.setAttribute("shtypname", rsC2.getString("shtyp_typ"));
                response.sendRedirect("../Shop/Utensil/HomePage.jsp");
           
            }
            else if(rsC2.getString("shtyp_typ").equals("Grocery"))
            {
               
               
                session.setAttribute("styp", rsC2.getString("shtyp_id"));
                session.setAttribute("shtypname", rsC2.getString("shtyp_typ"));
                response.sendRedirect("../Shop/Grocery/HomePage.jsp");
           
            }
           
           
           
           
        }
        else if(rsC3.next())
        {
            session.setAttribute("aid", rsC3.getString("admin_id"));
            session.setAttribute("aname", rsC3.getString("admin_name"));
            response.sendRedirect("../Admin/HomePage.jsp");
           
        }
        else
        {
            out.println("<script>alert('Invalid Credentials')</script>");
        }
       
    }
   
   
    %>
    
    <body style="background-image: url('../Assets/Template/Main/images/login.jpg');background-repeat: no-repeat;background-size:500% 500%;">
        <br>
    <br>
    <br>
    <br>
    <br>
    <br>
        <form method="post">
            <div align="center">
            <table border="1" cellpadding="10" cellspacing="5">
                <tr>
                <td><b>Email</b></td>
                    <td><input type="text" name="txt_uname" required=""></td>
                </tr>
                 <tr>
                    <td><b>Password</b></td>
                    <td><input type="password" name="txt_pass" required=""></td>
                </tr>
                 <tr>
                     <td colspan="2" align="center"><input type="submit" name="btn_login"/></td>
                </tr>
            </table>
            </div>
        </form>
    </body>
</html>
