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
    
        <title>Our Mission</title>
        <style>
            h2,#d{
                padding: 25px;
                margin: 10px auto;
                text-align: justify;
                font-size: 20px;
                color: white;
            }
            h2,#h1{
                color: lightpink;
                text-decoration: underline;
            }
        </style>
    </head>
    <body >
        <form>
        <div id="wrapper">
            
            <%@include file="generalmaster/head.jsp" %>
            <div id="container">
                <%@include file="generalmaster/left.jsp" %>
                <div id="main">
                      <h1 id="h1" style="margin-top: 10px; text-align: center; ">MISSION</h1>
                    
                    <h2> Disease Free India</h2><p id="d">
  We are insighting into a future where our country India is totally a disease-free nation. For this we have launched this software through which we can create a virtual hospital
  so that our clients and patients can interact to us without any inconvenience.
                    </p>
                    <hr/>
<h2>24/7 Service Availability</h2>
<p id="d">
Our large network of team including various talented and extra-ordinary doctors and helping staff is always available to help our patients
out 24 hours a week and 7  days a week. We seek to assist them in future with much greater accuracy and efficiency.</p>
<hr/>  <h2>Minimum Case Failure</h2>
<p id="d">
It is seen many a times that there are various serious cases and injuries that can wound people seriously and many a time serious deaths
happen. So we are insight into minimum cases failures. </p>
             </div>
                
        </div>
                <%@include file="generalmaster/foot.jsp" %>
               </div>
        </form>
    
    
</html>
