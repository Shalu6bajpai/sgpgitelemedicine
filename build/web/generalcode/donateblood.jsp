<%@page import="projectpackage.SmsSender"%>
<%@page import="projectpackage.DbManager"%>
<%
  String bg=request.getParameter("bg");
   String name=request.getParameter("name");
 String gender=request.getParameter("gender");
 String cn=request.getParameter("cn");
 String age=request.getParameter("age");
 String address=request.getParameter("address");
 if(age.equals("yes"))
 {
    DbManager db=new DbManager();
    String query="insert into donateblood(bg,name,gender,cn,address) values('"+bg+"','"+name+"','"+gender+"','"+cn+"','"+address+"')";
    String msg="Dear "+name+", We have got your blood donation request. We are highly thankful to you. We will contact you soon for further processings. Please Ensure that you are physically fit and not suffering from any infectious disease. "; 
    if(db.executeNonQuery(query))
    {
      SmsSender s=new SmsSender();
      s.SendSms(cn, msg);
      out.print("<script>alert('Thankyou dear! You will get a confirmation message from our side soon. Please check your inbox.');location.href='../index.jsp';</script>");
    }
    else
    {
       out.print("<script>alert('Due to some technical error, your request could not have been completed.');location.href='../donate.jsp'; </script>");
    }
        
 }
 else
 {
     out.print("<script>alert('You cannot donate blood because your age is not suitable for blood donation.');window.location.href='../index.jsp';</script>");

 
 }
%>