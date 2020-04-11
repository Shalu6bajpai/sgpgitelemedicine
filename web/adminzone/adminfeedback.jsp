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
        
        <title>JSP Page</title>
    </head>
    <body>
        <form>
            <div id="a_outer">
                <%@include file="adminheader.jsp" %>
                <div id="a_container">
                     <h1 style="text-align: center; padding-top:20px;color: navy">Feedback Management</h1>  
                     <table class="table"  border="1" style="  width: 90%; margin: 40px auto; background-color:lightyellow" >
                        <tr>
                            <th>S.No.</th>
                            <th>Given By</th>
                            <th>Feedback Text</th>
                            <th>Date</th>
                            <th>Delete</th>
                          
                        </tr>
                        <%
                            String query="select * from feedback order by id desc";
                            DbManager db=new DbManager();
                            ResultSet rs=db.selectQuery(query);
                            int n=1;
                            while(rs.next())
                            {
                            %>
                            <tr>
                                <td><h4><%=n%></h4></td>
                                <td><h4><%=rs.getString(2)%></h4></td>
                                <td><h4><%=rs.getString(3)%></h4></td>
                                <td><h4><%=rs.getString(4)%></h4></td>
                               
                                <td><h4><a href="admincode/deletefeedback.jsp?id=<%=rs.getInt(1)%>">Delete</a></h4></td>
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