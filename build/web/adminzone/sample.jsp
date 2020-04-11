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
        
        <title>JSP Page</title>
    </head>
    <body>
        <form>
            <div id="a_outer">
                <%@include file="adminheader.jsp" %>
                <div id="a_container">
                    
                </div>
                <%@include file="adminfooter.jsp" %>
            </div>
        </form>
        
    </body>
</html>
<%}
%>