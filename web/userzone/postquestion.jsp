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
     <style>
         td,th{
             padding: 5px 0px 10px 0px ;
             text-align: center;
         }
         label{
             font-size: 20px;
         }
     </style>
     <script type="text/javascript" src="../bootstrap/js/bootstrap.min.js"></script>
   <title>JSP Page</title>
        <link href="../css/userstyle.css" rel="stylesheet"/>
        <link href="../css/menu.css" rel="stylesheet"/>
    </head>
    <body>
        <form action="usercode/postquestioncode.jsp" method="post">
            <div id="outer">
                <%@include file="userheader.jsp" %>
                <div id="user_container">
                    <table style="margin: 0 auto;width: 50%;">
                        <tr>
                            <td  colspan="2" style="text-align: center;font-size: 30px;color: blue;">
                                <u><i>Discussion Forum</i></u>
                            </td>
                        </tr>
                       
                        <tr>
                            <td><label>Enter the question: </label></td>
                            <td><textarea class="form-control" name="questiontext" required></textarea></td>
                        </tr>
                        <tr>
                            <input type="hidden" name="patientname" value="<%=name%>"/>
                            <td colspan="2"><center><input type="submit" class="btn btn-info btn-lg" value="Post Question"/></center></td>
                        </tr>
                    </table>
                    <br/><br/>
                    <table class="table" border="0" style="width: 100%; background-color: lightyellow;">
                        <tr>
                            <th>Q.Id</th>
                            <th>Question</th>
                            <th>Posted By</th>
                            <th>Posted Date</th>
                            <th>Post Answer</th>
                            <th>View Answer</th>
                        </tr>
                        <%
                            rs=db.selectQuery("select * from questions");
                            while(rs.next())
                            {
                        %>
                             <tr>
                                 <td><%=rs.getInt(1)%></td>
                                 <td><%=rs.getString(2)%></td>
                                 <td><%=rs.getString(3)%></td>
                                 <td><%=rs.getString(4)%></td>
                                 <td><a href="postanswer.jsp?qid=<%=rs.getInt(1)%>">Post</a></td>
                                 <td><a href="viewanswer.jsp?qid=<%=rs.getInt(1)%>">View</a></td>
                             </tr>
                        
                          <%}%>
                    </table>
                </div>
                <%@include file="userfooter.jsp" %>
            </div>
        </form>
    </body>
</html>
<% } %>