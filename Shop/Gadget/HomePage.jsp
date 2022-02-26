<%-- 
    Document   : HomePage
    Created on : 25 Sep, 2021, 10:28:54 AM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Gadget Homepage</title>
    </head>
    <body>
        <h1>Welcome Gadget Shop <%=session.getAttribute("sname")%></h1>
        <ul>
            <li><a href="../Profile.jsp">My profile</a></li>
            <li><a href="../EditProfile.jsp">Edit profile</a></li>
            <li> <a href="../ChangePassword.jsp">Change Password</a></li>
            <li><a href="../Gadget/Gadget.jsp">Add Gadget</a></li>
            <li><a href="../Gadget/GadgetList.jsp">Gadget List</a></li>
        </ul>
    </body>
</html>