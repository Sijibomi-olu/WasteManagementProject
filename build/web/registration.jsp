<%-- 
    Document   : registration
    Created on : Dec 27, 2019, 12:20:03 PM
    Author     : siji4
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%Class.forName("com.mysql.jdbc.Driver");%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration</title>
        <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
        <link href="C:\Users\siji4\Documents\ALPHA 300 Level\CSC313 (Object Oriented Programming)\WasteManagementProject\web\css\bootstrap-4.3.1" rel="stylesheet">
        <link rel="stylesheet" href="registrationcss.css">
        <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
    </head>
    <body>
        <form name="RegForm" action="registerdatabase.jsp" method="POST">
        <div class="container">
            <div class="row">
                <div class="col-md-10 offset-md-2">
                    <div class="row">
                        <div class="col-md-5 register-left">
                            <h3>Join Us</h3>
                            <a href="index.jsp"><button type="button" class="btn btn-primary"> About Us </button></a>
                        </div>
                        <div class="col-md-7 register-right">
                            <h2>Register Here</h2>
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
                                    <input type="text" class="form-control" placeholder="Username" name="username">
                                </div>
                                <div class="form-group">
                                    <input type="password" class="form-control" placeholder="Password" name="password">
                                </div>
                                <div class="form-group">
                                    <input type="email" class="form-control" placeholder="Email" name="email">
                                </div>
                                <div class="form-group">
                                    <input type="text" class="form-control" placeholder="Phone Number" name="phoneno">
                                </div>                                
                                <div class="radiobox">
                                    <label>Sex:</label>
                                    <i class="fa fa-male" aria-hidden="true"></i>
                                    <input type ="radio" placeholder="Sex" name="sex" value="Male" required id="male"><label for="male">Male</label>
                                    <i class="fa fa-female" aria-hidden="true"></i>
                                    <input type ="radio" placeholder="Sex" name="sex" value="Female" required id="fmale"><label for="fmale">Female</label>
                                </div>  
                                <!--<input class ="btn" type="submit" name="" value="Sign In">-->
                                <input type="submit" class="btn btn-primary" value="Register">
                                <br>
                                <br>                                
                                <div>
                                <li><a style="color: green" href='login.jsp'>Back To Sign In</a></li>
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
