<%-- 
    Document   : logout
    Created on : 24 Jul, 2018, 6:47:46 PM
    Author     : Rajan Nishu Krishna
--%>
<%
    session.invalidate();
    %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Logout</title>
        <script>
            function logout()
            {
                window.history.forward();
                window.setTimeout("window.location.href='../index.jsp'",1000);
                
            }
        </script>
        <style>
           #bg{
               /*text-align: center;*/
                margin-top: 250px;
                margin-left: 50%;
            }
            body{
                background-image:url('../images/bg.jpg');
            }
        </style>
    </head>
    <body onload="logout()">
        <img src="../images/logout.gif" height="100px" width="100px" id="bg"/>
    </body>
</html>

