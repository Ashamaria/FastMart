<%@page import="java.sql.ResultSet" %>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Gadget List</title>
    </head>
    <body>
         <%
            if(request.getParameter("del")!=null)
            {
                String str2="delete from tbl_gadget where gd_id='"+request.getParameter("del")+"'";
                con.executeCommand(str2);
            }
         %>
        <table border="1" align='center'>
            <tr>
                <th>Sl.No</th>
                <th>Category</th>
                <th>Brand</th>
                <th>RAM</th>
                <th>Main Memory</th>
                <th>Front Camera</th>
                <th>Main Camera</th>
                <th>SSD</th>
                <th>Other Features</th>
                <th>Price</th>
                <th>Image</th>
                <th>Return</th>
                <th>Action</th>
            </tr>
            <%
                int i = 0;
                String sel = "select * from tbl_gadget g inner join tbl_gadgetbrand gb on g.gdbrnd_id=gb.gdbrnd_id where sh_id='"+session.getAttribute("sid")+"'";
                ResultSet rs = con.selectCommand(sel);
                while (rs.next()) {
                    i++;
            %>
            <tr>
                <td><%=i%></td>
                <td><%=rs.getString("gd_ctgry")%></td>
                <td><%=rs.getString("gdbrnd_id")%></td>
                <td><%=rs.getString("gd_ram")%></td>
                <td><%=rs.getString("gd_mmem")%></td>
                 <td><%=rs.getString("gd_ssd")%></td>
                <td><%=rs.getString("gd_fcam")%></td>   
                <td><%=rs.getString("gd_mcam")%></td>   
                <td><img src="../../Assets/Files/GadgetFeatures/<%=rs.getString("gd_othrftrs")%>" width="120" height="120"></td>
                <td><%=rs.getString("gd_pr")%></td>
                <td><img src="../../Assets/Files/GadgetImage/<%=rs.getString("gd_img")%>" width="120" height="120"></td>
                <td><%=rs.getString("gd_rtn")%></td>
                <td>
                    <a href="GadgetList.jsp?del=<%=rs.getString("gd_id")%>">Delete</a> |
                    <a href="GadgetGallery.jsp?id=<%=rs.getString("gd_id")%>">Add Gallery</a>
                    <a href="GadgetStock.jsp?id=<%=rs.getString("gd_id")%>">Add Stock</a>
                </td>
            </tr>
            <%
                }
            %>
        </table>
    </body>
</html>
