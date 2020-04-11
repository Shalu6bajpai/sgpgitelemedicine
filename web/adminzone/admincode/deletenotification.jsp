<%@page import="projectpackage.DbManager"%>
<%

String id=request.getParameter("id");
String query="delete from notification where id='"+id+"'";
DbManager db=new DbManager();
if(db.executeNonQuery(query))
{
  out.print("<script>alert('Notification Deleted Successfully');location.href='../adminhome.jsp';</script>");
  
}
else
      out.print("<script>alert('Notification Could Not Have Been Deleted');location.href='../adminhome.jsp';</script>");

 %>