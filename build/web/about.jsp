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
                    <h1 id="h1" style="margin-top: 10px; text-align: center; ">About Us</h1>
                    
                    <h2> Location and Transport</h2><p id="d">
The Institute is situated to the Southeast of Lucknow city on Lucknow-Raebareli Road. It is situated nearly 12 Km from the main (Charbagh) railway station and 15 Km from the city center (Hazratganj). 
From the railway station, private buses (route 3) run to the Institute at short intervals.
Alternatively, pre-paid auto-rickshaws are also available for travel to the Institute.
                    
The hospital is located nearly 1 Km from the Institute main gate and a regular free shuttle bus makes a to-and-fro trip every 10-15 minutes.
                    </p>
                    <hr/>
<h2>Salient features of SGPGI Hospital</h2>
<p id="d">
The hospital works as a referral hospital and patients are required to bring a referral slip from the referring physician. The referring physicians are requested to indicate the nature of patients' problem, the specialty at the Institute they wish to refer the patient to and the nature of help required from the Institute.

The Institute hospital endeavours to work on an appointment system. Thus, the patients are expected to re-visit the Institute hospital only on appointed days, except in case of an emergency.

Facilities at the Institute hospital are available only on payment and there is no provision for free treatment or investigations.
                    </p>
                </div>
                
        </div>
                <%@include file="generalmaster/foot.jsp" %>
               </div>
        </form>
    
    
</html>
