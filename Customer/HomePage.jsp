<%-- 
    Document   : HomePage
    Created on : 24 Sep, 2021, 3:25:34 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Customer HomePage</title>
        <style>
            h1{
                color: red;
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
        <h1>Welcome <%=session.getAttribute("cname")%></h1>
        <div class="topnav">
           <a class="active" href="./CustomerProfile.jsp">My Profile</a>&nbsp
            <a class="active" href="./EditProfile.jsp">Edit Profile</a>&nbsp
            <a class="active" href="./ChangePassword.jsp">Change Password</a>&nbsp
            <a  class="active" href="SearchDress.jsp">Dress Search</a>&nbsp
            <a class="active" href="SearchFootwear.jsp">Footwear Search</a>&nbsp
            <a class="active" href="SearchGadget.jsp">Gadget Search</a>&nbsp
            <a class="active" href="SearchUtensil.jsp">Utensil Search</a>&nbsp
            <a class="active" href="SearchGrocery.jsp">Grocery Search</a>&nbsp
            <a class="active" href="SearchShop.jsp">Search Shop</a>&nbsp
            <a class="active" href="MyCart.jsp">Cart</a>&nbsp
            <a class="active" href="ViewBookings.jsp">View Bookings</a>&nbsp
            <a class="active" href="../Guest/Login.jsp">Logout</a>
        </div>   
    </body>
</html>
