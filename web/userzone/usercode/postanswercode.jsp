<%@page import="projectpackage.DbManager"%>
<%
    String answertext=request.getParameter("answertext");
    String patientname=request.getParameter("patientname");
    DbManager db=new DbManager();
    String posteddt=db.getDate();
    int qid=Integer.parseInt(request.getParameter("qid"));
    String query="insert into answers(answertext,answeredby,answereddt,qid) values('"+answertext+"','"+patientname+"','"+posteddt+"','"+qid+"')";
    if(db.executeNonQuery(query))
    {
        out.print("<script>alert('Answer is posted successfully');window.location.href='../postquestion.jsp';</script>");
    }
    else
    {
        out.print("<script>alert('Answer is not posted');window.location.href='../postquestion.jsp';</script>");
    }
%>