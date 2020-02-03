<html>
  <head>
  <title> Test </title> 
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="author" content="colorlib.com">
    <link href="https://fonts.googleapis.com/css?family=Poppins" rel="stylesheet" />
    <link href="css/main.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"> 
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>  
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
 
 <style>
 .abc{
 padding-right : 30px;
 color: #58372e;
 
 }
 .box{
/*  background-image:url("images/wood.jpg"); */

 /* background-color : #463f1e; */
 background:none;
 width :350px;
 height : 500px;
 margin-bottom : 100px;
 margin-left : 50px;
 
 border-top-right-radius: 15px;
 border-top-left-radius: 15px;
 border-bottom-right-radius: 15px;
 border-bottom-left-radius: 15px;
 opacity:0.9;
 }

.box1{
 background-image:url("https://media.giphy.com/media/8L17z7N2tOCxMDlfE0/giphy.gif");
 background-size:cover;
 background-color : #463f1e;
 width :650px;
 height : 800px;
 margin-bottom : -50px;
 margin-left : 50px;
 margin-top:0px;
 border-top-right-radius: 15px;
 border-top-left-radius: 15px;
 border-bottom-right-radius: 15px;
 border-bottom-left-radius: 15px;
 /* opacity:0.9; */
 }
 
 
 .button-green
{
    font-family: "Segoe UI","Segoe","Verdana";
    background: #f0ad4e center top no-repeat;
  /*  background-image:(rgb(15, 158, 10), rgb(24, 105, 21)); 
 */    overflow: hidden;
    color: white;
    border-radius: 5px;
    width: 100px;  
    position: relative; 
    padding: 8px 10px 8px 10px;
    margin-left : 20px;
}

.button-green:hover
{
    background: #f0ad4e center top no-repeat;
    background-image: linear-gradient(rgb(12, 141, 8), rgb(19, 88, 17));     
}

.file-upload
{
    opacity: 0;
    width: 102px;
    height: 35px;
    position: absolute;
    top: 0px;
    left: 0px;
}

.jumbotron
{
padding-top: 0px;
padding-bottom: 0px;
background:none;
/* background-image:url("images/brown-seamless.jpg"); */
background-size: cover;
width: 1000px;
height : 600px;
margin-bottom : -50px;
margin-left : 50px;
margin-top:50px;
border-top-right-radius: 15px;
border-top-left-radius: 15px;
border-bottom-right-radius: 15px;
border-bottom-left-radius: 15px;
color: #463f1e;
font-family:Candara;
opacity: 3;
}

body {
  background: 
  linear-gradient(135deg, black 25%, transparent 25%) -50px 0,
  linear-gradient(225deg, black 25%, transparent 25%) -50px 0,
  linear-gradient(315deg, black 25%, transparent 25%),
  linear-gradient(45deg, black 25%, transparent 25%);	
  background-size: 2em 2em;
  background-color: #232323;
}




 </style>
  
  </head>
  <body>  
    <p></p><br>
    <div class="abc" align="right"  > 
     <a href="#" class="btn btn-primary"  target="_blank" rel="noopener noreferrer"  style="opacity:0.9;" > HOME</a>&nbsp;&nbsp;&nbsp;
     <a href="#" class="btn btn-primary pull-right"  target="_blank" rel="noopener noreferrer" align="right" style="opacity:0.9" >LOG OUT</a> 
     
       </div > <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   
   <table>
  <tr>
  <td>   <div class="box" align="left">
<!-- <a href="#" type="button" class="btn btn-warning btn-lg" style="margin:25px 100px;"> Approve User </a> 
<a href="#" type="button" class="btn btn-warning btn-lg" style="margin:25px 100px;"> Approve File </a><br> -->
<br><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="#" type="button" class="btn btn-warning btn-block" style="margin:50x 100px;align :center"> Home </a><br>

<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

<a href="#" type="button" class="btn btn-warning btn-block" style="margin:25x 100px;"> My Files </a><br>
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

<a href="#" type="button" class="btn btn-warning btn-block" style="margin:25x 100px;"> Password Reset </a>   </div>
  </td>
  <td> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <div class="s130">
   
  <!--   <button value="de"></button>
  --> 
   
   	<div class="container">

<div class="jumbotron" align="center">
     <!-- <div class="box1" > --> 
     <br><br>
     &nbsp;&nbsp;&nbsp;<label  style="color:white; font-family:Candara"> Visibility  </label> &nbsp;&nbsp;&nbsp;&nbsp;
					<input type="radio" id="visibility" name="user" value="1"> <label style="color:white; font-family:Candara;"> Private </label>&nbsp;&nbsp;&nbsp;
					<input type="radio" id="visibility" name="user" value="0"> <label style="color:white; font-family:Candara;"> Public </label>&nbsp;&nbsp;&nbsp;<br>
					<br><br><br>
					



 <div class="button-green">    
 <input class="file-upload" type="file"> Upload File </div><br><br><br>
     
     <label style="color:white; font-family:Candara;"> Search Keywords </label><br>
         
    <input type=text style="border-radius:50px; border:2px solid #456879;">
    <input type=text style="border-radius:50px; border:2px solid #456879;">
    <input type=text style="border-radius:50px; border:2px solid #456879;">
    <input type=text style="border-radius:50px; border:2px solid #456879;">
    <input type=text style="border-radius:50px; border:2px solid #456879;">
    <input type=text style="border-radius:50px; border:2px solid #456879;">
    <input type=text style="border-radius:50px; border:2px solid #456879;">
    <input type=text style="border-radius:50px; border:2px solid #456879;"> <br><br>
    
     
    
 <a href="#" type = button class="btn btn-warning btn-lg" > SUBMIT </a>
     
     
     </div>
      
  
</div>
</div>

   
 </td></tr></table>
    <script src="js/extention/choices.js"></script>
    
    
   <br><br><br><br><br> 
  </body>
</html>