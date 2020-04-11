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
        <link href="../css/menu.css" rel="stylesheet"/>
    </head>
    <body>
        <form>
            <div id="outer">
                <%@include file="userheader.jsp" %>
                <div id="user_container">
                    <table class="table" border="1" style="width: 100%;">
                        <tr>
                            <th>Answer</th>
                            <th>Answered By</th>
                            <th>Posted Date</th>
                        </tr>
                        <%
                            int qid=Integer.parseInt(request.getParameter("qid"));
                            query="select answertext,answeredby,answereddt from answers where qid='"+qid+"'";
                            rs=db.selectQuery(query);
                            while(rs.next())
                            {
                        %>
                        <tr>
                            <td><%=rs.getString(1)%></td>
                            <td><%=rs.getString(2)%></td>
                            <td><%=rs.getString(3)%></td>
                        </tr>
                        <% } %>
                    </table>
                </div>
                <%@include file="userfooter.jsp" %>
            </div>
        </form>
    </body>
</html>
<% } %>