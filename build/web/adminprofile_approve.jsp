<%-- 
    Document   : adminprofile_approve
    Created on : Jan 11, 2020, 8:31:13 PM
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
        String address;
        String location;
        Connection con,con1;
        Statement st,st2;
        PreparedStatement st1;
        ResultSet res;
        String av;
        int i;
        String weight1;
        int weight,new_points,initial_points;
        %>
        <%
//            UPDATE `customers` SET `points`='10' WHERE username = 'q'
//            SELECT `points` FROM `customers` WHERE username = 'mojisola'
            username=request.getParameter("username").toString().trim();
            address=request.getParameter("address").toString().trim();
            location=request.getParameter("location").toString().trim();
            weight1 = request.getParameter("weight").toString();
            weight = Integer.parseInt(weight1);
            try{
                String sql1="SELECT points FROM verification WHERE username = '"+username+"'";
                con1 = (Connection) DriverManager.getConnection("jdbc:mysql://localhost/"
                    + "wasteapp","root","");
                st1 =(PreparedStatement) con1.prepareStatement(sql1);
                res = st1.executeQuery();
//                initial_points = res.getInt("points");
                while(res.next()){
                    initial_points=res.getInt("points");
                    if(weight>0 && weight <=10)
                {
                    new_points=initial_points+5;
                }
                else if(weight>10 && weight <=20)
                {
                    new_points=initial_points+10;
                }
                else if(weight>20 && weight <=30)
                {
                    new_points=initial_points+15;
                }
                else if(weight>30 && weight <=40)
                {
                    new_points=initial_points+20;
                }
                else if(weight>40 && weight <=50)
                {
                    new_points=initial_points+25;
                }
                else
                {
                    new_points=initial_points+30;
                }
                }
                String sql2 = "UPDATE verification SET points ='"+new_points+"' "
                + "WHERE username = '"+username+"'";
                st2 =(Statement) con1.createStatement();
                st2.executeUpdate(sql2);
                con1.close();
            }
            catch(Exception x){
                out.write("error"+x.toString());
            }
//            "SELECT * FROM admins WHERE (username='"+usernameEntered+"'"
//            + "AND password='"+passwordEntered+"')";
            weight1 = request.getParameter("approvePickUp").toString();
            if (weight1 != null ){
          
            try
        {
            String sql = "DELETE FROM pickups WHERE (username='"+username+"'"
            + "AND address='"+address+"')";
            con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost/"
                    + "wasteapp","root","");
            st =(Statement) con.createStatement();
            st.executeUpdate(sql);
            con.close();
            response.sendRedirect("adminprofile.jsp");
        }
        catch (SQLException ex){
            out.write("An error occurred!!!"+ex.toString());
        }
        }
        %>
        
    </body>
</html>
