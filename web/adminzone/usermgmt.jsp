<%-- 
    Document   : adminhome
    Created on : 21 Jul, 2018, 5:33:31 PM
    Author     : Rajan Nishu Krishna
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="projectpackage.DbManager"%>
<%
   if(session.getAttribute("adminid")==null)
   response.sendRedirect("../login.jsp");
   else
   {
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
       
    <link rel="stylesheet" type="text/css" href="../bootstrap/css/bootstrap.min.css" />
     
     <link rel="stylesheet" type="text/css" href="../bootstrap/css/font-awesome.min.css" />
     <script type="text/javascript" src="../bootstrap/js/jquery.js"></script>
     <script type="text/javascript" src="../bootstrap/js/bootstrap.min.js"></script>
   <link href="../css/adminstyle.css" rel="stylesheet" />
        <link href="../css/admin_menu.css" rel="stylesheet" />
        
        <title>JSP Page</title>
        <style>
          
            td,th{
                padding: 20px 0px 20px 0px;
                text-align: center;
            }
            table :hover{
                background: rgba(0,0,0,0.1);
            }
             table td  a{
               color: darkred;
               
            }
            table td  a:hover{
                font-size: 20px;
                color: red;
                text-decoration: none;
                background: none;
            }
        </style>
    </head>
    <body>
        <form>
            <div id="a_outer">
                <%@include file="adminheader.jsp" %>
                <div id="a_container">
                    <h1 style="text-align: center;padding-top:20px;color: navy"><u>User Management</u></h1>  
                    <table border="1"  style="  width: 100%; margin: 40px auto; background-color:lightyellow" >
                        <tr>
                            <th>S.No.</th>
                            <th>Patient Name</th>
                            <th>Gender</th>
                            <th>Father's Name</th>
                            <th>Address 1</th>
                            <th>Address 2</th>
                            <th>Disease</th>
                            <th>Referred By</th>
                            <th>Hospital Name</th>
                            <th>Contact Number</th>
                            <th>Email Address</th>
                            <th>Adhar Number</th>
                            <th>Password</th>
                            <th>Status</th>
                            <th>Registered Date</th>
                            <th>Delete</th>
                            
                        </tr>
                        <%
                            String query="select * from patientinfo";
                            DbManager db=new DbManager();
                            ResultSet rs=db.selectQuery(query);
                            int n=1;
                            while(rs.next())
                            {
                            %>
                            <tr>
                                <td><h5><%=n%></h5></td>
                                <td><h5><%=rs.getString(1)%></h5></td>
                                <td><h5><%=rs.getString(2)%></h5></td>
                                <td><h5><%=rs.getString(3)%></h5></td>
                                <td><h5><%=rs.getString(4)%></h5></td>
                                <td><h5><%=rs.getString(5)%></h5></td>
                                <td><h5><%=rs.getString(6)%></h5></td>
                                <td><h5><%=rs.getString(7)%></h5></td>
                                <td><h5><%=rs.getString(8)%></h5></td>
                                <td><h5><%=rs.getString(9)%></h5></td>
                                <td><h5><%=rs.getString(10)%></h5></td>
                                <td><h5><%=rs.getString(11)%></h4></td>
                                <td><h5><%=rs.getString(12)%></h5></td>
                                <td><h5><%=rs.getString(13)%></h5></td>
                                <td><h5><%=rs.getString(14)%></h5></td>
                               
                                <td><a href="admincode/deleteuser.jsp?id=<%=rs.getString(9)%>">Delete</a></td>
                            </tr>
                            <%
                               n++; }
                             %>
                    </table>
                </div>
                <%@include file="adminfooter.jsp" %>
            </div>
        </form>
        
    </body>
</html>
<%}
%>