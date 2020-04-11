<%@page import="projectpackage.DbManager"%>
<%
  String notificationtext=request.getParameter("notificationtext");
  DbManager db=new DbManager();
  String posteddt=db.getDate();
  String query="insert into notification (notificationtext,posteddt) values('"+notificationtext+"','"+posteddt+"')";
if(db.executeNonQuery(query))
{
    out.print("<script>alert('Notification is Saved');window.location.href='../adminhome.jsp';</script>");
}
else
{
    out.print("<script>alert('Notification is Not Saved');window.location.href='../adminhome.jsp';</script>");
}
%>