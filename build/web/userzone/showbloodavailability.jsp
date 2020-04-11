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
         <title>UserZone</title>
          <style>
          
            td,th{
                /*padding: 10px 0px 10px 0px;*/
                text-align: center;
            }
            table :hover{
                background: rgba(0,0,0,0.1);
            }
             table td  a{
               color: darkred;
               
            }
          
        </style>
    </head>
    <body>
        <form> 
            <div id="outer">        
            <%@include file="userheader.jsp" %>
                    
            <div id="user_container">
                <h1 style="text-align: center;padding-top: 20px;">Blood Availability Information</h1>
                 <table class="table"  border="1" style="  width: 90%; margin: 40px auto; background-color: lightyellow;" >
                       <tr>
                        <th>S.No.</th>
                        <th>Blood Group</th>
                        <th>Available Units</th>
                        <th>Blood Bank Name</th>
                    </tr>
                    <%
                        String query1="select * from bloodavailability";
                        ResultSet rs1= db.selectQuery(query1);
                        int n=1;
                        while(rs1.next())
                        {
                        %>
                        <tr>
                            <td><h4><%=n++%></h4></td>
                            <td><h4><%=rs1.getString(2)%></h4></td>
                            <td><h4><%=rs1.getString(3)%></h4></td>
                            <td><h4><%=rs1.getString(4)%></h4></td>
                        </tr>
                        <%
                            }
%>  
                </table>
            </div>                    
                    
                    <%@include file="userfooter.jsp" %>
            </div>
        </form>
        </body>
</html>
<%}
%>