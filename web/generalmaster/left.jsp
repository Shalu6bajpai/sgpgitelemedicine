<%@page import="java.sql.ResultSet"%>
<%@page import="projectpackage.DbManager"%>
<div id="left"><h1 style="text-align: center;">Notifications</h1>
    <marquee direction="down" scrollamount="3" height="600px" style="margin-top: 10px; text-align: center;">
    <%
        DbManager db=new DbManager();
        ResultSet rs=db.selectQuery("select * from notification");
        while(rs.next())
        {
        %>
        <p><b>Notification:&emsp;</b>
         <%=rs.getString(2)%> </p>
        <p><b>Posted Date:</b>&emsp;
        <%=rs.getString(3)%> </p>
        <hr/>
        <%}%>
    </marquee>
</div>