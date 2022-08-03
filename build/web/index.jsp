<%-- 
    Document   : index
    Created on : Dec 26, 2019, 5:30:38 PM
    Author     : siji4
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%Class.forName("com.mysql.jdbc.Driver");%>
<!DOCTYPE html>                
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Green Earth</title>
    <link rel="stylesheet" href="indexcss.css">
</head>
<body>
    <header>
        <div class="wrapper">
            <div class="logo">
                <img src="Green Earth2.png" alt="">
            </div>
            <ul class="nav-area">
            <li class="active"><a href='index.jsp'>Home</a></li>
            <li><a href='registration.jsp'>Registration</a></li>
            <li><a href=''>Services</a></li>
            <li><a href='contactus.jsp'>Contact Us</a></li>
            <li><a href='login.jsp'>Login</a></li>
            </ul>
        </div>
        <div class="welcome-text">
            <h1>Green Earth</h1>
            <a href="login.jsp">Get Green Now</a>
        </div>
    </header>
     
    </body>
</html>