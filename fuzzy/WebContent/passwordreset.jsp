<html>
<head> <title> Password Reset </title></head>

	<script>  

function validateform(){  
var oldpassword=document.fooorm.oldpassword.value;  
var newpassword=document.fooorm.newpassword.value;  
var confpassword=document.fooorm.confpassword.value;
if (oldpassword==null || oldpassword=="" && newpassword==null || newpassword=="" && confpassword==null || confpassword=="" ){  
  alert("Password can't be blank");  
  return false;  
}
else{
	alert("Password changed");
}
}
</script> 



<style>
body {
  
}

.reset-password-box {
  position: absolute;
  left: calc(50% - 170px);
  top: calc(50% - 220px);
  width: 340px;
  height: auto;
  padding-bottom: 35px;
  background-color: white;
  border: 1px solid silver;
  color: grey;
  font-family: 'Source Sans Pro', sans-serif;
  font-size: 14px;
  z-index: 500;
  transition: height 1s ease;
}


.title-bar {
  height: 40px;
  width: 100%;
  background-color: WhiteSmoke;
  border-bottom: 1px solid silver;
}

.center-title {
  position: absolute;
  margin-top: -1px;
  width: 100%;
  text-align: center;
  font-size: 30px;
  vertical-align: top;
  font-weight: 800;
  color: LightGrey;
}

.title {
  height: 40px;
  width: 100%;
  padding-left: 15px;
  padding-top: 12px;
  font-weight: 700;
  color: grey;
}

.username-label {
  line-height: 200%;
}

.username {
  padding-top: 20px;
  padding-left: 30px;
}

.password-label {
  line-height: 200%;
}

.password {
  padding-top: 10px;
  padding-left: 30px;
}

.new-password-label {
  line-height: 200%;
}

.new-password {
  padding-top: 10px;
  padding-left: 30px;
}

.password-verification {
  padding-top: 10px;
  padding-left: 30px;
}

.password-verification-label {
  line-height: 200%;
}

.opacity-0 {
  opacity: 0;
}

#username-input,
#password-input,
#new-password-input,
#password-verification-input {
  width: 260px;
  padding-left: 5px;
  padding-right: 5px;
  padding-top: 10px;
  padding-bottom: 10px;
  font-size: 16px;
  border: 1px solid darkgrey;
  border-radius: 0px;
}

.back-login {
  padding-left: 30px;
  padding-right: 30px;
  padding-top: 20px;
}

.back {
  display: inline-block;
  border: 1px solid LightGrey;
  width: 130px;
  text-align: center;
  background-color: DarkRed;
  color: white;
  height:40px;
    width:130px;
}

.back:active {
  background-color: LightGrey;
}

.back > a {
  color: inherit;
  text-decoration: none;
  width: inherit;
  min-height: 100%;
  display: block;
  padding-top: 10px;
  padding-bottom: 10px;
}

 .reset-password-button {
  float: center;
  display: inline-block;
  border: 1px solid LightGrey;
  width: 130px;
  text-align: center;
  background-color: SteelBlue;
  color: white;
  height:40px;
    width:130px;
}

<!--
.reset-password-button:active {
  background-color: LightGrey;
}

.reset-password-button > a {
  color: inherit;
  text-decoration: none;
  width: inherit;
  min-height: 100%;
  display: block;
  padding-top: 10px;
  padding-bottom: 10px;
} 
-->

</style>
<script>
function airTableResetPassword() {
	  console.log('POSTing password reset');
	  $.post('https://mrrmrr.herokuapp.com/resetPasswordFed360', ('result=' + JSON.stringify({
	      'username': $('#username-input').val(),
	      'password': $('#password-input').val(),
	      'newpassword': $('#new-password-input').val(),
	      'email': getEmailParameter()
	    })),
	    function(data, status) {
	      console.log('Data: ' + data + '\nStatus: ' + status);
	      if (status != 'success') {
	        alert('error: ' + status);
	        return;
	      }

	      alert('Password has been reset');
	      $('#username-input').val('');
	      $('#password-input').val('');
	      $('#new-password-input').val('');
	      $('#password-verification-input').val('');
	      
	    }, 'text');

	}

	function getEmailParameter() {
	  var parameters = {};
	  // also sets the project name
	  var url = window.location.href;
	  console.log(url);
	  var parametersString = url.split('?')[1];
	  if (typeof parametersString == 'undefined') {
	    console.log('no url parameter');
	    return;
	  }
	  var parameterString = parametersString.split('&');
	  for (var index in parameterString) {
	    var keyValue = parameterString[index].split('=');
	    var key = keyValue[0];
	    var value = decodeURIComponent(keyValue[1]);
	    console.log('Webpage URL parameter key,value: ' + key + ',' + value);
	    parameters[key] = value;
	  }

	  if (typeof parameters.email != 'undefined') {
	    if (parameters.email.indexOf('#') != -1) {
	      //parameters.email.splice(parameters.email.indexOf('#'), 1);
	      //parameters.email.replace9('#','');
	      parameters.email = parameters.email.slice(0, -1);
	    }
	    return parameters.email;
	  }
	  
	}
</script>


<body>

<% String em = (String)session.getAttribute("email");
  if(em==null||em=="")
  {
	  response.sendRedirect("index.jsp");
  }
  
  
  %>
<div class="title-bar">
    <div class="center-title">Password Reset</div>

  </div>

<div class="reset-password-box">

  <div class="title-bar">
    <div class="title">PASSWORD RESET</div>

  </div>

 <!--  <div class="username">
    <label for="username-input" class="username-label">Old Password</label>
    <input type="text" id="username-input" autofocus>
  </div> -->
<form action = "passwordreset" method="post" name="fooorm" onsubmit="return validateform()">

  <div class="password">
    <label for="password-input" class="password-label" >Old Password</label>
    <input type="password" id="password-input" name="oldpassword">
  </div>
  

  <div class="new-password">
    <label for="new-password-input" class="new-password-label">New Password</label>
    <input type="password" id="new-password-input" name="newpassword">
  </div>

  <div class="password-verification">
    <label for="password-input" class="password--verification-label">Password Verification</label>
    <input type="password" id="password-verification-input" name="confpassword">
  </div>


  <div class="back-login">
    <div>
    </div> 
   <div>
         <!-- <button class="back" onclick="window.location.href = 'logout.jsp';">Log out</button> -->

   <button class="reset-password-button" value="Reset Password" name="resetbtn"> Reset Password </button>
   <!--  onclick="javascript:alert('Password Changed');" -->
    <!-- <input type="submit" value="Reset Password"/> -->
    </div>
    </div>
   </form>
</div>
</body>

</html>