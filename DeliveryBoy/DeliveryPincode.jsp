<%-- 
    Document   : DeliveryPincode
    Created on : 18 Sep, 2021, 8:10:17 PM
    Author     : hp
--%>
<%@page import="java.sql.ResultSet" %>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Delivery Pincode</title>
    </head>
    <body>
        <form method="post" name="form1">
            <table border="1" cellpadding="10" style="border-collapse: collapse;" align="center">
                <tr>
                    <td>Pincode</td>
                    <td><input type="text" name="txt_pincode" id="txt_pincode" required=""></td>
                </tr> 
                <tr align="center">
                    <td colspan="2"><input type="submit" name="btn_save" id="btn_save" value="Save"> <input type="reset" name="btn_cancel" id="btn_cancel" value="Cancel"> <input type="submit" name="btn_update" id="btn_update" value="Update"></td>
                </tr>
                
            </table>
            
        </form>
    </body>
</html>
