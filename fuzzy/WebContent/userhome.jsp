<html>
 <head><title> User Home </title>
  
  
  

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="author" content="colorlib.com">
    <link href="https://fonts.googleapis.com/css?family=Poppins" rel="stylesheet" />
    <link href="css/main.css" rel="stylesheet" />
<!--   <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
      <link rel="stylesheet" href="css/bootstrap.min.css">
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script> -->
</head> 
 
<style>
	/* [Object] Modal
 * =============================== */


@charset "UTF-8";
@import url(https://fonts.googleapis.com/css?family=Open+Sans:300,400,700);
@import url('https://fonts.googleapis.com/css?family=Raleway&display=swap');

.abc{
 padding-right : 30px;
 
 }

 .box{
 font-family: 'Raleway', sans-serif;
 background-color : #463f1e;
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

.modal {
  font-family: 'Raleway', sans-serif;
  opacity: 0;
  visibility: hidden;
  position: absolute;
  top: 0;
  right: 0;
  bottom: 0;
  left: 0;
  text-align: center;
  background: rgba(0,0,0, .7);
  transition: opacity .25s ease;
}

.modal__bg {
  position: absolute;
  top: 0;
  right: 0;
  bottom: 0;
  left: 0;
  cursor: pointer;
}

.modal-state {
  display: none;
}

.modal-state:checked + .modal {
  opacity: 1;
  visibility: visible;
}

.modal-state:checked + .modal .modal__inner {
  top: 0;
}

.modal__inner {
  transition: top .25s ease;
  position: absolute;
  top: -20%;
  right: 0;
  bottom: 0;
  left: 0;
  width: 50%;
  margin: auto;
  overflow: auto;
  background: #fff;
  border-radius: 5px;
  padding: 1em 2em;
  height: 50%;
}

.modal__close {
  position: absolute;
  right: 1em;
  top: 1em;
  width: 1.1em;
  height: 1.1em;
  cursor: pointer;
}

.modal__close:after,
.modal__close:before {
  content: '';
  position: absolute;
  width: 2px;
  height: 1.5em;
  background: #ccc;
  display: block;
  transform: rotate(45deg);
  left: 50%;
  margin: -3px 0 0 -1px;
  top: 0;
}

.modal__close:hover:after,
.modal__close:hover:before {
  background: #aaa;
}

.modal__close:before {
  transform: rotate(-45deg);
}

@media screen and (max-width: 768px) {
	
  .modal__inner {
    width: 90%;
    height: 90%;
    box-sizing: border-box;
  }
}



/* Other
 * =============================== */
body {
  padding: 1%;
  font: 1/1.5em sans-serif;
  text-align: center;
}


.btn {
  cursor: pointer;
  background: #27ae60;
  display: inline-block;
  padding: .5em 1em;
  color: #fff;
  border-radius: 3px;
  background-color: #40391b;
  
}

/* 
 */
.btn--round {
 display: block;
  width: 100%;
  padding: 10px 0;
  font-size: 16px;
  position: relative;
  display: inline-block;
  height: 70px;
  overflow: visible;
  font-size: 16px;
  color: white;
  text-align:center;
  text-shadow: 0 -1px rgba(0, 0, 0, 0.4);
  background-clip: padding-box;
  background-color: #463f1e;
  border-radius: 2px;
  cursor: pointer;
  padding:20px;
 
  -webkit-box-shadow: inset 0 1px rgba(255, 255, 255, 0.1), inset 0 0 0 1px rgba(255, 255, 255, 0.08), 0 1px 2px rgba(0, 0, 0, 0.25);
  box-shadow: inset 0 1px rgba(255, 255, 255, 0.1), inset 0 0 0 1px rgba(255, 255, 255, 0.08), 0 1px 2px rgba(0, 0, 0, 0.25);
  
}

.btn:hover,
.btn:focus {
  background: #2ecc71;
}

.btn:active {
  background: #27ae60;
  box-shadow: 0 1px 2px rgba(0,0,0, .2) inset;
}

.btn--blue {
  background: #2980b9;
}

.btn--blue:hover,
.btn--blue:focus {
  background: #3498db;
}

.btn--blue:active {
  background: #2980b9;
}

p img {
  max-width: 200px;
  height: auto;
  float: left;
  margin: 0 1em 1em 0;
}

.button {
  position: relative;
  display: inline-block;
  vertical-align: top;
  height: 36px;
  line-height: 35px;
  padding: 0 20px;
  font-size: 13px;
  color: white;
  width:350px;
  text-align: center;
  text-decoration: none;
  text-shadow: 0 -1px rgba(0, 0, 0, 0.4);
  background-clip: padding-box;
  border: 1px solid;
  border-radius: 2px;
  cursor: pointer;
  -webkit-box-shadow: inset 0 1px rgba(255, 255, 255, 0.1), inset 0 0 0 1px rgba(255, 255, 255, 0.08), 0 1px 2px rgba(0, 0, 0, 0.25);
  box-shadow: inset 0 1px rgba(255, 255, 255, 0.1), inset 0 0 0 1px rgba(255, 255, 255, 0.08), 0 1px 2px rgba(0, 0, 0, 0.25);
}
.button:before {
  content: '';
  position: absolute;
  top: 0;
  bottom: 0;
  left: 0;
  right: 0;
  pointer-events: none;
  background-image: -webkit-radial-gradient(center top, farthest-corner, rgba(255, 255, 255, 0.08), rgba(255, 255, 255, 0));
  background-image: -moz-radial-gradient(center top, farthest-corner, rgba(255, 255, 255, 0.08), rgba(255, 255, 255, 0));
  background-image: -o-radial-gradient(center top, farthest-corner, rgba(255, 255, 255, 0.08), rgba(255, 255, 255, 0));
  background-image: radial-gradient(center top, farthest-corner, rgba(255, 255, 255, 0.08), rgba(255, 255, 255, 0));
}
.button:hover:before {
  background-image: -webkit-radial-gradient(farthest-corner, rgba(255, 255, 255, 0.18), rgba(255, 255, 255, 0.03));
  background-image: -moz-radial-gradient(farthest-corner, rgba(255, 255, 255, 0.18), rgba(255, 255, 255, 0.03));
  background-image: -o-radial-gradient(farthest-corner, rgba(255, 255, 255, 0.18), rgba(255, 255, 255, 0.03));
  background-image: radial-gradient(farthest-corner, rgba(255, 255, 255, 0.18), rgba(255, 255, 255, 0.03));
}
.button:active {
  -webkit-box-shadow: inset 0 1px 2px rgba(0, 0, 0, 0.2);
  box-shadow: inset 0 1px 2px rgba(0, 0, 0, 0.2);
}
.button:active:before {
  content: none;
}



.button-red {
  background: #d5452f;
  border-color: #ae3623 #ae3623 #992f1f;
  background-image: -webkit-linear-gradient(top, #da5c48, #d5452f 66%, #c73d28);
  background-image: -moz-linear-gradient(top, #da5c48, #d5452f 66%, #c73d28);
  background-image: -o-linear-gradient(top, #da5c48, #d5452f 66%, #c73d28);
  background-image: linear-gradient(to bottom, #da5c48, #d5452f 66%, #c73d28);
}


</style>

<body>

<div class="abc" align="right"  > 
<!--        <a href="index.jsp" class="btn btn-primary pull-right"  target="_blank" rel="noopener noreferrer" align="right" style="opacity:0.9; text-decoration:none;" >LOG OUT</a> 
 -->     <button class="btn btn-primary pull-right" onclick="window.location.href = 'logout.jsp';"> Log out </button>"
       </div > <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   
   <table>
  <tr>
  <td>   <div class="box" align="left">
  <br><br><br><br><br>
<a href="passwordreset.jsp" type="button" class="button btn" style="background-color:#d89c46"> Password Reset </a> <br> <br>
<a href="uploadpage.jsp" type="button" class="button btn" style="background-color:#d89c46"> Upload File </a>
   </div>
  </td>
  <td> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <div class="s130">
   
 
  <!--   <button value="de"></button>
  --> 
      <form>
     
      
        <div class="inner-form">
          <div class="input-field first-wrap">
            <div class="svg-wrapper">
              <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24">
                <path d="M15.5 14h-.79l-.28-.27C15.41 12.59 16 11.11 16 9.5 16 5.91 13.09 3 9.5 3S3 5.91 3 9.5 5.91 16 9.5 16c1.61 0 3.09-.59 4.23-1.57l.27.28v.79l5 4.99L20.49 19l-4.99-5zm-6 0C7.01 14 5 11.99 5 9.5S7.01 5 9.5 5 14 7.01 14 9.5 11.99 14 9.5 14z"></path>
              </svg>
              
            </div>
            <input id="search" type="text" placeholder="What are you looking for?" />
          </div>
          <div class="input-field second-wrap">
            <label class="btn--round" id ="search" for="modal-1">SEARCH</label>
          </div>
        </div>
        <!--<span class="info">Search Articles</span> -->
      </form>
    </div></td></tr></table>






<!--     <h1>HOLLA BACK YO!</h1>
<div>
  <p>You can place trigger button wherever you want.</p>
  <p>
    <label class="btn " for="modal-1">Click Here</label>
    <label class="btn btn--blue" for="modal-2">Click here for more</label>
  </p>
</div> -->


<input class="modal-state" id="modal-1" type="checkbox" />
<div class="modal">
  <label class="modal__bg" for="modal-1"></label>
  <div class="modal__inner">
    <label class="modal__close" for="modal-1"></label>
    <h2>Caaaats FTW!</h2>
    <p><img src="images/detective.png" alt="" /></p>
    <p id="desc"> Description comes here. </p>
    <div>
      <a href="#" class="button button-red">Download</a>
    </div>
  </div>
</div>

<!-- <input class="modal-state" id="modal-2" type="checkbox" />
<div class="modal">
  <label class="modal__bg" for="modal-2"></label>
  <div class="modal__inner">
    <label class="modal__close" for="modal-2"></label>
    <h2>Sleppy sloth</h2>
    <p><img src="portable.jpg" alt="" />Description about files uploaded by the user</p>
  </div>
</div> --> 
    <script src="js/extention/choices.js"></script>
</body>
</html>