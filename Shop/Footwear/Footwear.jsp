<%-- 
    Document   : Footwear
    Created on : 18 Sep, 2021, 10:26:30 PM
    Author     : hp
--%>
<%@page import="java.sql.ResultSet" %>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Footwear</title>
    </head>
    <body>
        <form method="post" enctype="multipart/form-data" action="../../Assets/UploadAction/FootwearUploadAction.jsp">
           <table border="1" cellpadding="10" style="border-collapse: collapse;" align="center">
               <tr>
                   <td>Category:</td>
                   <td>
                       <select size="1" name="category" required="">
                           <option value="">---Select---</option>
                           <option value="Shoe">Shoe</option>
                           <option value="Flats">Flats</option>
                           <option value="Jutis">Jutis</option>
                           <option value="Heels">Heels</option>
                           <option value="Sandals">Sandals</option>
                       </select>
                   </td>
               </tr>
               <tr>
                   <td>Brand</td>
                   <td><select size="1" name="sel_brand" required="">
                                    <option>---Select---</option>
                                     <%
                                        String sel = "select * from tbl_footwearbrand";
                                        ResultSet rs = con.selectCommand(sel);
                                        while(rs.next())
                                        {
                                            %>
                                           
                                            <option value="<%=rs.getString("ftwrbrnd_id")%>"><%=rs.getString("ftwrbrnd_nme")%></option>
                                           
                                            <%
                                        }
                                       
                                        %>
                               </select></td>
               </tr>
                <tr>
                   <td>Gender</td>
                   <td>
                       <input type="radio" name="txt_radio1" id="txt_radio1" value="male" required="">Male 
                       <input type="radio" name="txt_radio1" id="txt_radio1" value="female">Female
                   </td>
               </tr>
               <tr>
                   <td>Price</td>
                   <td><input type="number" name="txt_footwearprice" id="txt_footwearprice" required=""></td>
               </tr>
               <tr>
                   <td>Image</td>
                   <td><input type="file" name="txt_image" required=""></td>
               </tr>
              
              
               <tr>
                   <td>Size</td>
                   <td>
                       <select size="1" name="footwearsize" required="">
                           <option>---Select---</option>
                           <option value="6">6</option>
                           <option value="6.5">6.5</option>
                           <option value="7">7</option>
                           <option value="7.5">7.5</option>
                           <option value="8">8</option> 
                           <option value="8.5">8.5</option>
                           <option value="9">9</option>
                           <option value="9.5">9.5</option>
                           <option value="10">10</option>
                           <option value="10.5">10.5</option>
                           <option value="11">11</option>
                           <option value="11.5">11.5</option>
                           <option value="12">12</option>
                            
                           <option>---Select2---</option>
                       </select>
                   </td>
               </tr>
               <tr>
                   <td>Type</td>
                   <td>
                       <input type="radio" name="txt_rad" id="txt_radio1" value="Formal" required="">Formal 
                       <input type="radio" name="txt_rad" id="txt_radio1" value="Casual">Casual
                   </td>
               </tr>
               <tr>
                   <td>Material</td>
                   <td>
                       <select size="1" name="footwearmaterial" required="">
                           <option>---Select---</option>
                           <option value="leather">leather</option>
                           <option value="canvas">canvas</option>
                           <option value="rubber">rubber</option>
                           <option value="synthetics">synthetics</option>
                           <option value="foam">foam</option>
                           <option value="denim">denim</option>
                           
                       </select>
                   </td>
               </tr>
               <tr>
                   <td>Color</td>
                   <td>
                       <select size="1" name="footwearcolor" required="">
                           <option value="">--select--</option>
                           <option value="Red">Red</option>
                           <option value="Redorange">Redorange</option>
                           <option value="Orange">Orange</option>
                           <option value="yellow">yellow</option>
                           <option value="Yellowgreen">Yellowgreen</option>
                           <option value="Green">Green</option>
                           <option value="Skyblue">Skyblue</option>
                           <option value="Blue">Blue</option>
                           <option value="Violet">Violet</option>
                           <option value="Brown">Brown</option>
                           <option value="Black">Black</option>
                           <option value="White">White</option>
                           <option value="Grey">Grey</option>
                           <option value="Magenta">Magenta</option>
                           <option value="Pink">Pink</option>
                           <option value="LightBlue">LightBlue</option>
                           <option value="Aquagreen">Aquagreen</option>
                           <option value="Jadegreen">Jadegreen</option>
                           <option value="Peach">Peach</option>
                           <option value="Goldenyellow">Goldenyellow</option>
                           <option value="Yelloworange">Yelloworange</option>
                           <option value="Mahogany">Mahogany</option>
                           <option value="Tan">Tan</option>
                           <option value="Lightbrown">Lightbrown</option>
                       </select>
                   </td>
               </tr>
               <tr>
                   <td>Return</td>
                   <td><input type="number" name="txt_return" id="txt_return" required=""> (in Days)</td>
               </tr>
               <tr align="center">
                    <td colspan="2"><input type="submit" name="btn_save" id="btn_save" value="Save"> <input type="reset" name="btn_cancel" id="btn_cancel" value="Cancel"></td>
               </tr>
           </table>
        </form>
    </body>
</html>
