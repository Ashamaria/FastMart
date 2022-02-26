<%-- 
    Document   : Shop
    Created on : 18 Sep, 2021, 8:41:32 PM
    Author     : hp
--%>
<%@page import="java.sql.ResultSet"%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Shop</title>
    </head>
    <body>
       
        <form method="post" name="form1">
            <table border="1" cellpadding="10" style="border-collapse: collapse;" align="center">
               
                <tr>
                    <td>District</td>
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
                    <td>Place</td>
                    <td><select size="1" name="sel_place" id="sel_place" required="">
                                    <option>---Select---</option>
                               </select></td>
                </tr> 
                
               <tr align="center">
                    <td colspan="2"><input type="submit" name="btn_register" id="btn_register" value="Search"> </td>
                </tr>
                
            </table>
            
        </form>
                               <br>
                               <hr>
           <table align='center'>
             <tr>
            <%
           if(request.getParameter("btn_register")!=null)
              {
                int i = 0;
                String selQry = "select * from tbl_shop where plc_id='" + request.getParameter("sel_place") + "'";
                ResultSet rs1 = con.selectCommand(selQry);
                while (rs1.next()) {
                    i++;
                       
            %>
           
             
                    
                        <td>
                            <img src="../Assets/Files/ShopOwnerPhoto/<%=rs1.getString("sh_photo")%>" width="120" height="120"><br>
                            <%=rs1.getString("sh_nme")%><br>
                            <%=rs1.getString("sh_contct")%><br>
                            <a href="ShopViewMore.jsp?id=<%=rs1.getString("sh_id")%>">View More</a>
                     </td>
                
               
           
            <%
            if(i==3)
            {
                out.println("</tr><tr>");
                i=0;
            }
                }
              }
            %>
            
        </table>
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

    </body>
</html>
