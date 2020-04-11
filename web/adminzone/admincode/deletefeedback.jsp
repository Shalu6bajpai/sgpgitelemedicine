<%@page import="projectpackage.DbManager"%>
<%
String id=request.getParameter("id");
String query="delete from feedback where id='"+id+"'";
DbManager db=new DbManager();
String msg=(db.executeNonQuery(query)==true)?"Feedback is deleted":"Feedback is not Deleted";
%>
<script>
    alert('<%=msg%>');
    window.location.href="../adminfeedback.jsp";
</script>