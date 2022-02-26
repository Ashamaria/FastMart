<%-- 
    Document   : GadgetGallery
    Created on : 18 Sep, 2021, 9:26:00 PM
    Author     : hp
--%>
<%@page import="java.sql.ResultSet" %>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>GadgetGallery</title>
    </head>
    <body>
        <%
                if(request.getParameter("del")!=null)
                {
                    String str2="delete from tbl_gadgetgallery where gdglry_id='"+request.getParameter("del")+"'";
                    con.executeCommand(str2);
                    response.sendRedirect("GadgetList.jsp");
                }
                %>
         <form method="post" enctype="multipart/form-data" action="../../Assets/UploadAction/GadgetGalleryUploadAction.jsp">
           <table border="1" cellpadding="10" style="border-collapse: collapse;" align="center">
               <tr>
                   <td>GadgetImage</td>
                   <td>
                       <input type="file" name="txt_gadgetimage" required="">
                       <input type="hidden" name="txt_id" value='<%=request.getParameter("id")%>' >
                   </td>
               </tr>
               <tr>
                   <td>Description</td>
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
                String selQry = "select * from tbl_gadgetgallery where gd_id='" + request.getParameter("id") + "'";
                ResultSet rs = con.selectCommand(selQry);
                while (rs.next()) {
                    i++;
            %>
           
                <td>
                    <img src="../../Assets/Files/GadgetImage/<%=rs.getString("gdglry_img")%>" width="120" height="120"><br>
                    <%=rs.getString("gdglry_cptn")%>
                 
                    <a href="GadgetGallery.jsp?del=<%=rs.getString("gdglry_id")%>">Delete</a>
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
