<%@page import="projectpackage.DbManager"%>
<%
  
String id=request.getParameter("id");

String query="delete from appointment where id='"+id+"'";
DbManager db=new DbManager();

if(db.executeNonQuery(query))
{
    out.print("<script>alert('Appointment is cancelled Successfully');window.location.href='../cancelappointment.jsp';</script>");
       }
else
     out.print("<script>alert('This Appointment is not cancelled');winodw.location.href='../cancelappointment.jsp';");


%>