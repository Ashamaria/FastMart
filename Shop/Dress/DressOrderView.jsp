<%@page import="java.sql.ResultSet" %>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Dress Order View</title>
    </head>
    <body>
         
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
                <th>Action</th>
                
            </tr>
            <%
                int i = 0;
                String sel = "select * from tbl_dressbrand db inner join tbl_dress d on db.drsbrnd_id=d.drsbrnd_id inner join tbl_cart c on d.drs_id=c.drs_id  inner join tbl_booking b on b.booking_id=c.booking_id  where sh_id='"+session.getAttribute("sid")+"'";
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
               
                <td><%
                    if (rs.getString("booking_status").equals("1")) {
                        out.println("On Progress..");
                    } else if (rs.getString("booking_status").equals("2")) {
                        out.println("Order Picked...");
                    } else if (rs.getString("booking_status").equals("3")) {

                        if (rs.getString("cart_status").equals("2")) {
                    %>
                    Pickup Pending
                    <%
                    } else if (rs.getString("cart_status").equals("3")) {
                    %>
                    Completed
                    <%
                    } else {
                    %>

                    Order Delivered

                    <%
                            }
                        }

                    %></td>
            </tr>
            <%
                }
            %>
        </table>
    </body>
</html>
