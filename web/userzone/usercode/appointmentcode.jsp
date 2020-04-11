<%-- 
    Document   : userhome
    Created on : 21 Jul, 2018, 5:32:54 PM
    Author     : Rajan Nishu Krishna
--%>

<%
  if(session.getAttribute("userid")==null)
  response.sendRedirect("../../login.jsp");
  else
  {
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
       
    <link rel="stylesheet" type="text/css" href="../../bootstrap/css/bootstrap.css" />
     
     <link rel="stylesheet" type="text/css" href="../../bootstrap/css/font-awesome.min.css" />
     <script type="text/javascript" src="../bootstrap/js/jquery.js"></script>
     <script type="text/javascript" src="../bootstrap/js/bootstrap.min.js"></script>
   <link href="../../css/userstyle.css" rel="stylesheet"/>
        <link href="../../css/menu.css" rel="stylesheet" />
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
      
        <form action="../userhome.jsp"> 
            <div id="outer">        
            
                
                <%@page import="java.sql.ResultSet"%>
<%@page import="projectpackage.DbManager"%>
<div id="user_menu">
    
    <ul>
        <li><a href="../userhome.jsp">Home</a></li>
        <li><a href="../postquestion.jsp">Discussion</a></li>
        <li><a href="../complain.jsp">Complain</a></li>
        <li><a href="../showbloodavailability.jsp">Blood Availability</a></li>
        <li><a href="../feedback.jsp">Feedback</a></li>
        <li><a href="../changepassword.jsp">Change Password</a></li>
        <li><a href="../logout.jsp">Logout</a></li>
    
    </ul>
</div>
<div id="user_header">
    <div id="user_logo"><img src="../../images/logo.png" height="150px" width="150px"/></div>
    <div id="sitetitle">
        SGPGI TELEMEDINE
    </div>
</div>
<div id="info">
    <div id="date">
        <%
            DbManager db=new DbManager();
          String  dt=db.getDate();
        %>
        Today's Date : <%=dt%>
        
    </div>
        <div id="name">
           <%
                String query="select patientname from patientinfo where contactno='"+session.getAttribute("userid")+"'";
                ResultSet rs= db.selectQuery(query);
                String name="";
                if(rs.next())
                {
               name=rs.getString(1);
                }          
             
            %>
            Welcome <%=name%>
           
        </div>
</div>     
                
                
                
            <%
                String doctor=request.getParameter("doc");
                doctor=doctor.toLowerCase();
                String date=request.getParameter("date");
                String h=request.getParameter("h");
                
                String m=request.getParameter("m");
                
                String contactno=request.getParameter("contactno");
                String problem=request.getParameter("problem");
                int confirm=1;
            String query1="select * from appointment where doctor='"+doctor+"'";
             rs=db.selectQuery(query1);
             while(rs.next())
             {
              if(rs.getString(3).equals(doctor)&&rs.getString(7).equals(date)&&rs.getString(5).equals(h)&&rs.getString(6).equals(m))
                confirm=0;  
             }
             if(confirm==0)
             {
               out.print("<script>alert('Sorry , your Appointment Could not be Confirmed. The doctor is not free in that time slot');</script>");
                    
             }
             else
             { String query2="insert into appointment(contactno,doctor,problem,hh,mm,date,confirm) values('"+contactno+"','"+doctor+"','"+problem+"','"+h+"','"+m+"','"+date+"','"+1+"')";
                if(db.executeNonQuery(query2))
                {   
                    out.print("<script>alert('Your Appointment is confirmed!!');</script>");
                }
                else
                {
                  out.print("<script>alert('Due to some technical Error , appointment is not confirmed. Please reach to us offline');</script>");
                 confirm=0; 
                }
            } 
            

                %>
            <div id="user_container">
                <h1>Here Are Your Appointment Details</h1>
                 <table>
                    <tr>
                        <td><label>Your Name : </label></td>
                        <td><%=name%></td>
                    </tr>
                  
                   
                    <tr>
                        <td><label>Your  Doctor : </label></td>
                        <td><h2><%=doctor.toUpperCase()%></h2></td>
                    </tr>
                    <tr>   
                        <td><label>Your Problem : </label></td>
                        <td><h2><%=problem%></h2></td>    
                    </tr
                    >
                    <tr>
                        <td><label>Date:</label></td>
                        <td>
                            <h3><% if(confirm==0)
                        {
                            
                          out.print("Not Scheduled");
                        }
                        else
                        {
                          out.print(date);
                                }%></h3>
                        </td>
                    </tr>
                    <tr>
                        
                        <td><label>Time : </label></td>
                        <td><h2><%
                                if(confirm==1)
                                {
                                   int  h1=Integer.parseInt(h);
                                if(h1>12)
                                    out.print(h1-12+" : "+m+" PM");
                                else
                                    out.print(h1+" : "+m +"AM");
                                }
                                else
                                {
                                    out.print("Your Appointment is not Confirmed"); 
                                 }
                                %></h2></td>
                    </tr>
                    <tr><td><label>Appointment Status:</label></td>
                        <td><h3><% if(confirm==0)
                        {
                            
                          out.print("Failed. Your Appointment request is not made because Doctor is not Free in that time slot. Please Don't Pay Us");
                        }
                        else
                        {
                          out.print("Success. Your Appointment request is confirmed. Please complete the Payment now to finally confirm your Appointment ");
                                }%></h3></td></tr>
                     <tr>
                        <td colspan="2"> <center> <input type="submit" name="pay" value="Back" class="btn btn-info btn-lg" /> </center></td>
                   
                    </tr>
                </table>
            </div>                    
                    
                    <%@include file="../userfooter.jsp" %>
            </div>
        </form>
        </body>
</html>
<%}
%>