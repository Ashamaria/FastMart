<%@page import="java.sql.ResultSet" %>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Footwear List</title>
    </head>
    <body>
         <%
            if(request.getParameter("del")!=null)
            {
                String str2="delete from tbl_footwear where ftwr_id='"+request.getParameter("del")+"'";
                con.executeCommand(str2);
            }
         %>
        <table border="1" align='center'>
            <tr>
                <th>Sl.No</th>
                <th>Category</th>
                <th>Brand</th>
                <th>Gender</th>
                <th>Price</th>
                <th>Image</th>
                <th>Size</th>
                <th>Type</th>
                <th>Material</th>
                <th>Color</th>
                <th>Return</th>
                <th>Action</th>
            </tr>
            <%
                int i = 0;
                String sel = "select * from tbl_footwear f inner join tbl_footwearbrand fb on f.ftwrbrnd_id=fb.ftwrbrnd_id where sh_id='"+session.getAttribute("sid")+"'";
                ResultSet rs = con.selectCommand(sel);
                while (rs.next()) {
                    i++;
            %>
            <tr>
                <td><%=i%></td>
                <td><%=rs.getString("ftwr_ctgry")%></td>
                <td><%=rs.getString("ftwrbrnd_nme")%></td>
                <td><%=rs.getString("ftwr_gndr")%></td>
                <td><%=rs.getString("ftwr_pr")%></td>
                <td><img src="../../Assets/Files/FootwearImage/<%=rs.getString("ftwr_img")%>" width="120" height="120"></td>
                <td><%=rs.getString("ftwr_size")%></td>
                <td><%=rs.getString("ftwr_isfrml")%></td>
                <td><%=rs.getString("ftwr_mtrl")%></td>
                <td><%=rs.getString("ftwr_colr")%></td>
                <td><%=rs.getString("ftwr_rtn")%></td>
                <td>
                    <a href="FootwearList.jsp?del=<%=rs.getString("ftwr_id")%>">Delete</a> |
                    <a href="FootwearGallery.jsp?id=<%=rs.getString("ftwr_id")%>">Add Gallery</a>
                    <a href="FootwearStock.jsp?id=<%=rs.getString("ftwr_id")%>">Add Stock</a>
                </td>
            </tr>
            <%
                }
            %>
        </table>
    </body>
</html>
