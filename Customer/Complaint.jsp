<%-- 
    Document   : Complaint
    Created on : 18 Sep, 2021, 7:39:43 PM
    Author     : hp
--%>
<%@page import="java.sql.ResultSet" %>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Complaint</title>
    </head>
    
    <body>
        
        <form method="post" name="form1">
            <table border="1" cellpadding="10" style="border-collapse: collapse;" align="center">
                <tr>
                    <td>Complaint Type</td>
                    <td><select size="1" name="complainttype" required="">
                            <option>---Select---</option>
                            <option>---Select---</option>
                            <option>---Select---</option>
                        </select></td>
                </tr>
                <tr>
                    <td>Complaint</td>
                    <td><textarea name="complaint" rows="5" cols="30" required=""></textarea></td>
                </tr>
                <tr align="center">
                    <td colspan="2"><input type="submit" name="btn_save" id="btn_save" value="OK"> <input type="reset" name="btn_cancel" id="btn_cancel" value="Cancel"></td>
                </tr>
            </table>
        </form>
    </body>
</html>
