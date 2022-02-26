<%@page import="java.sql.ResultSet" %>
<jsp:useBean class="DB.ConnectionClass" id="con"> </jsp:useBean>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>change password</title>
    </head>
    <body>
        <%
            if(request.getParameter("btn_change")!=null)
            {
                String db ="";
                String cur=request.getParameter("txt_password");
                String ne=request.getParameter("txt_newpassword");
                String re=request.getParameter("txt_repassword");
               
               
                String sel="select * from tbl_shop where sh_id='"+session.getAttribute("sid")+"'";
                ResultSet rs=con.selectCommand(sel);
                if(rs.next())
                {  
                  db=rs.getString("sh_ownrpass");
                }
               
               if(db.equals(cur))
               {
                 
                    if(ne.equals(re))
                    {
                        String up="update tbl_customer set sh_pass='"+ne+"' where cust_id='"+session.getAttribute("sid")+"'";
                         con.executeCommand(up);            
                        response.sendRedirect("EditProfile.jsp");
                    }
                    else
                    {
                        %>
                        <script type="text/javascript">
                                alert("Password Mismatch");
                        </script>
                       <%
                    }
               }
               else
               {
                    %>
                     <script type="text/javascript">
                             alert("Incorrect Current Password");
                     </script>
                    <%
                   
               }
             
            }    
        %>
           
        <form method="post" name="form1">
            <table border="1" cellpadding="10" style="border-collapse: collapse;" align="center">
                <tr>
                    <td>Old Password</td>
                    <td><input type="password" name="txt_password" id="txt_password" required=""></td>
                </tr>
                <tr><td>New Password</td>
                    <td><input type="password" name="txt_newpassword" id="txt_newpassword" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" required=""></td>
                </tr>
                <tr><td>Retype Password</td>
                    <td><input type="password" name="txt_repassword" id="txt_repassword" required=""></td>
                </tr>
                <tr>
                     <tr>
                    <td colspan="2" align="center">
                        <input type="submit" name="btn_change" id="btn_save" value="Save">
                       
                    </td>
                </tr>
                </table>
        </form>
      </body>
   
</html>
