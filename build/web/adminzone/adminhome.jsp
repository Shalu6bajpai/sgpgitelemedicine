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
             #t :hover{
                background: rgba(0,0,0,0.1);
            }
             #t td  a{
               color: darkred;
               
            }
            #t td  a:hover{
                font-size: 20px;
                color: red;
                text-decoration: none;
                background: none;
            }
            label{
                font-size: 22px;
            }
            #row ul li{
                list-style-type: none;
                display: inline-block;
                padding-right: 20px;
                font-family: sans-serif;
                font-size: 18px;
            }
            #row ul li a{
                color: #0399D8;
            }            
        </style>
        <title>Admin Home Page</title>
    </head>
    <body>
        <form action="admincode/savenotification.jsp" method="post">
            <div id="a_outer">
                <%@include file="adminheader.jsp" %>
                <div id="a_container"><div id="row"><ul>
                            <li> <a href="viewdoner.jsp">View Blood Donate Requests</a></li>
                            <li><a href="hospitalstaff.jsp">Manage Hospital Staff</a></li>
                            <li><a href="doctors.jsp">Doctor's Details Management </a></li>
                        </ul></div><br>
                    <h1 style="color:blue; text-align: center;margin-top: 20px;">Notification Management</h1><br>
                    <table border="0" style="margin: 0 auto; width: 50%;" cellpadding="10">
                        <tr>
                            <td><label>Enter Notification:</label></td>
                            <td><textarea rows="5" cols="20" maxlength="500" placeholder="Maximum 500 characters allowed" class="form-control" name="notificationtext" required></textarea></td>
                        </tr>
                        <tr>
                                     
                            <td colspan="2"><center><br> <input class="btn btn-info btn-lg" type="submit" value="Submit"/></center></td>
                      
            </tr>
                    </table>
                    <br/><br/>
                    <table id="t" class="table"  border="1" style="width:90% ;background: lightgreen; margin: 0 auto;">
                        <tr>
                            <th>Id</th>
                            <th>Notification</th>
                            <th>Posted Date</th>
                            <th>Delete</th>
                        </tr> 
                        <%
                          DbManager db=new DbManager();
                          ResultSet  rs=db.selectQuery("select * from notification");
                          while(rs.next())
                          {
                        
                        %>
                        <tr>
                            <td><%=rs.getInt(1)%></td>
                            <td><%=rs.getString(2)%></td>
                            <td><%=rs.getString(3)%></td>
                            <td><a href="admincode/deletenotification.jsp?id=<%=rs.getInt(1)%>">Delete</a></td>
                            


                        </tr>
                        <%
                            }
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