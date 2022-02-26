<%@page import="java.sql.ResultSet" %>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Dress</title>
    </head>
    <body>
        
        <form method="post" enctype="multipart/form-data" action="../../Assets/UploadAction/DressUploadAction.jsp">
           <table border="1" cellpadding="10" style="border-collapse: collapse;" align="center">
               <tr>
                   <td>Category:</td>
                   <td>
                       <select size="1" name="dresscategory" required="">
                           <option>---Select---</option>
                           <option value="Shirts">Shirts</option>
                           <option value="Pants">Pants</option>
                           <option value="Churidar">Churidar</option>
                           <option value="Sarees">Sarees</option>
                           <option value="Salwar">Salwar</option>
                           <option value="Shorts">Shorts</option>
                           <option value="Frocks">Frocks</option>
                           <option value="Suits">Suits</option>
                           <option value="Inner wears">Inner wears</option>
                       </select>
                   </td>
               </tr>
               <tr>
                   <td>Brand</td>
                   <td><select size="1" name="sel_brand" required="">
                                    <option>---Select---</option>
                                     <%
                                        String sel = "select * from tbl_dressbrand";
                                        ResultSet rs = con.selectCommand(sel);
                                        while(rs.next())
                                        {
                                            %>
                                           
                                            <option value="<%=rs.getString("drsbrnd_id")%>"><%=rs.getString("drsbrnd_nme")%></option>
                                           
                                            <%
                                        }
                                       
                                        %>
                               </select></td>
               </tr>
                <tr>
                   <td>Gender</td>
                   <td><input type="radio" name="txt_radio1" id="txt_radio1" value="Male" required="">Male <input type="radio" name="txt_radio1" id="txt_radio1" value="Female">Female</td>
               </tr>
               <tr>
                   <td>Size</td>
                   <td><input type="radio" name="txt_radio2" id="txt_radio2" value="XL" required="">XL <input type="radio" name="txt_radio2" id="txt_radio2" value="XML">XML <input type="radio" name="txt_radio2" id="txt_radio2" value="XXL">XXL</td>
               </tr>
               <tr>
                   <td>Attire</td>
                   <td><input type="radio" name="txt_radio3" id="txt_radio3" value="formal" required="">Formal <input type="radio" name="txt_radio3" id="txt_radio3" value="casual">Casual</td>
               </tr>
                              <tr>
                   <td>Material</td>
                   <td>
                       <select size="1" name="dresssmaterial" required="">
                           <option value="">----select----</option>
                           <option value="Cotton">Cotton</option>
                           <option value="Jute">Jute</option>
                           <option value="Linen">Linen</option>
                           <option value="Satin">Satin</option>
                           <option value="Silk">Silk</option>
                           <option value="Wool">Wool</option>
                           <option value="Chiffon">Chiffon</option>
                           <option value="Rayon">Rayon</option>
                           <option value="Denim">Denim</option>
                           <option value="Velvet">Velvet</option>
                           <option value="Crepe">Crepe</option>
                           <option value="Nylon">Nylon</option>
                         
                       </select>
                   </td>
               </tr>

               <tr>
                   <td>Price</td>
                   <td><input type="number" name="txt_price" id="txt_price" required=""></td>
               </tr>
               <tr>
                   <td>Color</td>
                   <td>
                       <select size="1" name="dressscolor" onchange="appear(this.value)" required="">
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
                            <option value="Multicolor">Multicolor</option>
                     
                       </select>
                   </td>
               </tr>
               <tr id="color-field" style="display: none">
                   <td>Multi Color</td>
                   <td>
                       <input type="text" name="txt_color" id="txt_color">
                   </td>
               </tr>
               <tr>
                   <td>Description</td>
                   <td><textarea COLS="30" ROWS="5" name="description" required=""></textarea></td>
               </tr>
               <tr>
                   <td>Condition</td>
                   <td><input type="radio" name="txt_radio4" id="txt_radio3" value="new">New <input type="radio" name="txt_radio4" id="txt_radio3" value="used">Used</td>
               </tr>
               <tr>
                   <td>Image</td>
                   <td><input type="file" name="txt_image" required=""></td>
               </tr>
               <tr>
                   <td>Return</td>
                   <td><input type="number" name="txt_return" id="txt_return" required="">(in days)</td>
               </tr>
               <tr align="center">
                    <td colspan="2"><input type="submit" name="btn_save" id="btn_save" value="Save"> <input type="reset" name="btn_cancel" id="btn_cancel" value="Cancel"></td>
               </tr>          
           </table>
        </form>
                               <script>
                                   function appear(color)
                                   {
                                       if (color=="Multicolor")
                                       {
                                          document.getElementById("color-field").style.display = '';
                                       }
                                       else
                                       {
                                            document.getElementById("color-field").style.display = 'none';
                                           
                                       }
                                   }
                               </script>
    </body>
</html>