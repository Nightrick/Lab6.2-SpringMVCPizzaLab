<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Leave a review</title>
<link rel="stylesheet" href = "/style.css" />
</head>
<body>
<div class="header">
  <h1> Tell us how we did!</h1>
   <div class="topnav">
  	<a href="/">Home</a>
  	<a href="/hawaiianpizza">Hawaiian Pizza</a>
  	<a href="/thebrushspecial">The Brush Special</a>
  	<a href="/pandemicpizza">Pandemic Pizza</a>
  	<a href="/custompizza">Custom Pizza</a>
  	<a class="active" href="/review">Review Us</a>  
   </div> 
</div>
<br><br><br>
<form class="form" method = "POST" action ="/reviewconfirmation"> 
  <label for="name">Name:</label><br>
  <input type="text" id="name" name="name"><br>
  
  <label for="comment">Comment:</label><br>
  <input type="text" id="comment" name="comment"><br>
  
  <label for="rating">Rating (out of 5 stars):</label><br>
  <input type="text" id="rating" name="rating"><br>
  
  <label for="submit">Submit</label><br>
  <input type="submit" id="submit" name="submit" ><br>
  
</form>
</body>
</html>