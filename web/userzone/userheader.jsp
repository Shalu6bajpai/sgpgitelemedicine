<%@page import="java.sql.ResultSet"%>
<%@page import="projectpackage.DbManager"%>
<div id="user_menu">
    
    <ul>
        <li><a href="userhome.jsp">Home</a></li>
        <li><a href="postquestion.jsp">Discussion</a></li>
        <li><a href="complain.jsp">Complain</a></li>
        <li><a href="showbloodavailability.jsp">Blood Availability</a></li>
        <li><a href="feedback.jsp">Feedback</a></li>
        <li><a href="changepassword.jsp">Change Password</a></li>
        <li><a href="logout.jsp">Logout</a></li>
    
    </ul>
</div>
<div id="user_header">
    <div id="user_logo"><img src="../images/logo.png" height="150px" width="150px"/></div>
    <div id="sitetitle">
        SGPGI TELEMEDINE
    </div>
</div>
<div id="info">
    <div id="date">
        <%
            DbManager db=new DbManager();
          String  dt=db.getDate();
        %>
        Today's Date : <%=dt%>
        
    </div>
        <div id="name">
           <%
                String query="select patientname from patientinfo where contactno='"+session.getAttribute("userid")+"'";
                ResultSet rs= db.selectQuery(query);
                String name="";
                if(rs.next())
                {
               name=rs.getString(1);
                }          
             
            %>
            Welcome <%=name%>
           
        </div>
</div>     