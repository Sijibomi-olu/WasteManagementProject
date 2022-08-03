<%-- 
    Document   : pickups
    Created on : Jan 11, 2020, 12:49:24 AM
    Author     : siji4
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%Class.forName("com.mysql.jdbc.Driver");%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%!
            String username,email,phonenumber,sex,location,address;
        %>
        <%
            username=location=email=address=phonenumber=sex="";
            username = session.getAttribute("username").toString();
            sex = session.getAttribute("sex").toString();
            email = session.getAttribute("email").toString();
            location = request.getParameter("location").trim();
            phonenumber = session.getAttribute("phoneno").toString();
            address = request.getParameter("address").trim();
            try
                {
                    String sql = "INSERT INTO pickups VALUES ('"+username+"','"+sex+"',"
                                + "'"+email+"','"+phonenumber+"','"+location+"','"+address+"')";
        //                    String sql1 = "INSERT INTO logindetails VALUES ('"+username+"','"+password+"')";                        
                                Connection con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost/"
                                        + "wasteapp","root","");
                                Statement st =(Statement) con.createStatement();
                                out.write("tyui");
                                st.executeUpdate(sql);
                                out.write("tyui");
                                con.setAutoCommit(true);
                                con.close();

//                                session.invalidate();
                                request.setAttribute("success", "*Pick-Up Successfully sent*");
                                RequestDispatcher rd= request.getRequestDispatcher("/userprofile.jsp");
                                rd.forward(request, response);
                                response.sendRedirect("userprofile.jsp");
                }
                
            catch (SQLException ex) {
                out.write("An error occured: " + ex.toString());
            }
            catch (Exception e) {
		e.printStackTrace();
            }
        %>
    </body>
</html>
