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
             #user_container table{
                 list-style-type: none;
                 font-size: 24px;
                 font-family: georgia;
                 margin: 0 auto;
                 padding: 5px;
             }
             #user_container table a{
                 color: indigo;
                 text-decoration: none;
                 padding: 3px;
             }
             #user_container table a:hover{
                 color:red;
                 font-size: 30px;
             }
         </style>
    </head>
    <body>
        <form> 
            <div id="outer">        
            <%@include file="userheader.jsp" %>
                    
            <div id="user_container">
                <h1><u>List of Confirmed Appointments you Made</u></h1>
                <table class="table"  border="1" style="  width: 90%; margin: 40px auto; background-color: lightyellow;" >
                      <tr>
                        <th>S.No.</th>
                        <th>Doctor Name</th>
                        <th>Date</th>
                        <th>Time</th>
                        <th>Cancel</th>
                    </tr>
                    
                <%
                    String query2="select * from appointment where contactno='"+session.getAttribute("userid")+"'";
                    rs=db.selectQuery(query2);
                    int n=1;
                    while(rs.next())
                    { 
                    %>
               
                    <tr>  <td><%=n++%></td>
                        <td><%=rs.getString(3).toUpperCase()%></td>
                        <td><%=rs.getString(7)%></td>
                        <td><%=rs.getString(5)%>:<%=rs.getString(6)%></td>
                        <td><a href="usercode/cancelappointmentcode.jsp?id=<%=rs.getString(1)%>">Cancel</a></td>
                    </tr>
                
                        <%}%>
                </table>
            </div>                    
                    
                    <%@include file="userfooter.jsp" %>
            </div>
        </form>
        </body>
</html>
<%}
%>