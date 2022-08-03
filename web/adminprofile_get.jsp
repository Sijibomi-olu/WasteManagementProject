<%-- 
    Document   : adminprofile_get
    Created on : Jan 11, 2020, 12:49:53 PM
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
        Connection con;
        PreparedStatement st;
        ResultSet res;
        String av;
        %>
        <%
            username=session.getAttribute("adminname").toString();
            password=session.getAttribute("pssword").toString();
            try
        {
            String sql = "SELECT * FROM admin WHERE (username='"+username+"'"
            + "AND password='"+password+"')";
            con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost/" + "wasteapp","root","");
            st =(PreparedStatement) con.prepareStatement(sql);
            res = st.executeQuery();
            while(res.next())
            {
               session.setAttribute("username",res.getString("username"));
               session.setAttribute("email1",res.getString("email1"));
               session.setAttribute("dob1",res.getString("dob1"));
               session.setAttribute("phoneno1",res.getString("phoneno1"));
               session.setAttribute("sex1",res.getString("sex1"));
            }
            con.close();
            response.sendRedirect("adminprofile.jsp");
        }
        catch (SQLException ex){
            out.write("An error occurred!!!"+ex.toString());
        }
        %>
        
    </body>
</html>
