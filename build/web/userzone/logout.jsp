<%-- 
    Document   : logout
    Created on : 22 Jul, 2018, 5:09:58 PM
    Author     : Rajan Nishu Krishna
--%>
<%    
session.invalidate();
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
              <title>Logging You out</title>
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
    <body onload="logout()" >
        <script>
            function logout()
            {
                window.history.forward();
                window.setTimeout("window.location.href='../login.jsp'",1000);
            }
        </script>
        <img src="../images/logout.gif" height="100px" width="100px" id="bg"/>
   
    </body>
</html>
