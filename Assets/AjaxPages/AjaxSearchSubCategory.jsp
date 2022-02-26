<%@page import="java.sql.ResultSet"%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%
    String sel = "select * from tbl_grocerysubcategory where grcryctgry_id IN(" + request.getParameter("data") + ")";
    System.out.println(sel);
    ResultSet rs = con.selectCommand(sel);
    while (rs.next()) {
%>
<li class="list-group-item">
    <div class="form-check">
        <label class="form-check-label">
            <input type="checkbox" class="form-check-input product_check" value="<%=rs.getString("grcrysubctgry_id")%>" id="scat"><%=rs.getString("grcrysubctgry_nme")%>
        </label>
    </div>
</li>

<%
    }

%>
