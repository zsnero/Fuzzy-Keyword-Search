<html>
<head>
<title>Wild Card</title>
</head>
<style>
* {
  padding: 0;
  margin: 0;
}

body {
  background-color: #f4f7f8;
  font-size: 18px;
  line-height: 1.3;
}

.container {
  max-width: 700px;
  margin: 0 auto;
  height: 100vh;
  display: flex;
  align-items: center;
  justify-content: center;
}

.card {
   position: relative;
   margin: 20px;
}

.card-corner {
  
  &::before {
    content: '';
    width: 250px;
    height: 150px;
    max-height: 100%;
    position: absolute;
    background: #00a589;
    top: -10px;
    left: -10px;
    z-index: -1;
  }
  
  &::after {
    content: '';
    width: 250px;
    height: 150px;
    max-height: 100%;
    position: absolute;
    background: #fecb4e;
    bottom: -10px;
    right: -10px;
    z-index: -1;
  }
  
  
}

.card-connectors-top {
  &::before {
    content: '';
    position: absolute;
    background: #00a589;
    width: 20px;
    height: 5px;
    top: 40px;
    border-radius: 0 2.5px 2.5px 0;
  }
  
  &::after {
    content: '';
    position: absolute;
    background: #00a589;
    width: 5px;
    height: 20px;
    left: 40px;
    border-radius: 0 0 2.5px 2.5px;
  }
}

.card-connectors-bottom {
  &::before {
    content: '';
    position: absolute;
    background: #fecb4e;
    width: 5px;
    height: 20px;
    right: 40px;
    bottom: 0;
    border-radius: 2.5px 2.5px 0 0;
  }
  
  &::after {
     content: '';
      position: absolute;
      background: #fecb4e;
      width: 20px;
      height: 5px;
      bottom: 40px;
      right: 0;
      border-radius: 2.5px 0 0 2.5px
  }
}


.card-inner {
  background: #fff;
  padding: 3em;
  z-index: 2;
  
  .button-holder {
    width: 100%;
    text-align: center;
    margin-top: 20px;
  }
  
  .btn {
    display: inline-block;
    color: #fff;
    text-decoration: none;
    background: #0087af;
    padding: 10px 20px;
  }
}

.card h2 {
  margin-bottom: 10px;
}

</style>
<body>

<div class="container" style="text-align:center;">
  <div class="card">
    <div class="card-corner"></div>
    <div class="card-connectors-top"></div>
    <div class="card-connectors-bottom"></div>
    <div class="card-inner">
      <h2>Wild Card based search</h2>
      <p>In the above straightforward approach, all the variants of the keywords have to be listed even if an operation is performed at the same position. <br>Based on the above observation, we proposed to use an wildcard to denote edit operations at the same position.<br> The wildcard-based fuzzy set edits distance to solve the problems.
<br><br>a) Substitution :  changing one character to another in a  word;
<br>b) Deletion :  deleting one character from a word;
<br>c) Insertion:  inserting a single character into a word.
</p>
      
      
    </div>
    
  </div>
</div>


</body>
</html>