<%@page import="projectpackage.DbManager"%>
<%
String id=request.getParameter("id");
String query="delete from enquiry where id='"+id+"'";
DbManager db=new DbManager();
String msg=(db.executeNonQuery(query)==true)?"Enquiry is deleted":"Enquiry is not Deleted";
%>
<script>
    alert('<%=msg%>');
    window.location.href="../enquirymgmt.jsp";
</script>