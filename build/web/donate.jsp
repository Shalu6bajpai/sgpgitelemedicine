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
      <style>
          #l1{
              color: white;
              text-align: justify;
          }
     
          
            td,th{
                padding: 20px 0px 20px 0px;
                text-align: justify;
            }
/*            table :hover{
                background: rgba(0,0,0,0.1);
            }
             table td  a{
               color: darkred;
               
            }
            table td  a:hover{
                font-size: 20px;
                color: red;
                text-decoration: none;
                background: none;
            }*/
h1{
    margin: 0px;
    padding: 0px;
}
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
         
        </style>
 
    
        <title>Donate Blood</title>
    </head>
    <body >
        <form action="generalcode/donateblood.jsp" method="post">
        <div id="wrapper">
            
            <%@include file="generalmaster/head.jsp" %>
            <div id="container">
                <%@include file="generalmaster/left.jsp" %>
                <div id="main">
                    
                    <h1 class="h1" style="text-align: center; padding: 10px"><i>Please Submit Your Blood Details</i></h1><br><br>
                    <table style="margin:0 auto;width: 70%; ">
                        
                        <tr>
                            <td><label>Your Blood Group:-</label></td>
                            <td><select name="bg" class="form-control">
                                    <option value="none">Select Blood Group</option>
                                    <option value="A">A </option>
                                    <option value="B">B</option>
                                    <option value="AB">AB</option>
                                    <option value="O">O</option>
                                    <option value="O+">O+</option>
                                    <option value="O-">O-</option>
                                    <option value="others">Other</option>
                                </select></td>
                        </tr>
                       <tr>
                            <td><label>Your Name :-</label></td>
                            <td><input type="text" class="form-control" name="name" required/></td>
                        </tr>
                      <tr>
                    <td><label> Gender:</label></td>
                    <td><input type="radio"  name="gender" value="Male" checked=""/>&emsp;<me>Male</me>
                        &emsp;&emsp;&emsp;&emsp;
                        <input type="radio"  name="gender" value="Female"/>&emsp;<me>Female</me> &emsp;&emsp;&emsp;&emsp; <input type="radio"  name="gender" value="other"/>&emsp;<me>Other</me></td>
               </tr><br><br>  
                        <tr>
                            <td><label>Your Contact Number:-</label></td>
                            <td><input type="number" class="form-control" name="cn" required/></td>
                        </tr>
                       
                          <tr>
                            <td><label>Are you above 18 and below 60?: </label></td>
                            <td> &emsp; <input type="radio"  name="age" value="yes"/>&emsp;<me>Yes</me>
                        &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
                        <input type="radio"  name="age" value="no"/>&emsp;<me>No</me></td>
                     </tr>
                    <tr>
                            <td><label>Address: </label></td>
                            <td><input type="text" class="form-control" name="address" required/></td>
                        </tr>
                         <tr>
                            
                             <td colspan="2"><input type="checkbox" name="consent" required/>&emsp;<me>I assure you that 
                             I am not an HIV positive patient and all details are true to my consent. I am donating blood with my own 
                                 wish not forcefully.</me></td>
                        </tr>
                        
                        <tr>
                            <td colspan="2"><center><input type="submit" name="submit" value="Donate" class="btn btn-info btn-lg"/></center></td>
                        </tr>
                    </table>
                    
                </div>
                
        </div>
                <%@include file="generalmaster/foot.jsp" %>
               </div>
        </form>
    
    
</html>
