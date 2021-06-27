<html>
<head> 
<title> Howdy </title>
</head>
<style>

@charset "UTF-8";
@import url(https://fonts.googleapis.com/css?family=Open+Sans:300,400,700);

body {
  font-family: 'Open Sans', sans-serif;
  font-weight: 300;
  line-height: 1.42em;
  color:#A7A1AE;
  background-color:#1F2739;
}

h1 {
  font-size:3em; 
  font-weight: 300;
  line-height:1em;
  text-align: center;
  color: #4DC3FA;
}

h2 {
  font-size:1em; 
  font-weight: 300;
  text-align: center;
  display: block;
  line-height:1em;
  padding-bottom: 2em;
  color: #FB667A;
}

h2 a {
  font-weight: 700;
  text-transform: uppercase;
  color: #FB667A;
  text-decoration: none;
}

.blue { color: #185875; }
.yellow { color: #FFF842; }

.container th h1 {
	  font-weight: bold;
	  font-size: 1em;
  text-align: left;
  color: #185875;
}

.container td {
	  font-weight: normal;
	  font-size: 1em;
  -webkit-box-shadow: 0 2px 2px -2px #0E1119;
	   -moz-box-shadow: 0 2px 2px -2px #0E1119;
	        box-shadow: 0 2px 2px -2px #0E1119;
}

.container {
	  text-align: left;
	  overflow: hidden;
	  width: 80%;
	  margin: 0 auto;
  display: table;
  padding: 0 0 8em 0;
}

.container td, .container th {
	  padding-bottom: 2%;
	  padding-top: 2%;
  padding-left:2%;  
}

/* Background-color of the odd rows */
.container tr:nth-child(odd) {
	  background-color: #323C50;
}

/* Background-color of the even rows */
.container tr:nth-child(even) {
	  background-color: #2C3446;
}

.container th {
	  background-color: #1F2739;
}

.container td:first-child { color: #FB667A; }

.container tr:hover {
   background-color: #464A52;
-webkit-box-shadow: 0 6px 6px -6px #0E1119;
	   -moz-box-shadow: 0 6px 6px -6px #0E1119;
	        box-shadow: 0 6px 6px -6px #0E1119;
}

.container td:hover {
  background-color: #FFF842;
  color: #403E10;
  font-weight: bold;
  
  box-shadow: #7F7C21 -1px 1px, #7F7C21 -2px 2px, #7F7C21 -3px 3px, #7F7C21 -4px 4px, #7F7C21 -5px 5px, #7F7C21 -6px 6px;
  transform: translate3d(6px, -6px, 0);
  
  transition-delay: 0s;
	  transition-duration: 0.4s;
	  transition-property: all;
  transition-timing-function: line;
}

@media (max-width: 800px) {
.container td:nth-child(4),
.container th:nth-child(4) { display: none; }
}

@import url(https://fonts.googleapis.com/css?family=Open+Sans:400,400italic,600,600italic,700italic);

*{margin: 0px; padding: 0px}

body{
  background:#2c3e50;
  font-family: 'Open Sans', sans-serif;
}

h1, button{
  color:#fff;
  text-align: center;
  padding: 20px;
  align:center;
}

p{
  color:#fff;
  text-align: center;
  padding-top: 500px;
  font-size: 10px;
}

a{
   text-decoration:none;
   color:#fff;
}

a:hover{
   color:#2ecc71;
}

.main{
  width: 100%;
}

.sub-main{
  width: 30%;
  margin:22px;
  float: right;
}

.button-one, .button-two, .button-three{
  text-align: center;
  cursor: pointer;
  font-size:24px;
  margin: 0 0 0 100px;
}



/*Button One*/
.button-one {
  padding:20px 60px;
  outline: none;
  background-color: #27ae60;
  border: none;
  border-radius:5px;
  box-shadow: 0 9px #95a5a6;
}

.button-one:hover{
  background-color: #2ecc71;
}

.button-one:active {
  background-color: #2ecc71;
  box-shadow: 0 5px #95a5a6;
  transform: translateY(4px);
}


/*Button Two*/
.button-two {
  border-radius: 4px;
  background-color:#d35400;
  border: none;
  padding: 20px;
  width: 200px;
  transition: all 0.5s;
}


.button-two span {
  cursor: pointer;
  display: inline-block;
  position: relative;
  transition: 0.5s;
}

.button-two span:after {
  content: '»';
  position: absolute;
  opacity: 0;
  top: 0;
  right: -20px;
  transition: 0.5s;
}

.button-two:hover span {
  padding-right: 25px;
}

.button-two:hover span:after {
  opacity: 1;
  right: 0;
}


/*Button Three*/
a.button-three {
    position: relative;
    background-color: #f39c12;
    border: none;
    padding: 20px;
    width: 200px;
    text-align: center;
    -webkit-transition-duration: 0.4s; /* Safari */
    transition-duration: 0.4s;
    text-decoration: none;
    overflow: hidden;
    align:right;
}

a.button-three:hover{
   background:#fff;
   box-shadow:0px 2px 10px 5px #97B1BF;
   color:#000;
}

a.button-three:after {
    content: "";
    background: #f1c40f;
    display: block;
    position: absolute;
    padding-top: 300%;
    padding-left: 350%;
    margin-left: -20px !important;
    margin-top: -120%;
    opacity: 0;
    transition: all 0.8s
}

a.button-three:active:after {
    padding: 0;
    margin: 0;
    opacity: 1;
    transition: 0s
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

.button-green {
  background: #5ca934;
  border-color: #478228 #478228 #3c6f22;
  background-image: -webkit-linear-gradient(top, #69c03b, #5ca934 66%, #54992f);
  background-image: -moz-linear-gradient(top, #69c03b, #5ca934 66%, #54992f);
  background-image: -o-linear-gradient(top, #69c03b, #5ca934 66%, #54992f);
  background-image: linear-gradient(to bottom, #69c03b, #5ca934 66%, #54992f);
}
.button-green:active {
  background: #5ca934;
  border-color: #3c6f22 #478228 #478228;
}

.button-red {
  background: #d5452f;
  border-color: #ae3623 #ae3623 #992f1f;
  background-image: -webkit-linear-gradient(top, #da5c48, #d5452f 66%, #c73d28);
  background-image: -moz-linear-gradient(top, #da5c48, #d5452f 66%, #c73d28);
  background-image: -o-linear-gradient(top, #da5c48, #d5452f 66%, #c73d28);
  background-image: linear-gradient(to bottom, #da5c48, #d5452f 66%, #c73d28);
}
.button-red:active {
  background: #d5452f;
  border-color: #992f1f #ae3623 #ae3623;
}


</style>

<body>

 <div class="sub-main">
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
     <a href="#" class="button-three">HOME</a>
    </div>
<h1><span class="blue" style="float:center;"></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
Articles<span class="blue"></span> <span class="yellow">Table</span></h1>


<table class="container">
	<thead>
		<tr>
			<th><h1>File Name</h1></th>
			<th><h1>File Type</h1></th>
			<th><h1>User</h1></th>
			<th><h1>Download</h1></th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td>Assassin's Creed</td>
			<td>PRIVATE</td>
			<td>Emi</td>
			<td><a href="#" class="button button-red">Download</a></td>
			 
		</tr>
		<tr>
			<td>Alice in Wonderland</td>
			<td>PUBLIC</td>
			<td>Emi</td>
			<td><a href="#" class="button button-red">Download</a></td>
		</tr>
		<tr>
			<td>Lord of the Rings</td>
			<td>PRIVATE</td>
			<td>Taki</td>
			<td><a href="#" class="button button-red">Download</a></td>
		</tr>
    <tr>
			<td>A Song of Ice and Fire</td>
			<td>PUBLIC</td>
			<td>Constantine</td>
			<td><a href="#" class="button button-red">Download</a></td>
		</tr>
    <tr>
			<td>Harry Potter</td>
			<td>PRIVATE</td>
			<td>Taki</td>
			<td><a href="#" class="button button-red">Download</a></td>
		</tr>
    <tr>
			<td>Animal Farm</td>
			<td>PUBLIC</td>
			<td>Emi</td>
			<td> <a href="#" class="button button-red">Download</a></td>
		</tr>
	</tbody>
</table>
</body>
</html>

