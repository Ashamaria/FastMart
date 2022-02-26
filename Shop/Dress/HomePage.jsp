<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>DressHomePage</title>
    </head>
    <body style="background-image: url('../Assets/Template/Main/images/customer.jpg');background-repeat: no-repeat;background-size:100% 600%;">
        <h1>Welcome Textile Shop <%=session.getAttribute("sname")%></h1>
        <ul>
            <li><a href="../Profile.jsp">My profile</a></li>
            <li><a href="../EditProfile.jsp">Edit profile</a></li>
            <li> <a href="../ChangePassword.jsp">Change Password</a></li>
            <li><a href="../Dress/Dress.jsp">Add Dress</a></li>
            <li><a href="../Dress/DressList.jsp">Dress List</a></li>
            <li><a href="../Dress/DressOrderView.jsp">Dress Order View</a></li>
        </ul>
       
    </body>
</html>
