<%--
    Document   : AjaxPlace
    Created on : 22 Sep, 2021, 12:36:27 PM
    Author     : ajula
--%>

<%@page import="java.sql.ResultSet"%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
 <option>---Select---</option>
<%
String sel = "select * from tbl_place where dist_id='"+request.getParameter("did")+"'";
ResultSet rs = con.selectCommand(sel);
while(rs.next())
{
  %>
                                           
<option value="<%=rs.getString("plc_id")%>"><%=rs.getString("plc_nme")%></option>
                                           
<%
}
                                       
%>
