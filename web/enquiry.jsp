<%-- 
    Document   : enquiry
    Created on : 17 Jul, 2018, 6:14:11 PM
    Author     : Rajan Nishu Krishna
--%>


<%@page import="projectpackage.DbManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
          <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
     <link href="css/generalstyle.css" rel="stylesheet" />
       
    <link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css" />
     <link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap-theme.css" />
     <link rel="stylesheet" type="text/css" href="bootstrap/css/font-awesome.min.css" />
     <script type="text/javascript" src="bootstrap/js/jquery.js"></script>
     <script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
        <title>Enquiry Page</title>
        <style>
         
            .h1{
                margin-top: 20px;
               color:lightpink;
            }
            label{
                color:white;
                font-size: 17px;
            }
            me
            {
                color: white;
                font-size: 17px;
            }
        </style>
    </head>
    <body >
       
        
        
        
        <div id="wrapper">
            
            <%@include file="generalmaster/head.jsp" %>
            <div id="container">
                <%@include file="generalmaster/left.jsp" %>
                <div id="main">
                     <h1 class="h1" style="text-align: center;margin: 20px auto;">Fill Enquiry Details here</h1>
                     <form action="generalcode/enquirycode.jsp" method="post">
            <table  style="width: 60%;height:auto ;margin: -50px auto;"  >
            <tr>
                    <td><label>Name:</label></td>
                    <td><input type="text" class="form-control" name="name" required/><br></td>
                </tr>                
            <tr>
                    <td><label> Gender:</label></td>
                    <td><input type="radio"  name="gender" value="Male" checked=""/>&emsp;<me>Male</me>
                        &emsp;&emsp;
                        <input type="radio"  name="gender" value="Female"/>&emsp;<me>Female</me>  &emsp;&emsp;
                        <input type="radio"  name="gender" value="Other"/>&emsp;<me>Other</me></td>
               </tr><br><br>                
            <tr>
                    <td><label>Address:</label></td>
                    <td><input type="text" class="form-control" name="address" required/><br></td>
                </tr>                
            <tr>
                    <td><label>Contact Number:</label></td>
                    <td><input type="text" class="form-control" name="contactno" required/><br></td>
                </tr>                
            <tr>
                    <td><label>Email Address</label></td>
                    <td><input type="email" class="form-control" name="emailaddress" required/><br></td>
                </tr>                
            <tr>
                    <td><label>What You Want to enquire?</label></td>
                    <td><textarea cols="25" rows="10" class="form-control" maxlength="500" placeholder="Maximum 500 words are permitted"
                                  name="enquirytext" required=></textarea>  </td>
            <br><br> <br></tr>      
                <tr>
                     <td colspan="2"><center> <input  style="margin-top:20px;" type="submit" value="Submit your Enquiry here" class="btn btn-info"/>
                      </center> </td>
                    </tr>   
            </table>
        </form>
                </div>
                
        </div>
                <%@include file="generalmaster/foot.jsp" %>
               </div>
        
        
        
        
        
        
       
    </body>
</html>

