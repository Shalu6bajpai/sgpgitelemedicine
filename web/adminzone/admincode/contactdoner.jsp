<%@page import="projectpackage.SmsSender"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="projectpackage.DbManager"%>
<%
String id=request.getParameter("id");
String query="select cn,name from donateblood where id='"+id+"'";
DbManager db=new DbManager();

ResultSet  rs=db.selectQuery(query);
if(rs.next())
{
  String msg="Dear "+rs.getString("name")+", you have made blood donation request. We are happy to inform you that a patient "
          + "at our hospital is looking for the same blood group, so we have contacted you. Please reach the hospital as soon as "
          + "possible or contact us through any medium. Thankyou, we appreciate your effotrs";  
 SmsSender s=new SmsSender();
 s.SendSms(rs.getString("cn"), msg);
 out.print("<script>window.alert('A message is sent to mobile number given by the doner regarding need of his bloodgroup');window.location.href='../viewdoner.jsp';</script>");
 }
else
{
    out.print("<script>window.alert('Doner Could not have been contacted due to technical issue');window.location.href='../viewdoner.jsp';</script>");
    
}
%>
