<%@page import="projectpackage.DbManager"%>
<%
String id=request.getParameter("id");
String query="delete from patientinfo where contactno='"+id+"'";
DbManager db=new DbManager();
String msg=(db.executeNonQuery(query)==true)?"User is deleted":"User is not Deleted";
%>
<script>
    alert('<%=msg%>');
    window.location.href="../usermgmt.jsp";
</script>