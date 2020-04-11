<%@page import="projectpackage.SmsSender"%>
<%@page import="projectpackage.DbManager"%>
<%
 try{
String name=request.getParameter("name");
String gender=request.getParameter("gender");
String address=request.getParameter("address");
String contactno=request.getParameter("contactno");
String emailaddress=request.getParameter("emailaddress");
String enquirytext=request.getParameter("enquirytext");
String msg="Thanks "+name+" for your Enquiry, you asked us: "+enquirytext+", We will contact you soon!";
DbManager db=new DbManager();
String enquirydate=db.getDate();

 String query="insert into enquiry(name,gender,address,contactno,emailaddress,enquirytext,enquirydt) values('"+name+"',"
           + "'"+gender+"','"+address+"','"+contactno+"','"+emailaddress+"','"+ enquirytext+"','"+enquirydate+"')";
  boolean res=db.executeNonQuery(query);
  if(res==true)
  {
      SmsSender s=new SmsSender();
      s.SendSms(contactno, msg);
      out.print("<script>alert('Your Query has been Submitted');window.location.href='../enquiry.jsp'</script>");
  }
   else
  out.print("<script>alert('Sorry! Query Not Submitted. Technical Error Occured');window.location.href='../index.jsp'</script>");
 }
 catch(Exception e)
 {
     out.print(e);
 }
%>