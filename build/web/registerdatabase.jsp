<%-- 
    Document   : registerdatabase
    Created on : Jan 9, 2020, 10:04:35 PM
    Author     : siji4
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%Class.forName("com.mysql.jdbc.Driver");%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration Database</title>
    </head>
    <body>
        <%!
            String username;
            String password;
            String email;
            String phoneno;
            String sex;
            Connection con;
            Statement st;
            ResultSet res;
            String adminbox;
            int points;
        %>  
        <%
            username=password=email=phoneno=sex="";
            username = request.getParameter("username").trim();
            password = request.getParameter("password").trim();
            email = request.getParameter("email").trim();
            phoneno = request.getParameter("phoneno").trim();
            sex = request.getParameter("sex").trim();
            points=0;
            try     
            {
                String sql="INSERT INTO verification VALUES ('"+username+"','"+password+"','"+email+"','"+phoneno+"','"+sex+"','"+points+"')";
                con =(Connection) DriverManager.getConnection("jdbc:mysql://localhost/" + "wasteapp","root","");
                st = (Statement) con.createStatement();
                st.executeUpdate(sql);
                con.setAutoCommit(true);
                con.close();
                
                session.invalidate();
                request.setAttribute("success", "Registration Successful");
                RequestDispatcher rd = request.getRequestDispatcher("/registration.jsp");
                rd.forward(request, response);
                response.sendRedirect("registration.jsp");
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
