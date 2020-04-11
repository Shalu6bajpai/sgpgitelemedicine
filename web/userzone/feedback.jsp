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
          <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
       
    <link rel="stylesheet" type="text/css" href="../bootstrap/css/bootstrap.min.css" />
     
     <link rel="stylesheet" type="text/css" href="bootstrap/css/font-awesome.min.css" />
     <script type="text/javascript" src="../bootstrap/js/jquery.js"></script>
     <script type="text/javascript" src="../bootstrap/js/bootstrap.min.js"></script> 
     <link href="../css/userstyle.css" rel="stylesheet"/>
        <link href="../css/menu.css" rel="stylesheet" />
         <title>UserZone</title>
    </head>
    <body>
        <form action="usercode/feedbackcode.jsp"> 
            <div id="outer">        
            <%@include file="userheader.jsp" %>
                    
            <div id="user_container">
                <table style="width: 50%; margin: 10px auto;">
                    <tr>
                        <td colspan="2"><h1 style="text-align: center;">Give Your Feedback here</h1></td>
                    </tr>
                    <tr>
                        <td><label>Enter Feedback Text:</label></td><input type="hidden" value="<%=name%>" name="patientname"/>
                    <td><textarea name="feedbacktext" class="form-control" rows="7" cols="30" placeholder="Maximum Limit is 500 characters" required ></textarea></td>
                <br></tr>
                <tr>
                    <td colspan="2"><center>
                    <input type="submit" value="Submit Feedback" style="margin-top: 20px;" class="btn btn-info btn-lg"/></center>
                    </td>
                </tr>
                </table>
            </div>                    
                    
                    <%@include file="userfooter.jsp" %>
            </div>
        </form>
        </body>
</html>
<%}
%>