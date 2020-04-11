<%@page import="java.sql.ResultSet"%>
<%@page import="projectpackage.DbManager"%>
<%
    if(request.getParameter("submit")!=null)
    {
      String oldpass=request.getParameter("oldpass");
      String newpass=request.getParameter("newpass");
      String confirmpass=request.getParameter("confirmpass");
      String query="select password from login where userid='"+session.getAttribute("adminid")+"'";
      DbManager db=new DbManager();
      ResultSet rs=db.selectQuery(query);
      if(rs.next())
      {
        String oldpass1=rs.getString(1);
        
        if(oldpass1.equals(oldpass))
        {
            if(newpass.equals(confirmpass))
            {
               String query1="update login set password='"+confirmpass+"' where userid='"+session.getAttribute("adminid")+"'";
              
               if(db.executeNonQuery(query1))
               {
                  out.print("<script>alert('Your Password is Changed Successfully!!! ');window.location.href='../adminhome.jsp';</script>");
               }
            }
            else
            {
               out.print("<script>alert('Your New Password and Confirmed Password don't match');window.location.href='../changeadminpwd.jsp';</script>");
            }
        }
        else
        {
           out.print("<script>alert('The Old Password you enterred is wrong');window.location.href='../changeadminpwd.jsp';</script>");
        }
      }
    }
    %>