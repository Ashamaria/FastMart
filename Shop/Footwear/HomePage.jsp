<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>FootwearHomePage</title>
    </head>
    <body>
        <h1>Welcome Footwear Shop <%=session.getAttribute("sname")%></h1>
         <ul>
            <li><a href="../Profile.jsp">My profile</a></li>
            <li><a href="../EditProfile.jsp">Edit profile</a></li>
            <li> <a href="../ChangePassword.jsp">Change Password</a></li>
            <li><a href="../Footwear/Footwear.jsp">Add Footwear</a></li>
            <li><a href="../Footwear/FootwearList.jsp">Footwear List</a></li>
        </ul>
    </body>
</html>
