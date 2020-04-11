<%@page import="projectpackage.DbManager"%>
<%
String bloodgroup=request.getParameter("bg");
String availableunits=request.getParameter("au");
String bloodbankname=request.getParameter("bbn");
String query="insert into bloodavailability(bloodgroup,availableunits,bloodbankname) values('"+bloodgroup +"','"+availableunits +"','"+ bloodbankname+"')";
DbManager db=new DbManager();
if(db.executeNonQuery(query))
{
    out.print("<script>alert('Details are successfully Submitted !!!'); window.location.href='../bloodavailability.jsp';</script>");
}
else
{
    out.print("<script>alert('Details could not have been Submitted !!!'); window.location.href='../bloodavailability.jsp';</script>");
}

%>