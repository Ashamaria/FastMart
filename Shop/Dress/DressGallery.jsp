<%@page import="java.sql.ResultSet" %>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>DressGallery</title>
    </head>
    <body>
         <%
            if(request.getParameter("id")!=null)
            {
                String str2="delete from tbl_dressgallery where drsglry_id='"+request.getParameter("id")+"'";
                con.executeCommand(str2);
                response.sendRedirect("DressList.jsp");
            }
         %>
        <form method="post" enctype="multipart/form-data" action="../../Assets/UploadAction/DresGalleryUpload.jsp">
            <table border="1" cellpadding="10" style="border-collapse: collapse;" align="center">
                <tr>
                    <td>DressImage</td>
                    <td>
                        <input type="file" name="file_dressimage" required="">
                        <input type="hidden" name="txt_id" value='<%=request.getParameter("did")%>'>
                    </td>
                </tr>
                <tr>
                    <td>Caption</td>
                    <td><textarea COLS="30" ROWS="5" name="description" required=""></textarea></td>
                </tr>
                <tr align="center">
                    <td colspan="2"><input type="submit" name="btn_save" id="btn_save" value="Save"> <input type="reset" name="btn_cancel" id="btn_cancel" value="Cancel"></td>
                </tr>
            </table>
        </form>
                    <br>
                    <hr>
        <table align='center'>
             <tr>
            <%
                int i = 0;
                String selQry = "select * from tbl_dressgallery where drs_id='" + request.getParameter("did") + "'";
                ResultSet rs = con.selectCommand(selQry);
                while (rs.next()) {
                    i++;
            %>
           
                <td>
                    <img src="../../Assets/Files/DressImage/<%=rs.getString("drsglry_img")%>" width="120" height="120"><br>
                    <%=rs.getString("drsglry_cptn")%>
                    <a href="DressGallery.jsp?id=<%=rs.getString("drsglry_id")%>">Delete</a>
                </td>
               
           
            <%
            if(i==3)
            {
                out.println("</tr><tr>");
                i=0;
            }
                }
            %>
        </table>
    </body>
</html>
