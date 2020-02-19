<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>Fuzzy Keyword Search</title>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.3/modernizr.min.js" type="text/javascript"></script>

<link href='https://fonts.googleapis.com/css?family=PT+Sans:400,700' rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="https://s3-us-west-2.amazonaws.com/s.cdpn.io/148866/reset.css"><link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">
<link rel="stylesheet" href="./style.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css"> 

<style>

#sec {
  font-family: "Raleway", sans-serif;
  padding: 50px 0;
  background: #fff;
  text-align: center;
  word-wrap: break-word;
}
#sec h2 {
  font-weight: 200;
  font-size: 30px;
  color: #63b7e6;
}
#sec ul {
  margin: 0;
  display: flex;
  flex-flow: row wrap;
  justify-content: center;
  list-style: none;
}
#sec ul li {
  padding: 40px;
  width: 300px;
  transition: box-shadow 0.3s;
}
#sec ul li:hover {
  box-shadow: 0 12px 15px 0 rgba(0, 0, 0, 0.24), 0 17px 50px 0 rgba(0, 0, 0, 0.19);
}
#sec ul li:hover span {
  color: #63b7e6;
}
#sec ul li:hover p {
  color: #555;
}
#sec ul li:hover h3 {
  color: #63b7e6;
}
#sec ul li:hover h3:after {
  width: 25px;
}
#sec ul li span {
  font-size: 2.6em;
  display: block;
  transition: color 0.3s;
  color: #a2a2a2;
}
#sec ul li span:before, #sec ul li span:after {
  position: static;
}
#sec ul li h3 {
  color: #6f6f6f;
  display: inline-block;
  font-size: 24px;
  font-weight: 100;
  transition: color 0.3s;
}
#sec ul li h3:after {
  content: "";
  position: relative;
  left: 50%;
  top: 20px;
  transform: translateX(-50%);
  display: block;
  width: 40px;
  height: 1px;
  background: #6f6f6f;
  transition: width 0.3s;
}
#sec ul li p {
  color: #a2a2a2;
  text-align: left;
  text-indent: 1em;
  font-size: 16px;
  line-height: 26px;
  transition: color 0.3s;
}


<!-- </style>
 
 <script>  
function validateform(){  
var name=document.foorm.name.value;  
var password=document.foorm.password.value;  
  
if (name==null || name==""){  
  alert("Name can't be blank");  
  return false;  
}else if(password.length<6){  
  alert("Password must be at least 6 characters long.");  
  return false;  
  }  
}  

function validateformreg()
{
	var name=document.fooorm.name.value;  
	var password=document.fooorm.password.value;  
	  
	if (name==null || name==""){  
	  alert("Name can't be blank");  
	  return false;  
	}else if(password.length<6){  
	  alert("Password must be at least 6 characters long.");  
	  return false;  
	  }  

} -->
</script> 
 

 
</head>

<!-- <body> -->
<!-- partial:index.partial.html -->
<body>
	<header role="banner">
		<!-- <div id="cd-logo"><a href="#0"><img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/148866/cd-logo_1.svg" alt="Logo"></a></div> -->

		<nav class="main-nav">
			<ul>
				<!-- insert more links here -->
				<li><a class="cd-signin" href="#0">Sign in</a></li>
				<li><a class="cd-signup" href="#1">Sign up</a></li>
			</ul>
		</nav>
	</header>

	<div class="cd-user-modal"> <!-- this is the entire modal form, including the background -->
		<div class="cd-user-modal-container"> <!-- this is the container wrapper -->
			<ul class="cd-switcher">
				<li><a href="#0">Sign in</a></li>
				<li><a href="#1">New account</a></li>
			</ul>

			<div id="cd-login"> 
				<form class="cd-form" action="login" method="post" name="fooorm" onsubmit="return validateformreg()" >
					<p class="fieldset">
						<label class="image-replace cd-email" for="signin-email">E-mail</label>
						<input class="full-width has-padding has-border" id="signin-email" type="email" name="email" placeholder="E-mail">
						<span class="cd-error-message">Error message here!</span>
					</p>

					<p class="fieldset">
						<label class="image-replace cd-password" for="signin-password">Password</label>
						<input class="full-width has-padding has-border" id="signin-password" type="password" name="password"  placeholder="Password">
						<a href="#0" class="hide-password">Show</a>
						<span class="cd-error-message">Error message here!</span>
					</p>

					<p class="fieldset">
						<input type="checkbox" id="remember-me" checked>
						<label for="remember-me">Remember me</label>
					</p>

					<p class="fieldset">
						<input type="submit" class="full-width"  value="Login">
					</p>
				</form></div>
				
				<p class="cd-form-bottom-message" style="visibility:hidden"><a href="#0">Forgot your password?</a></p>
				<a href="#0" class="cd-close-form">Close</a>
			

 			
 
			 <div id="cd-signup"> 
				<form  class="cd-form"  action="Register" method="post" name="foorm" onsubmit="return validateform()" >
					<p class="fieldset">
						<label class="image-replace cd-username" for="signup-username">Username</label>
						<input class="full-width has-padding has-border" id="signup-username" type="text" placeholder="Username" name="name">
						<span class="cd-error-message">Error message here!</span>
				</p>
				<p class="fieldset">
						<label class="image-replace cd-email" for="signup-email">E-mail</label>
						<input class="full-width has-padding has-border" id="signup-email" type="email" placeholder="E-mail" name = "email">
						<!-- <span class="cd-error-message">Error message here!</span> -->
					
</p>
                        <p class="fieldset">
				
						<label class="image-replace cd-password" for="signup-password">Password</label>
						<input class="full-width has-padding has-border" id="signup-password" type="text"  placeholder="Password" name = "password">
						<a href="#0" class="hide-password">Hide</a>
						<!-- <span class="cd-error-message">Error message here!</span> -->
					
				</p>
				<p class="fieldset">	
					
					<label> User Type  </label> &nbsp;&nbsp;&nbsp;
					<input type="radio" id="usrtype" name="user" value="1"> Admin &nbsp;&nbsp;&nbsp;
					<input type="radio" id="usrtype" name="user" value="0"> User  &nbsp;&nbsp;&nbsp;
					</p>
					<p class="fieldset">

			
						<input type="checkbox" id="accept-terms">
						<label for="accept-terms">I agree to the <a href="#0">Terms</a></label>
					
</p>
				<p class="fieldset">
					
				<input type="submit"  class="full-width" value="Create Account" onclick="javascript:alert('Registration Successful');">
				</p>
				 					</form>

						</div> <!-- cd-signup -->

			<div id="cd-reset-password"> <!-- reset password form -->
				<p class="cd-form-message">Lost your password? Please enter your email address. You will receive a link to create a new password.</p>

				<form class="cd-form">
					<p class="fieldset">
						<label class="image-replace cd-email" for="reset-email">E-mail</label>
						<input class="full-width has-padding has-border" id="reset-email" type="email" placeholder="E-mail">
						<span class="cd-error-message">Error message here!</span>
					</p>

					<p class="fieldset">
						<input class="full-width has-padding" type="submit" value="Reset password">
					</p>
				</form>

				<p class="cd-form-bottom-message"><a href="#0">Back to log-in</a></p>
			</div> <!-- cd-reset-password -->
			<a href="#0" class="cd-close-form">Close</a>
		</div> <!-- cd-user-modal-container -->
	</div> <!-- cd-user-modal -->



<section id="sec">
  <h2>Fuzzy Keyword Search Over Encrypted Data in Cloud Computing</h2>
  <ul>
    <li>
      <span class="fa fa-code"></span>

      <h3>Wild card Based</h3>
      <p style=" text-align:center;"><br><br>We proposed to use an wildcard to denote edit operations at the same position.</p>
      <p style="text-align:center;">The wildcard based fuzzy set edits distance to solve the problems. </p>
    </li>
    <li><span class="fa fa-music"></span>
      <h3>Gram Based</h3>
      <p style=" text-align:center;"><br><br>The gram of a string is a substring that can be used as a signature for efficient approximate search.</p>
      <p style=" text-align:center;">While gram has been widely used for constructing inverted list for approximate string search, we use gram for the matching purpose.</p>
    </li>
    <li><span class="fa fa-users"></span>
      <h3>Symbol Based</h3>
      <p style=" text-align:center;"><br><br>To enhance the search efficiency, we now propose a symbol based trie-traverse search scheme,</p>
      <p style=" text-align:center;"> where a multi-way tree is constructed for storing the fuzzy keyword set over a finite symbol set.</p></li>

  </ul>
</section>



</body>
<!-- partial -->
  <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script><script  src="./script.js"></script>






</html>
