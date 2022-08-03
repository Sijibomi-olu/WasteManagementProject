<%-- 
    Document   : adminprofile_getpickups
    Created on : Jan 11, 2020, 8:31:56 PM
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
        String email;
        Connection con;
        PreparedStatement st;
        ResultSet res;
        String av;
        int i;
        String text;
        %>
        <%
            text = request.getParameter("radio").toString();
            session.setAttribute("rad", text);
            username=session.getAttribute("adminname").toString();
            email=session.getAttribute("email1").toString();
            try
        {
            String sql = "SELECT * FROM pickups";
            con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost/"
                    + "wasteapp","root","");
            st =(PreparedStatement) con.prepareStatement(sql);
            res = st.executeQuery();
            i=3;
            while(res.next())
            {
               session.setAttribute("username"+i,res.getString("username"));
               session.setAttribute("sex"+i,res.getString("sex"));
               session.setAttribute("email"+i,res.getString("email"));
               session.setAttribute("phoneno"+i,res.getString("location"));
               session.setAttribute("location"+i,res.getString("phoneno"));
               session.setAttribute("address"+i,res.getString("address"));
               i=i+1;
            }
            session.setAttribute("count",i);
            response.sendRedirect("adminprofile.jsp");
            con.close();
        }
        catch (SQLException ex){
            out.write("An error occurred!!!"+ex.toString());
        }
        %>
        
    </body>
</html>
