<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>BrushPizzeria</title>
<link rel="stylesheet" href = "/style.css" />
</head>
<body>
<div class="header">
        <h1> Welcome to Brush Pizzeria!</h1>    
  <div class="topnav">
  	<a class="active" href="/">Home</a>
  	<a href="/specialtypizza/?name=Hawaiian Pizza&price=$19.59">Hawaiian Pizza</a>
  	<a href="/specialtypizza/?name=The Brush Special&price=$19.91">The Brush Special</a>
  	<a href="/specialtypizza/?name=Pandemic Pizza&price=$20.20">Pandemic Pizza</a>
  	<a href="/custompizza">Custom Pizza</a>
  	<a href="/review">Review Us</a>  
  </div>
</div>
<div>
<h5 class="homepageopeningline">Welcome to Brush Pizzeria, the home of Charles E. Cheddar!</h5>
<img class ="founderpic" src="cec.svg" alt="Charles E. Cheddar" width="350" height="250" class="pizzaimages">
<h5 class="homepageopeningline">Charles says, "Pizza pie is pretty fly!!!"</h5>
</div>
<div>
	<h3>Specialty Pizzas</h3>
	<ul>
        <li><a href="/hawaiianpizza">Hawaiian Pizza</a></li>
        <li><a href="/thebrushspecial">The Brush Special</a></li>
		<li><a href="/pandemicpizza">Pandemic Pizza</a></li>
    </ul>
</div>
<div>
	<h3>Custom Pizza</h3>
	<a href="/custompizza">Build your own pizza!</a>
</div>
<div>
	<h3>Leave a review</h3>
	<a href="/review">Click here to tell us how we did!</a>
</div>

</body>
</html>