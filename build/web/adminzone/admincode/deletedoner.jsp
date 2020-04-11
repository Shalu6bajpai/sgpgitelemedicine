<%@page import="projectpackage.DbManager"%>
<%
String id=request.getParameter("id");
String query="delete from donateblood where id='"+id+"'";
DbManager db=new DbManager();
String msg=(db.executeNonQuery(query)==true)?"Donor is deleted":"Doner is not Deleted";
%>
<script>
    alert('<%=msg%>');
    window.location.href="../viewdoner.jsp";
</script>