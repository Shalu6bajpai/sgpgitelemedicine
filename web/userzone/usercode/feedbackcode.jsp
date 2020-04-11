<%@page import="projectpackage.DbManager"%>
<%
String patientname=request.getParameter("patientname");
String feedbacktext=request.getParameter("feedbacktext");
DbManager db=new DbManager();
String feedbackdt=db.getDate();
String query="insert into feedback(givenby,feedback_message,feedback_date) values('"+patientname +"','"+feedbacktext +"','"+ feedbackdt+"')";
if(db.executeNonQuery(query))
{
  out.print("<script>alert('Feedback is Submitted');location.href='../feedback.jsp';</script>");
}
else
{
    out.print("<script>alert('Feedback is not Submitted');location.href='../feedback.jsp';</script>");

}
%>