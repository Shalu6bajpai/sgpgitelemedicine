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
             table{
                 background-color: activecaption;
                 margin: 0 auto; 
                 border-radius: 3%;
                 margin-top: 20px;
                 box-shadow: 5px 5px 5px;
                
             }
             td{
                 padding: 10px;
             }
              table{
                 list-style-type: none;
                 font-size: 24px;
                 font-family: georgia;
                 text-align: justify;
                 padding: 5px;
                  color: rgba(143,25,75,0.9);
             }
            
         </style>
    </head>
    <body>
        <form action="usercode/appointmentcode.jsp" method="post"> 
            <div id="outer">        
            <%@include file="userheader.jsp" %>
                    
            <%
               
                String query1 = "select * from patientinfo where contactno='"+session.getAttribute("userid")+"'";
                rs=db.selectQuery(query1);
                String gender=null;
                String address=null;
                if(rs.next())
                {
                 
                   gender=rs.getString(2);
                   address=rs.getString(4);
                  
                }
                
            %>
            
            <div id="user_container">
                <h1>Please Fill the Following Appointment Form</h1>
                <table>
                    <tr>
                        <td><label>Name : </label></td>
                        <td><%=name%></td>
                    </tr>
                    <tr>
                        <td><label>Gender : </label></td>
                        <td><%=gender%></td>
                    </tr>
                    <tr>
                        <td><label>Address : </label></td>
                        <td><input type="text" name="address" class="form-control" required value="<%=address%>"/></td>
                    </tr>
                    <tr>
                        <td><label>Contact Number : </label></td>
                        <td><input type="text" name="contactno" class="form-control" readonly value="<%=session.getAttribute("userid")%>" /></td>
                    </tr>
                    <tr>
                        <td><label>Doctor's Name : </label></td>
                        <td><input type="text" name="doc" class="form-control" required /></td>
                    </tr>
                    <tr>   
                        <td><label>What is your problem? : </label></td>
                        <td><input type="text" name="problem" class="form-control" required /></td>
                    </tr> <tr><td><label>Date of Appointment:</label></td><td><input type="date" value="<%=dt%>" required name="date"/></td> </tr>
                  
                    <tr>
                        <td><label>Time Priority : </label></td>
                        <td><select class="fomr-control" name="h">
                                     <option value="none">hh</option>

<option value="10">10</option>
<option value="11">11</option>
<option value="12">12</option>
<option value="13">13</option>
<option value="14">14</option>
<option value="15">15</option>
<option value="16">16</option>
<option value="17">17</option>
<option value="18">18</option>

                                    </select>
                                    <select name="m">
                                        <option value="none">mm</option>
                                    <option value="00">00</option>
                                    <option value="20">20</option>
                                    <option value="40">40</option>                                    
                                    </select>
                                   </td>
                    </tr>
                     <tr>
                        <td colspan="2"> <center> <input type="submit" name="submit" value="Book Appointment" class="btn btn-info btn-lg" /> </center></td>
                   
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