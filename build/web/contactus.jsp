<%-- 
    Document   : contactus
    Created on : Jan 13, 2020, 1:14:59 PM
    Author     : siji4
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%Class.forName("com.mysql.jdbc.Driver");%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Contact Us</title>
        <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
        <link href="C:\Users\siji4\Documents\ALPHA 300 Level\CSC313 (Object Oriented Programming)\WasteManagementProject\web\css\bootstrap-4.3.1" rel="stylesheet">
        <link rel="stylesheet" href="contactuscss.css">
        <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
    </head>
    <body>
        <form name="RegForm" action="contactdatabase.jsp" method="POST">
        <div class="container">
            <div class="row">
                <div class="col-md-10 offset-md-2">
                    <div class="row">
                        <div class="col-md-5 register-left">
                            <h3>Join Us</h3>
                            <a href="index.jsp"><button type="button" class="btn btn-primary"> Home Page </button></a>
                        </div>
                        <div class="col-md-7 register-right">
                            <h1>Contact Us</h1>
                            <label style="color: green">
                            <%
                                if(request.getAttribute("success")!= null)
                                {
                                    out.println(request.getAttribute("success"));
                                }
                            %>
                            </label>
                            <div class="register-form">
                                <div class="form-group">
                                    <input type="text" class="form-control" placeholder="Name" name="username">
                                </div>
                                <div class="form-group">
                                    <input type="email" class="form-control" placeholder="Email" name="email">
                                </div>
                                <div style="" class="form-group1">
                                    <label>Message:</label>
                                    <textarea name="Message"></textarea>
                                </div>                                   
                                <!--<input class ="btn" type="submit" name="" value="Sign In">-->
                                <input type="submit" class="btn btn-primary" value="Submit">
                                <br>
                                <br>                                
                                <div>
                                <!--<li><a style="color: greenyellow" href='login.jsp'>Back To Log In</a></li>-->
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>             
        </form>
    </body>
</html>
