<%-- 
    Document   : userprofil_get
    Created on : Jan 10, 2020, 5:28:34 PM
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
            username=session.getAttribute("username").toString();
            password=session.getAttribute("password").toString();
            try
        {
            String sql = "SELECT * FROM verification WHERE (username='"+username+"'"
            + "AND password='"+password+"')";
            con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost/" + "wasteapp","root","");
            st =(PreparedStatement) con.prepareStatement(sql);
            res = st.executeQuery();
            while(res.next())
            {
               session.setAttribute("username",res.getString("username"));
               session.setAttribute("email",res.getString("email"));
               session.setAttribute("phoneno",res.getString("phoneno"));
               session.setAttribute("sex",res.getString("sex"));
               session.setAttribute("points",res.getInt("points"));
            }
            con.close();
            response.sendRedirect("userprofile.jsp");
        }
        catch (SQLException ex){
            out.write("An error occurred!!!"+ex.toString());
        }
        %>
    </body>
</html>
