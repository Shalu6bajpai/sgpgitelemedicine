<%-- 
    Document   : adminhome
    Created on : 21 Jul, 2018, 5:33:31 PM
    Author     : Rajan Nishu Krishna
--%>
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
             padding: 15px 30px 10px 0px ;
             text-align: center;
         }
         label{
             font-size: 20px;
         }
         input[type="password"]{
             border: 2px outset blueviolet;
         }
     </style>
        <title>Admin PAssword Change Portal</title>
    </head>
    <body>
        <form action="admincode/changeadminpwdcode.jsp" method="post">
            <div id="a_outer">
                <%@include file="adminheader.jsp" %>
                <div id="a_container">
                      <h1 style="text-align: center; padding-top: 20px;"s>Change Your Password Here</h1>
                <table style="width: 70%;margin: 30px auto; background-color: rgba(255,255,255,0.6);">
                    <tr>
                        <td>
                            <label>  Enter Old Password: </label>
                        </td>
                        <td>
                            <input type="password" class="form-control" name="oldpass" required/><br>
                        </td>
                    </tr>
                    <tr>
                        <td>
                        <label>  Enter New Password: </label>
                        </td>
                        <td>
                            <input type="password" class="form-control" name="newpass" required/><br>
                            
                        </td>
                    </tr>
                    <tr>
                        <td>
                     <label>  Confirm New Password: </label>
                        </td>
                        <td>
                            <input type="password" class="form-control" name="confirmpass" required/><br>
                        </td>
                    </tr>
                    <tr>
                        
                        <td colspan="2">
                    <center>
                        <input type="submit" value="Channge Password" class="btn btn-info btn-lg" name="submit" required/><br>
                    </center>
                        </td>
                    </tr>
                    
                </table>
                </div>
                <%@include file="adminfooter.jsp" %>
            </div>
        </form>
        
    </body>
</html>
<%}
%>