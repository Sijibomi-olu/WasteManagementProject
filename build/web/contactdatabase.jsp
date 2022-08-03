<%-- 
    Document   : contactdatabase
    Created on : Jan 13, 2020, 9:28:29 PM
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
            String username;
            String password;
            String email;
            String phoneno;
            String sex;
            String Message;
            Connection con;
            Statement st;
            ResultSet res;
            String adminbox;
            int points;
        %>  
        <%
            Message=username=email="";
            Message = request.getParameter("Message").trim();
            username = request.getParameter("username").trim();
            email = request.getParameter("email").trim();
            try     
            {
                String sql="INSERT INTO contactus VALUES ('"+Message+"','"+username+"','"+email+"')";
                con =(Connection) DriverManager.getConnection("jdbc:mysql://localhost/" + "wasteapp","root","");
                st = (Statement) con.createStatement();
                st.executeUpdate(sql);
                con.setAutoCommit(true);
                con.close();
                
                session.invalidate();
                request.setAttribute("success", "Message Sent!!!");
                RequestDispatcher rd = request.getRequestDispatcher("/contactus.jsp");
                rd.forward(request, response);
                response.sendRedirect("contactus.jsp");
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
