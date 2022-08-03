<%-- 
    Document   : verification
    Created on : Dec 27, 2019, 11:53:46 AM
    Author     : siji4
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%Class.forName("com.mysql.jdbc.Driver");%>
<!DOCTYPE html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Verification</title>
    </head>
    <body>
        <%!
            String usernameStored;
            String passwordStored;
            Connection con;
            PreparedStatement st;
            ResultSet res;
            String adminbox;
        %>  
        <%
            adminbox="";
            String adminbox = request.getParameter("adminbox");
            if(adminbox!=null){
            try{
                usernameStored = "";
                passwordStored = "";
                String usernameEntered =request.getParameter("username").trim();
                String passwordEntered =request.getParameter("password").trim();
                String sql="SELECT * FROM admin WHERE (username ='"+usernameEntered+"' " 
                             + " AND password ='"+passwordEntered+"')";
                boolean verify=false;
                con =(Connection) DriverManager.getConnection("jdbc:mysql://localhost/" + "wasteapp","root","");
                st = (PreparedStatement) con.prepareStatement(sql);
                res = st.executeQuery();
                boolean recordExists = res.absolute(1);
                if (recordExists == true)
                    verify=true;
                
                if (verify==true){
                    session.setAttribute("adminname",usernameEntered);
                    session.setAttribute("pssword",passwordEntered);
                    response.sendRedirect("adminprofile_get.jsp");}
                else{
                    session.setAttribute("err","You're not an admin");
                    response.sendRedirect("login.jsp");
        }
                con.close();
            }
            
                catch (SQLException ex) {
                out.write("An error occured: " + ex.toString());
                }
            catch (Exception e) {
		e.printStackTrace();
	}}
        else
        {
            try     {
                usernameStored = "";
                passwordStored = "";
                String usernameEntered =request.getParameter("username").trim();
                String passwordEntered =request.getParameter("password").trim();
                String sql="SELECT * FROM verification WHERE (username ='"+usernameEntered+"' " 
                             + " AND password ='"+passwordEntered+"')";
                boolean verify=false;
                con =(Connection) DriverManager.getConnection("jdbc:mysql://localhost/" + "wasteapp","root","");
                st = (PreparedStatement) con.prepareStatement(sql);
                res = st.executeQuery();
                boolean recordExists = res.absolute(1);
                if (recordExists == true)
                    verify=true;
                
                if (verify==true)
                {
                    session.setAttribute("username",usernameEntered);
                    session.setAttribute("password",passwordEntered);
                    response.sendRedirect("userprofile_get.jsp");
                }
                else{
                    session.setAttribute("err","Invalid Username or Password");
                    response.sendRedirect("login.jsp");
        }
                con.close();
            }
            
                catch (SQLException ex) {
                out.write("An error occured: " + ex.toString());
                }
            catch (Exception e) {
		e.printStackTrace();
	}
        }
        
        %>  
    </body>
