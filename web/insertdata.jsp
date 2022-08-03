<%-- 
    Document   : insertdata
    Created on : Dec 31, 2019, 8:36:54 AM
    Author     : siji4
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Insert Data</title>
    </head>
    <body>
        <%!
            String firstname, lastname, address, phoneNo;
            String sex, password;
            %>
            <%
               firstname = lastname = address = phoneNo = "";
               sex = ""; password = "";
               firstname = request,getParameter("firstname");
               lastname = request.getParameter("lastname");
               address = request.getParameter("address").trim();
               phoneNo = request.getParameter("phoneNo");
               sex = request.getParameter("sex");
               password = request.getParameter("password");
               if(firstname.equals("") || lastname.equals("") || address.equals("") || phoneNo.equals("") ||
                       sex.equals("") || password.equals(""))
               {
                   out.write("Empty fields, make sure you input data into all field before pushing the "
                            + "REGISTER button");
               }
               else
               {
                   String sql1 = "INSERT INTO registration VALUES('"+firstname+"','"+lastname+"', '"+address+"', "
                           + "'" +phoneNo+"', '"+sex+"', '"+password+"' )";
                   String sql2 = "INSERT INTO verification VALUES('"+firstname+"','"+password+"')";
                   try{
                       Connection conn = (Connection) DriverManager.getConnection("jdbc:msql://localhost/"
                                     + "wasteapp", "root","");
                       Statement st = (Statement) conn.createStatement();
                       st.executeUpdate(sql1);
                       st.executeUpdate(sql2);
                       conn.setAutoCommit(true);
                       conn.close();
                       response.sendRedirect("available.jsp");
                   }
                   catch(Exception e){
                       e.printStackTrace();}
               }
               %>
    </body>
</html>
