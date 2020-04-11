<%-- 
    Document   : userhome
    Created on : 21 Jul, 2018, 5:32:54 PM
    Author     : Rajan Nishu Krishna
--%>

<%
  if(session.getAttribute("userid")==null)
  response.sendRedirect("../login.jsp");
  else
  {
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
       
    <link rel="stylesheet" type="text/css" href="../bootstrap/css/bootstrap.css" />
     
     <link rel="stylesheet" type="text/css" href="../bootstrap/css/font-awesome.min.css" />
     <script type="text/javascript" src="../bootstrap/js/jquery.js"></script>
     <script type="text/javascript" src="../bootstrap/js/bootstrap.min.js"></script>
   <link href="../css/userstyle.css" rel="stylesheet"/>
        <link href="../css/menu.css" rel="stylesheet" />
         <title>Welcome to Virtual Hopital</title>
         <style>
             #user_container h1{
                 text-align: center;
                 padding-top: 10px;
                 background-color: lightgoldenrodyellow;
             }
             #user_container{
                 background-color: activecaption;
             }
             #user_container ol li{
                 list-style-type: none;
                 font-size: 24px;
                 font-family: georgia;
                 text-align: center;
                 padding: 5px;
             }
             #user_container ol li a{
                 color: indigo;
                 text-decoration: none;
                 padding: 3px;
             }
         </style>
    </head>
    <body>
        <form> 
            <div id="outer">        
            <%@include file="userheader.jsp" %>
                    
            <div id="user_container">
                <h1>Payment will be made at Hospital Counter before Your Appointment.<br> At this level your appointment
                    is Confirmed. Please be on time, it will automatically be canceled after 20 minutes. </h1>
               
            </div>                    
                    
                    <%@include file="userfooter.jsp" %>
            </div>
        </form>
        </body>
</html>
<%}
%>