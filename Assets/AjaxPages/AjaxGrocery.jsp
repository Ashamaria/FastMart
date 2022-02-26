<%@page import="java.sql.ResultSet"%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
 <option>---Select---</option>
<%
String sel = "select * from tbl_grocerysubcategory where grcryctgry_id='"+request.getParameter("did")+"'";
ResultSet rs = con.selectCommand(sel);
while(rs.next())
{
  %>
                                           
<option value="<%=rs.getString("grcrysubctgry_id")%>"><%=rs.getString("grcrysubctgry_nme")%></option>
                                           
<%
}
                                       
%>
