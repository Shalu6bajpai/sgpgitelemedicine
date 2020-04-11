<%@page import="projectpackage.DbManager"%>
<%
  String capcode=request.getParameter("capcode");
  String captchacode=request.getParameter("captchacode");
  if(capcode.equals(captchacode))
  {
      String password=request.getParameter("password");
      String confirmpassword=request.getParameter("retypepassword");
      if(password.equals(confirmpassword))
      {
        //Code for Registration
        String patientname=request.getParameter("patientname");
        String gender=request.getParameter("gender");
        String fathername=request.getParameter("fn");
        String address1=request.getParameter("address1");
        String address2=request.getParameter("address2");
        String disease=request.getParameter("disease");
        String referredby=request.getParameter("refferedby");
        String hospitalname=request.getParameter("hospitalname");
        String contactno=request.getParameter("contactno");
        String emailaddress=request.getParameter("emailaddress");
        String adharno=request.getParameter("adharno");
        String status="false";
        DbManager db=new DbManager();
        String regdt= db.getDate();
        String usertype="user";
        String query="insert into patientinfo values('"+patientname+"','"+gender+"','"+fathername+"','"+address1+"','"+address2 +"','"+ disease+"','"+ referredby+"','"+hospitalname +"','"+contactno+"','"+emailaddress+"','"+adharno+"','"+password+"','"+status+"','"+regdt+"')";     
        String querylogin="insert into login values('"+contactno+"','"+password+"','"+usertype+"')";
        boolean res1= db.executeNonQuery(query);
        boolean res2= db.executeNonQuery(querylogin);
        if(res1&&res2)
        {
          out.print("<script>alert('You are Successfully Registered dear patient! You can Login now. We are redirecting you to the Login Page now.');window.location.href='../login.jsp';</script>");
          
        }
        else
        {
            out.print("<script>alert('You could not have been Registered due to some technical Error');window.location.href='../registration.jsp';</script>");
      
        }
      }
      
      else
      {
         out.print("<script>alert('Your Passwords don't match');window.location.href='../registration.jsp';</script>");
      }
      }
  else
  {
    out.print("<script>alert('Invalid captcha Code'); window.location.href='../registration.jsp';</script>");
  }

%>