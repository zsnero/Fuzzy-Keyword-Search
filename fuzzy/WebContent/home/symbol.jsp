<html>
<head>
<title>Symbol</title>
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
      <h2>Symbol based search</h2>
      <p>To enhance the search efficiency, we now propose a symbol-based trie-traverse search scheme, where a multi-way tree is constructed for storing the fuzzy keyword set over a finite symbol set.<br> The key idea behind this construction is that all trapdoors sharing a common prefix may have common nodes. The root is associated with an empty set and the symbols in a trapdoor can be recovered in a search from the root to the leaf that ends the trapdoor.<br> All fuzzy words in the trie can be found by a depth-first search.
	In this section, we consider a natural extension from the previous single-user setting to multi-user setting, where a data owner stores a file collection on the cloud server and allows an arbitrary group of users to search over his file collection.

</p>
      
      
    </div>
    
  </div>
</div>


</body>
</html>