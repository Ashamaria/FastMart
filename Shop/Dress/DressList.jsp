<%@page import="java.sql.ResultSet" %>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Dress List</title>
    </head>
    <body>
         <%
            if(request.getParameter("del")!=null)
            {
                String str2="delete from tbl_dress where drs_id='"+request.getParameter("del")+"'";
                con.executeCommand(str2);
            }
         %>
        <table border="1" align='center'>
            <tr>
                <th>Sl.No</th>
                <th>Category</th>
                <th>Brand</th>
                <th>Gender</th>
                <th>Size</th>
                <th>Attire</th>
                <th>Material</th>
                <th>Price</th>
                <th>Color</th>
                <th>Desc</th>
                <th>Condition</th>
                <th>Image</th>
                <th>Return</th>
                <th>Action</th>
            </tr>
            <%
                int i = 0;
                String sel = "select * from tbl_dress d inner join tbl_dressbrand db on d.drsbrnd_id=db.drsbrnd_id where sh_id='"+session.getAttribute("sid")+"'";
                ResultSet rs = con.selectCommand(sel);
                while (rs.next()) {
                    i++;
            %>
            <tr>
                <td><%=i%></td>
                <td><%=rs.getString("drs_ctgry")%></td>
                <td><%=rs.getString("drsbrnd_nme")%></td>
                <td><%=rs.getString("drs_gndr")%></td>
                <td><%=rs.getString("drs_size")%></td>
                <td><%=rs.getString("drs_isfrml")%></td>
                <td><%=rs.getString("drs_mtrl")%></td>
                <td><%=rs.getString("drs_pr")%></td>
                <td><%
               
                if(rs.getString("drs_colr").equals("Multicolors"))
                {
                    out.println("Multicolors("+ rs.getString("drs_multi")+")");
                }
                else
                {
                    out.println(rs.getString("drs_colr"));
                }
               
                %></td>
               
                <td><%=rs.getString("drs_desc")%></td>
                <td><%=rs.getString("drs_cndn")%></td>
                <td><img src="../../Assets/Files/DressImage/<%=rs.getString("drs_img")%>" width="120" height="120"></td>
                <td><%=rs.getString("drs_rtn")%></td>
                <td>
                    <a href="DressList.jsp?del=<%=rs.getString("drs_id")%>">Delete</a> 
                    <a href="DressGallery.jsp?did=<%=rs.getString("drs_id")%>">Add Gallery</a>
                     <a href="DressStock.jsp?did=<%=rs.getString("drs_id")%>">Add Stock</a>
                </td>
            </tr>
            <%
                }
            %>
        </table>
    </body>
</html>
