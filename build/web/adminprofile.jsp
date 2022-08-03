<%-- 
    Document   : adminprofile
    Created on : Jan 10, 2020, 4:41:31 PM
    Author     : siji4
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%Class.forName("com.mysql.jdbc.Driver");%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Profile</title>
        <link rel="stylesheet" href="adminprofilecss.css">
        <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
        <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
    </head>
    <body>

        <!--        Start of top panel design-->
        <header>
        
            <div class="wrapper">
            <div class="logo">
                <img src="Green Earth.png" alt="">
            </div>
            <ul class="nav-area">
            <li><a href='index.jsp'>Home</a></li>
            <li class="active"><a href='adminprofile.jsp'>Admin-Profile</a></li>
            <li><a href='contactus.jsp'>Contact Us</a></li>
            <li><a href='login.jsp'>Logout</a></li>
            </ul>
        </div>            
        </header>
        <!--end of top panel design-->



        <main>
            <section id="profilebox" style="margin: auto;width: 50%;margin-top: 100px;">
                <table border="0">
                    <tbody>
                        <tr>
                            <td><img alt="" id="adminavatar" src="avatar.png"></td>
                            <td style="padding-left: 20px;">
                                <strong style="text-transform: uppercase;font-size: 30px;"><%= session.getAttribute("username").toString() %></strong><br><hr><br>
                                <u>Sex</u>:  <%= session.getAttribute("sex1").toString() %><br><br>
                                <u>Birthday</u>:  <%= session.getAttribute("dob1").toString() %><br><br>
                                <u>E-mail</u>:  <%= session.getAttribute("email1").toString() %><br><br>
                                <u>Phone number</u>:  <%= session.getAttribute("phoneno1").toString() %><br><br>
                                <u>Position</u>: Admin<br><br>
                        </tr>
                    </tbody>
                </table>
            </section>
    <!--                <div id="cornered"></div>
                <u style='position:relative;left:550px;font-size:20px;color:rgb(66,81,74)'>SUBMITTED PICK-UPS</u><br>
                <div id='cornered2'></div><br>-->

                <section>
                    <table id="pickup-table">
                        <thead>
                            <tr>
                                <th colspan="3">
                        <form action="adminprofile_getpickups.jsp" method="POST">
                            <input type="text" name="radio" value="view"  style="width: 0px;background: transparent;color: transparent;">
                            <input id="viewpickups" type="submit" value="CLICK TO VIEW / UPDATE SUBMITTED PICK-UPS">
                        </form>
                                </th>
                            </tr>
                        </thead>
                    </table><br>
                    <div class="stuff1">
                        <%!String s;%>
                        <%if(session.getAttribute("rad")!=null){int j=3;%>
                        Total Pick-Ups: <%=Integer.parseInt(session.getAttribute("count").toString())-3%>
                        <%while(j< Integer.parseInt(session.getAttribute("count").toString()))
                        { if (session.getAttribute("sex"+j) == "Female"){s="his";}else{s="her";}%>
                    </div>

                        <article id="pickups">
                            <table border="0" style="width: 100%" >
                    <tbody>
                        <!--pick-up number-->
                        <tr style="text-align: center;font-size: 20px;background-image: linear-gradient(to right,#09df09, #15493d);color: white;"><td colspan="4" style="border: 2px; border-radius: 10px;"><i>PICK-UP <%=j-2%></i></td></tr>
                        <!--PICK-UP NUMBER end-->

                        <!--user info-->
                        <tr style="">
                            <td><img alt="" id="avatar2" src="avatar.png"></td>
                            <td id="details">
                                <strong style="text-transform: uppercase;font-size: 20px;"><%= session.getAttribute("username"+j)%></strong><br><hr>
                                <u>Sex:</u><%= session.getAttribute("sex"+j)%><br><br>
                                <u>E-mail:</u>  <%= session.getAttribute("email"+j)%><br><br>
                                <u>Phone number:</u>  <%= session.getAttribute("phoneno"+j)%><br><br>
                            </td>
                        <!--USER INFO end-->

                        <!--LOCATION-->
                        <td id="locationbox">
                            <form action="adminprofile_approve.jsp" method="POST" id="weight">
                                <input type="text" value="<%= session.getAttribute("username"+j)%>" name="username" style="opacity: 0"><br>
                                <i>Address: <input id="info" type="text" value="<%= session.getAttribute("address"+j)%>" name="address" readonly=""><br> 
                                    Location: <input id="info" type="text" value="<%= session.getAttribute("location"+j)%>" name="location" readonly=""><br>
                                    Enter Weight Of Pickup Here: <input id="weightEnter" type="text" placeholder="(kg)" name="weight" required></i><br><br>
                                    <input type="submit" value="APPROVE" name="approvePickUp" class="approvePickup">
                            </form>
                                </td>
                        </tr>
                        <!--LOCATION END-->
                    </tbody>
                </table>
                        </article><br>
                        <%j=j+1;}}%>
                </section>
        </main>
    </body>
</html>
