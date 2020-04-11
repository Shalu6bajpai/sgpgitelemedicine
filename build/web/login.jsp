<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
      <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
       
    <link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css" />
     
     <link rel="stylesheet" type="text/css" href="bootstrap/css/font-awesome.min.css" />
     <script type="text/javascript" src="bootstrap/js/jquery.js"></script>
     <script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
      <link href="css/generalstyle.css" rel="stylesheet" />
    
        <title>SGPGI Telemedicine</title>
        <style>
             .h1{
                margin-top: 20px;
                 color:lightpink;
            }
            label{
                color:white;
                font-size: 17px;
            }
            #main{
                margin: 0px auto;
            }
            td{
                padding: 20px 20px 0px 15px;
            }
        </style>
    </head>
    <body >
        <form action="generalcode/logincode.jsp" method="post">
        <div id="wrapper">
            
            <%@include file="generalmaster/head.jsp" %>
            <div id="container">
                <%@include file="generalmaster/left.jsp" %>
                <div id="main">
                    <h1 class="h1" style=" text-align: center;">Please Login Here</h1>
                    <table style="width: 60%;border-radius: 20px 20px 20px 20px; height: auto; 
                           background:rgba(255,0,0,0.2); margin: 20px auto; text-align: center;" cellpadding="10" >
                        <tr>
                            <td><label>Enter Contact Number:</label></td>
                            <td><input type="text" class="form-control" name="contactno" required><br></td>
                        </tr> 
                         <tr>
                             <td><label>Enter Password:</label></td>
                            <td><input type="password" class="form-control"  name="password" required><br></td>
                        </tr>
                         <tr>
                           
                             <td colspan="2"><center><input type="submit" class="btn btn-success btn-lg" name="submit" value="Login" required></center><br></td>
                        </tr>
                    </table>   
                </div>
                
        </div>
                <%@include file="generalmaster/foot.jsp" %>
               </div>
        </form>
    
    
</html>
