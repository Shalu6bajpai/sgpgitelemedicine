<%@page import="projectpackage.DbManager"%>
<%
String patientname=request.getParameter("patientname");
String subject=request.getParameter("subject");
String complaintext=request.getParameter("complaintext");
DbManager db=new DbManager();
String complaindt=db.getDate();
String query="insert into complain(name,subject,complaintext,complaindt) values('"+patientname +"','"+subject +"','"+complaintext +"','"+ complaindt+"')";
if(db.executeNonQuery(query))
{
  out.print("<script>alert('Complain is Submitted. We will contact you soon');location.href='../complain.jsp';</script>");
}
else
{
    out.print("<script>alert('Complain is not Submitted');location.href='../complain.jsp';</script>");

}
%>