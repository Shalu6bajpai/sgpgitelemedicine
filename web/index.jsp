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
      </style>
    
        <title>SGPGI Telemedicine</title>
    </head>
    <body >
        <form>
        <div id="wrapper">
            
            <%@include file="generalmaster/head.jsp" %>
            <div id="container">
                <%@include file="generalmaster/left.jsp" %>
                <div id="main">
                    <div id="row" >
                        <div id="left1" class="col-sm-6 ">
                            <h2 id="l1">24*7 Service</h2>
                            <img src="images/i1.png" width="350px" height="300px" class="img-responsive img-thumbnail" />
                        </div>
                             <div id="left1" class="col-sm-6">
                            <h2 id="l1">Care Advices</h2>
                            <img src="images/i2.jpg" class="img-responsive img-thumbnail" width="350px" height="300px" />
                        </div>
                         <div id="left1" class="col-sm-12">
                            <h2 id="l1">Emergency</h2>
                            <img src="images/i3.jpg"class="img-thumbnail " width="700px" height="300px" />
                        </div>
                    </div>
                </div>
                
        </div>
                <%@include file="generalmaster/foot.jsp" %>
               </div>
        </form>
    
    
</html>
