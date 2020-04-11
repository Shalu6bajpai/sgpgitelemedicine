<%@page import="projectpackage.DbManager"%>
<%@page import="java.sql.ResultSet"%>
<%

String contactno=request.getParameter("contactno");
String password =request.getParameter("password");
String query="select * from login where userid='"+contactno+"'";
DbManager db=new DbManager();
ResultSet rs=db.selectQuery(query);
if(rs.next())
{
String s=rs.getString("userid");

    String password1=rs.getString("password");
    String usertype=rs.getString("usertype");
    if(usertype.equals("user"))
    {
 if(password.equals(password1))
 {
  session.setAttribute("userid", contactno);        //we are taking contactno in userid because in login table its userid field there.So that will
  //be used on different pages.
   response.sendRedirect("../userzone/userhome.jsp");
 
 }
 else
 {      out.print("<script>alert('Your Password is incorrect Dear User.');window.location.href='../login.jsp';</script>");

 }
}
    else if(usertype.equals("admin"))
    {
       if(password.equals(password1))
 {
   session.setAttribute("adminid", contactno);            //adminid is same as contact number
   response.sendRedirect("../adminzone/adminhome.jsp");
 }
 else
         out.print("<script>alert('Your Password is incorrect dear Admin. Tumse ye ummid nahi thi.');window.location.href='../login.jsp';</script>");

}
    }


else
{
    out.print("<script>alert('Sorry dear, No Such User Exist.');window.location.href='../login.jsp';</script>");
}

%>