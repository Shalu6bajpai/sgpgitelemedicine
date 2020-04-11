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
    <style>
          
            td,th{
                padding: 20px 0px 20px 0px;
                text-align: center;
            }
/*            table :hover{
                background: rgba(0,0,0,0.1);
            }
             table td  a{
               color: darkred;
               
            }
            table td  a:hover{
                font-size: 20px;
                color: red;
                text-decoration: none;
                background: none;
            }*/
h1{
    margin: 0px;
    padding: 0px;
}
        </style>
        <link href="../css/admin_menu.css" rel="stylesheet" />
        
        <title>JSP Page</title>
    </head>
    <body>
        <form action="admincode/bloodavailabilitycode.jsp" method="post">
            <div id="a_outer">
                <%@include file="adminheader.jsp" %>
                <div id="a_container">
                    <h1 style="text-align: center; padding: 20px"><i>Blood Bank Details Submit here</i></h1><br><br>
                    <table style="margin:0 auto; ">
                        
                        <tr>
                            <td><label>Select Blood Group:-</label></td>
                            <td><select name="bg" class="form-control">
                                    <option value="none">Select Blood Group</option>
                                    <option value="A">A </option>
                                    <option value="B">B</option>
                                    <option value="AB">AB</option>
                                    <option value="O">O</option>
                                    <option value="O+">O+</option>
                                    <option value="O-">O-</option>
                                    <option value="others">Others</option>
                                </select></td>
                        </tr>
                       <tr>
                            <td><label>Available Units :-</label></td>
                            <td><input type="number" class="form-control" name="au" required/></td>
                        </tr>
                    <tr>
                            <td><label>Enter Blood Bank Name:-</label></td>
                            <td><input type="text" class="form-control" name="bbn" required/></td>
                        </tr>
                        <tr>
                            <td colspan="2"><center><input type="submit" name="submit" value="Submit Blood Details" class="btn btn-info btn-lg"/></center></td>
                        </tr>
                    </table>
                </div>
                <%@include file="adminfooter.jsp" %>
            </div>
        </form>
        
    </body>
</html>
<%}
%>