<%-- 
    Document   : DeliveryBoy
    Created on : 18 Sep, 2021, 9:00:09 PM
    Author     : hp
--%>

<%@page import="java.sql.ResultSet"%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@include file="Head.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>DeliveryBoy</title>
    </head>
    <body style="background-image: url('../Assets/Template/Main/images/deliveryboy.jpg');background-repeat: no-repeat;background-size: 100% 100%;">
        <form method="post" enctype="multipart/form-data" action="../Assets/UploadAction/DeliveryBoyUploadAction.jsp">
            <table border="1" cellpadding="10" style="border-collapse: collapse;" align="center">
                <tr>
                    <td><b>Name</b></td>
                    <td><input type="text" name="txt_name" required="" id="txt_name" ></td>
                </tr> 
                <tr>
                    <td><b>Address</b></td>
                    <td><textarea name="address" rows="5" cols="30" required=""></textarea></td>
                </tr> 
                 <tr>
                     <td><b>Contact</b></td>
                    <td><input type="text" name="txt_contact" id="txt_contact" required=""></td>
                </tr> 
                <tr>
                    <td><b>Aadhar Number</b></td>
                    <td><input type="text" name="txt_aadharno" id="txt_aadharno" required=""></td>
                </tr> 
                <tr>
                    <td><b>Email</b></td>
                    <td><input type="email" name="deliveryboy_email" required=""></td>
                </tr> 
                <tr>
                    <td><b>Proof</b></td>
                    <td><input type="file" name="file_proof" required=""></td>
                </tr> 
                <tr>
                    <td><b>Password</b></td>
                    <td><input type="password" name="deliveryboy_password" required=""></td>
                </tr>
                <tr>
                    <td><b>Retype-Password</b></td>
                    <td><input type="password" name="deliveryboy_repassword" required=""></td>
                </tr>
                <tr>
                    <td><b>District</b></td>
                    <td><select size="1" name="sel_district" onchange="getPlace(this.value)" required="">
                                    <option>---Select---</option>
                                     <%
                                        String sel = "select * from tbl_district";
                                        ResultSet rs = con.selectCommand(sel);
                                        while(rs.next())
                                        {
                                            %>
                                            
                                            <option value="<%=rs.getString("dist_id")%>"><%=rs.getString("dist_nme")%></option>
                                            
                                            <%
                                        }
                                        
                                        %>
                               </select></td>
                </tr> 
                <tr>
                    <td><b>Place</b></td>
                    <td><select size="1" name="sel_place" id="sel_place" required="">
                                    <option>---Select---</option>
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
<script src="../Assets/Jq/jquery.js"></script>
<script>
function getPlace(did)
{
	$.ajax({
	url: "../Assets/AjaxPages/AjaxPlace.jsp?did="+did,
	  success: function(result){
		$("#sel_place").html(result);
	  }
	});
}
</script>
<%@include file="Foot.jsp" %>
    </body>
</html>
