<%@page import="java.sql.ResultSet"%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
    <%@include file="Head.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Shop</title>
    </head>
    <body style="background-image: url('../Assets/Template/Main/images/shop.jpg');background-repeat: no-repeat;background-size: 100% 100%;">

        <form method="post" enctype="multipart/form-data" action="../Assets/UploadAction/ShopUploadAction.jsp">
            <table border="1" cellpadding="10" style="border-collapse: collapse;" align="center">
                <tr>
                    <td><b>Name</b></td>
                    <td><input type="text" name="txt_shopname" id="txt_shopname" required=""></td>
                </tr>

                <tr>
                    <td><b>Email</b></td>
                    <td><input type="email" name="shop_email" required=""></td>
                </tr>
                <tr>
                    <td><b>Address</b></td>
                    <td><textarea name="siteaddress" rows="5" cols="30" required=""></textarea></td>
                </tr>
                <tr>
                    <td><b>Contact</b></td>
                    <td><input type="text" name="txt_contact" id="txt_contact" required=""></td>
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
                        </select>
                    </td>
                </tr>
                <tr>
                    <td><b>Place</b></td>
                    <td><select size="1" name="sel_place" id="sel_place" required="">
                            <option>---Select---</option>
                        </select></td>
                </tr>
                <tr>
                    <td><b>Proof</b></td>
                    <td><input type="file" name="file_proof" required=""></td>
                </tr>
                <tr>
                    <td><b>Aadhar Number</b></td>
                    <td><input type="text" name="txt_aadharno" id="txt_aadharno" required=""></td>
                </tr>
                <tr>
                    <td><b>Owner Name</b></td>
                    <td><input type="text" name="txt_ownername" id="txt_ownername" required=""></td>
                </tr>
                <tr>
                    <td><b>License Number</b></td>
                    <td><input type="text" name="txt_licenseno" id="txt_licenseno" required=""></td>
                </tr>
                <tr>
                    <td><b>Shop Photo</b></td>
                    <td><input type="file" name="file_ownerphoto" required=""></td>
                </tr>
                <tr>
                    <td><b>Owner Password</b></td>
                    <td><input type="password" name="owner_password" required=""></td>
                </tr>
                <tr>
                    <td><b>Retype-Password</b></td>
                    <td><input type="password" name="owner_repassword" required=""></td>
                </tr>

                <tr>
                    <td><b>Pincode</b></td>
                    <td><input type="text" name="txt_pincode" id="txt_pincode" required=""></td>
                </tr>
                <tr>
                    <td><b>Shop Type</b></td>
                    <td>
                        <select size="1" name="sel_shoptype" required="">
                            <option>---Select---</option>
                            <%
                                         String sell = "select * from tbl_shoptype";
                                         ResultSet rsl = con.selectCommand(sell);
                                         while(rsl.next())
                                         {
                            %>

                            <option value="<%=rsl.getString("shtyp_id")%>"><%=rsl.getString("shtyp_typ")%></option>

                            <%
                        }
                                       
                            %>
                        </select>
                    </td>
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
                                url: "../Assets/AjaxPages/AjaxPlace.jsp?did=" + did,
                                success: function(result) {
                                    $("#sel_place").html(result);
                                }
                            });
                        }
        </script>
        <%@include file="Foot.jsp" %>
    </body>
</html>
