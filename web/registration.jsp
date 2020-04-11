<%@page import="projectpackage.CaptchaGenerator"%>
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
        <title>Registration Page</title>
        <style>
         
            .h1{
                margin-top: 20px;
                color: lightpink;
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
         
            #main,#left{
                height: 1000px;
                background: rgba(0,0,0,0.3);
            }
            #left{
                background:rgba(144,238,144,0.3);
            }
            #footer{
                margin-top: 250px;
            }
body{
    height: 1750px;
}
p{
    color:rgba(0,0,0,0.8);
}

        </style>
    </head>
    <body >
       
        
        
        
        <div id="wrapper">
            
            <%@include file="generalmaster/head.jsp" %>
            <div id="container">
                <%@include file="generalmaster/left.jsp" %>
                <div id="main">
                     <h1 class="h1" style="text-align: center;margin: 30px auto;">Please Register Here</h1>
                     <form action="generalcode/registrationcode.jsp" method="post">
            <table  style="width: 70%;height:auto ; margin: -40px auto;"  >
            <tr>
                    <td><label>Patient Name:</label></td>
                    <td><input type="text" class="form-control" name="patientname" required/><br></td>
                </tr>                
            <tr>
                    <td><label> Gender:</label></td>
                    <td><input type="radio"  name="gender" value="Male" checked=""/>&emsp;<me>Male</me>
                        &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
                        <input type="radio"  name="gender" value="Female"/>&emsp;<me>Female</me></td>
               </tr><br><br>                
            <tr>
                    <td><label>Father's Name:</label></td>
                    <td><input type="text" class="form-control" name="fn" required/><br></td>
                </tr>                
            <tr>
                    <td><label>Address 1:</label></td>
                    <td><textarea  class="form-control" cols="10" rows="2" name="address1"placeholder="Maximum Limit :100"  maxlength="100" required></textarea><br></td>
                </tr>                
            <tr>
                    <td><label>Address 2 (Optional):</label></td>
                    <td><textarea  class="form-control" cols="10" rows="2" name="address2" placeholder="Maximum Limit :100" maxlength="100" ></textarea><br></td>
                </tr> 
                <tr>
                    <td><label>Disease :</label></td>
                    <td><input type="text" class="form-control" name="disease" required/><br></td>
                </tr> 
                <tr>
                    <td><label>Referred By :</label></td>
                    <td><input type="text" class="form-control" name="referredby" required/><br></td>
                </tr> 
                
                <tr>
                    <td><label>Contact Number (Remember this) :</label></td>
                    <td><input type="number" class="form-control" name="contactno" required/><br></td>
                </tr> 
                
                <tr>
                    <td><label>Hospital Name :</label></td>
                    <td><input type="text" class="form-control" name="hospitalname" /><br></td>
                </tr> 
                     <tr>
                    <td><label>Email Address :</label></td>
                    <td><input type="email" class="form-control" name="emailaddress" required/><br></td>
                </tr> 
                     <tr>
                    <td><label>Adhar Number :</label></td>
                    <td><input type="number" class="form-control" name="adharno" required/><br></td>
                </tr> 
                     <tr>
                    <td><label>Password :</label></td>
                    <td><input type="password" class="form-control" name="password" required/><br></td>
                </tr> 
                     <tr>
                    <td><label>Re-enter Password :</label></td>
                    <td><input type="password" class="form-control" name="retypepassword" required /><br></td>
                </tr> 
                     <tr>
                    <td><label>Captcha Code:</label></td>
                    <td ><me style="font-size: 25px; padding: 5px;text-align: center;margin-left: 90px;width: auto;color:black;">
                        <% CaptchaGenerator cg=new CaptchaGenerator();
                    String capcode = cg.getCode();%>
                        <%=capcode%><input type="hidden" name="capcode" value="<%=capcode%>"></me><br><br></td>
                </tr> 
                  <tr>
                    <td><label>Enter Above Captcha:</label></td>
                    <td><input type="text" class="form-control" name="captchacode" required/><br></td>
                </tr> 
                   
                   
            
                <tr>
                    <td colspan="2"><center> <input   style="margin-top:20px;" name="s" type="submit" value="Register" class="btn btn-info btn-lg"/>
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









<!--Give input type=number in contactno and zip code Dont take input in regdate, status, .--->