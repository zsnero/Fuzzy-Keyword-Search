<html>

<!-- Form Validation  -->

<script>  
function validateform(){  
var kw1=document.fooorm.kw1.value;  
var descrip=document.fooorm.descrip.value;  
var filename=document.fooorm.filename.value;
var filetype=document.fooorm.filetype.value;
if (kw1==null || kw1=="" && descrip==null || descrip=="" && filename==null || filename=="" && filetype=="Type" && descrip==null || descrip=="" )
{  
  alert("Fields can't be empty");  
  return false;  
}
/* else
	{
	alert("Upload Successful")
	} */
}
</script>

<!-- <script>
function validateform(){
	var descrip=document.fooorm.descrip.value;
	if(descrip==null || descrip=="")
		{
		alert("Description can't be empty");
		}
}
</script>   -->



  <head>
  <title> Upload File </title> 
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="author" content="colorlib.com">
    <link href="https://fonts.googleapis.com/css?family=Poppins" rel="stylesheet" />
    <link href="css/main.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"> 
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>  
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
 </head>
 <style>
 body {
  /* background-image: url(https://s22.postimg.cc/ngk0detjl/sea-3652697.jpg); */
  background-image: url("https://srpaca.bn.files.1drv.com/y4mZmKDsL47zzkXQlAbeOMCxVnMqq4RYmfZTRJYO0qjZLCW52VCwvmvQ4BfrYrm3C2MRNQIxRQ_pydsVD7PD6NjCU6NsRmPkbCxnQt5ecG-rPqnLt8U5b4tuL-tyCm1RBWDoykeqdQkRd7OCko4rY_-zD9Q8B55_sh5GKs5L_CocolJMkk3bTdGUq8HfBzlZLxRqY5jcqP6TMkqH4P9G-U4VA?width=4000&height=2667&cropmode=none");
  background-size: cover;
}

.center {
    display: block;
    margin-top: 5%;
    margin-left: auto;
    margin-right: auto;
    width: 500px;
}

.center-block {
  display: block;
  margin-left: 22%;
}


p {
  font-family:Montserrat;
}


.btn {
background-image:linear-gradient(-180deg, #d8d8d8 0%, #b3b3b3 100%);
border:1px solid #979797;
box-shadow:0 1px 2px 0 rgba(0,0,0,0.20), inset 0 2px 0 0 #ffffff;
border-radius:6px;
width:143px;
height:34px;
margin: 0 auto;

}

.btn2 {
background-color: Transparent;
background-repeat:no-repeat;
border: none;
cursor:pointer;
overflow: hidden;        
font-family:AvenirNext-Medium;
font-size:16px;
color:#4a4a4a;
text-align:left;
}


p {
font-family:Montserrat;
font-size:12px;
}

.container {
    position: relative;
    text-align: center;
    color: white;
}

.centered {
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
}

 
</style>
<body>

<%-- <% String em = (String)session.getAttribute("email");
  if(em==null||em=="")
  {
	  response.sendRedirect("index.jsp");
  }
  
  
  %>  --%>


  <link href='https://fonts.googleapis.com/css?family=Montserrat' rel='stylesheet'>
  <script src="https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=false&libraries=places"></script>
  
  <script src="jquery-3.3.1.min.js"></script>
<script >

function readURL(input,LogId) {
if (input.files && input.files[0]) {
var reader = new FileReader();
reader.onload = function (e) {
$('LLogId').attr('src', e.target.result);
}
reader.readAsDataURL(input.files[0]);
}
}
$("#fileToUpload").change(function(){
readURL(this,image);
});
</script> 



<body>
<form class="uploadpage" action="WriteArticles" method="post" name="fooorm" enctype="multipart/form-data" onsubmit="return validateform()">
<br>
<a href="index.jsp" class="btn" style="float:right;"> Log out </a>&nbsp;&nbsp;&nbsp;
<a href="#" class="btn" style="float:left;" onclick="window.history.go(-1); return false;"> Home</a>&nbsp;&nbsp;&nbsp;&nbsp;
<br>

<div class="container" style="background:none">
<img src="https://s22.postimg.cc/o9ocgxg01/uploadbox.png" class="center" style="opacity:1">
  <div class="centered">
    <div id="information">
          <div id="upload">
          <br><br>
           <p style="font-size:20px"> Upload your article <br> here </p> 
          </div>
          
              <p>
              <br><br>
              <!-- <span> File size should be lesser than 500 KB</span> -->
              
                <input type="file" name="fileToUpload" id="fileToUpload" class="center-block">
              </p>
              
              <p>
              <div>
              <input name="filename" style="color:black" id="searchTextField" type="text" style="width:200px" size="50" placeholder="File Name"><br>
              </div>
              <p>
            <br><hr>
            <p> File Type: </p>
              <p>
              <div>
                <select style="color:black;" name="filetype">
  <option value="Type">Visibility</option>
  <option value="Private">Private</option>
  <option value="Public">Public</option>
                </select>
                </div>
                <div>
              <p>
              <br>
                <input name="kw1" style="color:black" id="searchTextField" type="text" style="width:500px" size="50" placeholder="Enter keyword"><br>
                <!-- <input name="kw2" style="color:black" id="searchTextField" type="text" style="width:200px" placeholder="Enter keyword"><br>
                <input name="kw3" style="color:black" id="searchTextField" type="text" style="width:200px" placeholder="Enter keyword"><br> -->
              </p>
              </div>
<hr><br>
<label for="descrip">Description:</label>
<div>
 
<textarea name="description" id="descrip" rows="4" cols="50" style="color:black" style="align:center">
</textarea> 
</div>

              <p>
                <br><br>
                <input id="submitbutton" class="btn" type="submit" value="Submit" name="submit">
               <!--  onclick="javascript:alert('Upload Successful');" -->
              </p>
              <input type="hidden" name="timestamp">
					

		</div> 
    </div>
         

      </div>
  </form>
</body>
</html>

</body>

</html>
  </body>
</html>