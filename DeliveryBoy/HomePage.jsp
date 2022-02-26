<%-- 
    Document   : HomePage
    Created on : 24 Sep, 2021, 3:50:41 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Deliveryboy Homepage</title>
        <style>
            h1{
                color:white;
            }
            .topnav {
    background-color: #333;
    overflow: hidden;
}

            .topnav a.active {
 
  color: white;
  font-size: 20px;
}
        </style>
    </head>
    
    <body style="background-image: url('../Assets/Template/Main/images/customer.jpg');background-repeat: no-repeat;background-size:100% 600%;" >
        <div class="topnav">
        <h1>Welcome <%=session.getAttribute("dname")%></h1>&nbsp
        <a class="active" href="./DeliveryBoyProfile.jsp">My Profile</a>&nbsp
         <a class="active" href="./EditProfile.jsp">Edit Profile</a>&nbsp
         <a class="active" href="./ChangePassword.jsp">Change Password</a>&nbsp
         <a class="active" href="./ViewOrders.jsp">Order</a>&nbsp
         <a class="active" href="../Guest/Login.jsp">Logout</a>&nbsp
        </div>
    </body>
</html>
