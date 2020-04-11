<%@page import="projectpackage.DbManager"%>
<%
String id=request.getParameter("id");
String query="delete from complain where id='"+id+"'";
DbManager db=new DbManager();
String msg=(db.executeNonQuery(query)==true)?"Complain is deleted":"Complain is not Deleted";
%>
<script>
    alert('<%=msg%>');
    window.location.href="../admincomplain.jsp";
</script>