<%-- 
    Document   : Customer
    Created on : 18 Sep, 2021, 8:16:35 PM
    Author     : hp
--%>

<%@page import="java.sql.ResultSet" %>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@include file="Head.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Customer</title>
    </head>
    <body style="background-image: url('../Assets/Template/Main/images/customer.jpg');background-repeat: no-repeat;background-size: 100% 100%;">
        <%
            String editName = "", editId = "";
            if (request.getParameter("btn_register") != null) {
                String dist_id = request.getParameter("sel_district");
                String customer_name = request.getParameter("txt_name");
                String contact = request.getParameter("txt_contact");
                String email = request.getParameter("customer_email");
                String address = request.getParameter("address");
                String password = request.getParameter("customer_password");

                String pincode = request.getParameter("txt_pincode");

                String ins = "insert into tbl_customer(dist_id,cust_nme,cust_contct,cust_email,cust_addr,cust_pass,cust_doj,cust_pin)values('" + dist_id + "','" + customer_name + "','" + contact + "','" + email + "','" + address + "','" + password + "',CURDATE(),'" + pincode + "')";
                con.executeCommand(ins);
                response.sendRedirect("Customer.jsp");

            }
        %>
        <form method="post" name="form1">
            <table border="1" cellpadding="10" style="border-collapse: collapse;" align="center">
                <tr>
                    <td><b>Name</b></td>
                    <td><input type="text" name="txt_name" id="txt_name" required=""></td>
                </tr> 
                <tr>
                    <td><b>Contact</b></td>
                    <td><input type="text" name="txt_contact" id="txt_contact" required=""></td>
                </tr> 
                <tr>
                    <td><b>Email</b></td>
                    <td><input type="email" name="customer_email" required=""></td>
                </tr> 
                <tr>
                    <td><b>Address</b></td>
                    <td><textarea name="address" rows="5" cols="30" required=""></textarea></td>
                </tr> 
                <tr>
                    <td><b>Password</b></td>
                    <td><input type="password" name="customer_password" required=""></td>
                </tr>
                <tr>
                    <td><b>Retype-Password</b></td>
                    <td><input type="password" name="customer_repassword" required=""></td>
                </tr>
                <tr>
                    <td><b>District</b></td>
                    <td> <select size="1" name="sel_district" required="">
                            <option>---Select---</option>
                            <%
                                String sel = "select * from tbl_district";
                                ResultSet rs = con.selectCommand(sel);
                                while (rs.next()) {
                            %>

                            <option value="<%=rs.getString("dist_id")%>"><%=rs.getString("dist_nme")%></option>

                            <%
                                }

                            %>
                        </select></td>
                </tr>
                <tr>
                    <td><b>Pincode</b></td>
                    <td><input type="text" name="txt_pincode" id="txt_pincode" required=""></td>
                </tr>
                <tr align="center">
                    <td colspan="2"><input type="submit" name="btn_register" id="btn_register" value="Register Now"> </td>
                </tr>

            </table>

        </form>
        <%@include file="Foot.jsp" %>
    </body>
</html>
