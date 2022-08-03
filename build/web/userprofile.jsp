<%-- 
    Document   : userprofile
    Created on : Jan 10, 2020, 4:41:10 PM
    Author     : siji4
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%Class.forName("com.mysql.jdbc.Driver");%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Profile</title>
        <link rel="stylesheet" href="userprofilecss.css">
        <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
        <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
    </head>
    <body>  
    
        <header>
            <div class="wrapper">
            <div class="logo">
                <img src="Green Earth.png" alt="">
            </div>
            <ul class="nav-area">
            <li><a href='index.jsp'>Home</a></li>
            <li><a href='registration.jsp'>Registration</a></li>
            <li  class="active"><a href=''>Services</a></li>
            <li><a href='contactus.jsp'>Contact Us</a></li>
            <li><a href='login.jsp'>Logout</a></li>
            </ul>
        </div>
        </header>
        <!--</header>-->

    <main>
        <div class="profile-card">
                <div class="image-container">
                    <img src="avatar1.png" style="width: 20%">
                    <div class="title">
                        <strong style="text-transform: uppercase; font-size: 30px;"><%= session.getAttribute("username").toString() %></strong><br><hr>
                    </div>
                </div>
                    <div class="main-container">
                        <u>Email</u>: <%= session.getAttribute("email").toString() %><br><br>
                        <u>Phone Number</u>: <%= session.getAttribute("phoneno").toString() %><br><br>
                        <u>Sex</u>: <%= session.getAttribute("sex").toString() %><br><br>
                        <u>Points</u>: <%= session.getAttribute("points").toString() %><br><br>
                        <hr>
                        <a href="#profilebox"><input type="submit" value="REQUEST PICK-UP" id="submitbtn1"/></a>
                        
                    </div>
        </div>                   
        <section id="profilebox">
            <table  id="topDetails">
                <tbody>
                    <tr>
                        <td style="padding: 20px;" colspan="2">
                            <form id="pickup-form" action="pickups.jsp" method="POST">
                                <%
                                    if(null!=request.getAttribute("success"))
                                    {
                                        out.println(request.getAttribute("success"));
                                        out.write("<br>");
                                    }
                                %><br>
                                <div id="pickup-text">INDICATE YOUR NEXT PICK-UP LOCATION HERE</div><br><br>
                                    <input type="text" name="address" id="address" placeholder="Indicate Hall name,Office number or Residential address " required><br><br>
                                    <input type="radio" name="location" value="Hall Of Residence" class="radios" id="hof" required/><label style="font-size: 15px" for="hof">Hall Of Residence</label>
                                    <input type="radio" name="location" value="Office" class="radios" id="off" required/><label style="font-size: 15px" for="off">Office</label>
                                    <input type="radio" name="location" value="Residential Home" class="radios" id="rh" required/><label style="font-size: 15px" for="rh">Residential Home</label><br><br><br><br>
                                    <input type="submit" value="SUBMIT" id="submitbtn"/>
                                </form>
                            </td>
                        </tr>
                    </tbody>
                </table><br>
                <%
//                    out.write("<br><u style='position:relative;left:500px;font-size:20px;color:rgb(66,81,74)'>PRIZES YOU'VE EARNED</u><br>");
                    String points=session.getAttribute("points").toString();
                    if(Integer.parseInt(points)>0 && Integer.parseInt(points)<=10)
                    {
                        out.write("<br>");
                        out.write("<table border='0' id='prizes'>");
                        out.write("<tbody>");
                        out.write("<tr>");
                        out.write("<td id='td1' style='opacity:1'><img src='prize1.jpg'><br>A PACKET OF TISSUES</td>");
                        out.write("<td id='td2' style='opacity:1;color:red'>EARN MORE POINTS TO WIN!!!</td>");
                        out.write("<td id='td3' style='opacity:1;color:red'>EARN MORE POINTS TO WIN!!!</td>");
                        out.write("<td id='td4' style='opacity:1;color:red'>EARN MORE POINTS TO WIN!!!</td>");
                        out.write("<td id='td5' style='opacity:1;color:red'>EARN MORE POINTS TO WIN!!!</td>");
                        out.write("</tr>");
                        out.write("</tbody>");
                        out.write("</table>");
                    }
                    else if(Integer.parseInt(points)>10 && Integer.parseInt(points)<=20)
                    {
                        out.write("<br>");
                        out.write("<table border='0' id='prizes'>");
                        out.write("<tbody>");
                        out.write("<tr>");
                        out.write("<td id='td1' style='opacity:1'><img src='prize1.jpg'><br>A PACKET OF TISSUES</td>");
                        out.write("<td id='td2' style='opacity:1'><img src='prize2.jpg'><br>BRANDED BOOKS</td>");
                        out.write("<td id='td3' style='opacity:1;color:red'>EARN MORE POINTS TO WIN!!!</td>");
                        out.write("<td id='td4' style='opacity:1;color:red'>EARN MORE POINTS TO WIN!!!</td>");
                        out.write("<td id='td5' style='opacity:1;color:red'>EARN MORE POINTS TO WIN!!!</td>");
                        out.write("</tr>");
                        out.write("</tbody>");
                        out.write("</table>");
                    }
                    
                    else if(Integer.parseInt(points)>20 && Integer.parseInt(points)<=30)
                    {
                        out.write("<br>");
                        out.write("<table border='0' id='prizes'>");
                        out.write("<tbody>");
                        out.write("<tr>");
                        out.write("<td id='td1' style='opacity:1'><img src='prize1.jpg'><br>A PACKET OF TISSUES</td>");
                        out.write("<td id='td2' style='opacity:1'><img src=' prize2.jpg'><br>BRANDED BOOKS</td>");
                        out.write("<td id='td3' style='opacity:1'><img src=' prize3.jpg'><br>PACKET OF ENVELOPES</td>");
                        out.write("<td id='td4' style='opacity:1;color:red'>EARN MORE POINTS TO WIN!!!</td>");
                        out.write("<td id='td5' style='opacity:1;color:red'>EARN MORE POINTS TO WIN!!!</td>");
                        out.write("</tr>");
                        out.write("</tbody>");
                        out.write("</table>");
                    }
                    
                    else if(Integer.parseInt(points)>30 && Integer.parseInt(points)<=40)
                    {
                        out.write("<br>");
                        out.write("<table border='0' id='prizes'>");
                        out.write("<tbody>");
                        out.write("<tr>");
                        out.write("<td id='td1' style='opacity:1'><img src=' prize1.jpg'><br>A PACKET OF TISSUES</td>");
                        out.write("<td id='td2' style='opacity:1'><img src=' prize2.jpg'><br>BRANDED BOOKS</td>");
                        out.write("<td id='td3' style='opacity:1'><img src=' prize3.jpg'><br>PACKET OF ENVELOPES</td>");
                        out.write("<td id='td4' style='opacity:1'><img src=' prize4.jpg'><br>A PACKET OF BIROS</td>");
                        out.write("<td id='td5' style='opacity:1;color:red'>EARN MORE POINTS TO WIN!!!</td>");
                        out.write("</tr>");
                        out.write("</tbody>");
                        out.write("</table>");
                    }
                    
                    else if(Integer.parseInt(points)>40)
                    {
                        out.write("<br>");
                        out.write("<table border='0' id='prizes'>");
                        out.write("<tbody>");
                        out.write("<tr>");
                        out.write("<td id='td1' style='opacity:1'><img src=' prize1.jpg'><br>A PACKET OF TISSUES</td>");
                        out.write("<td id='td2' style='opacity:1'><img src=' prize2.jpg'><br>BRANDED BOOKS</td>");
                        out.write("<td id='td3' style='opacity:1'><img src=' prize3.jpg'><br>A PACKET OF ENVELOPES</td>");
                        out.write("<td id='td4' style='opacity:1'><img src=' prize4.jpg'><br>A PACKET OF BIROS</td>");
                        out.write("<td id='td5' style='opacity:1'><img src=' prize5.jpg'><br>A SET OF TOWELS</td>");
                        out.write("</tr>");
                        out.write("</tbody>");
                        out.write("</table>");
                    }
                    else{ out.write("YOU'VE NOT EARNED ANY PRIZE YET!!!");
                        out.write("<br>");
                        out.write("<table border='0' id='prizes'>");
                        out.write("<tbody>");
                        out.write("<tr>");
                        out.write("<td id='td1' style='opacity:1;color:red'>EARN MORE POINTS TO WIN!!!</td>");
                        out.write("<td id='td2' style='opacity:1;color:red'>EARN MORE POINTS TO WIN!!!</td>");
                        out.write("<td id='td3' style='opacity:1;color:red'>EARN MORE POINTS TO WIN!!!</td>");
                        out.write("<td id='td4' style='opacity:1;color:red'>EARN MORE POINTS TO WIN!!!</td>");
                        out.write("<td id='td5' style='opacity:1;color:red'>EARN MORE POINTS TO WIN!!!</td>");
                        out.write("</tr>");
                        out.write("</tbody>");
                        out.write("</table>");
                    }
                    
                %>
            </section>
        </main>
    </body>
</html>
