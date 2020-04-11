<%-- 
    Document   : userhome
    Created on : Jul 21, 2018, 5:36:20 PM
    Author     : LENOVO
--%>
<%
    if(session.getAttribute("userid")==null)
    {
        response.sendRedirect("../login.jsp");
    }
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
    <title>JSP Page</title>
        <link href="../css/userstyle.css" rel="stylesheet"/>
         <style>
         td,th{
             padding: 5px 0px 10px 0px ;
             text-align: center;
         }
         label{
             font-size: 20px;
         }
     </style>
        <link href="../css/menu.css" rel="stylesheet"/>
    </head>
    <body>
        <form action="usercode/postanswercode.jsp" method="post">
            <div id="outer">
                <%@include file="userheader.jsp" %>
                <div id="user_container">
                    <table style="width: 50%; margin: 0 auto;">
                        <tr>
                            <td colspan="2" rowspan="2" style="color: blue;text-align: center;font-size: 30px;">
                               Discussion Forum
                            </td>
                        </tr>
                        <tr>
                            <td><label>Enter your answer:</label></td>
                            <td><textarea class="form-control" cols="35" rows="10" name="answertext" required=""></textarea></td>
                        </tr>
                        <tr>
                            <input type="hidden"  name="patientname" value="<%=name%>"/>
                                <%
                                    int qid=Integer.parseInt(request.getParameter("qid"));
                                %>
                                <input type="hidden" name="qid" value="<%=qid%>"/>
                            
                                <td colspan="2"><center><input class="btn btn-info btn-lg" type="submit" value="Post Answer"/></center></td>
                        </tr>
                    </table>
                </div>
                <%@include file="userfooter.jsp" %>
            </div>
        </form>
    </body>
</html>
<% } %>