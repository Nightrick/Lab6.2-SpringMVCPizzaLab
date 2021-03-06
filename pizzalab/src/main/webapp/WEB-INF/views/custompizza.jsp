<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Pizza your way!</title>
<link rel="stylesheet" href = "/style.css" />
</head>
<body>
<div class="header">
        <h1> Pizza your way!</h1>
<div class="topnav">
  	<a href="/">Home</a>
  	<a href="/specialtypizza/?name=Hawaiian Pizza&price=$19.59">Hawaiian Pizza</a>
  	<a href="/specialtypizza/?name=The Brush Special&price=$19.91">The Brush Special</a>
  	<a href="/specialtypizza/?name=Pandemic Pizza&price=$20.20">Pandemic Pizza</a>
  	<a class="active" href="/custompizza">Custom Pizza</a>
  	<a href="/review">Review Us</a>  
  </div>
</div>
<h2 class="customheader">Tell Charles E. Cheddar how you want your piping hot pizza pie!</h2>
<div class="reviewdetails">
	<c:forEach var="error" items="${errors}">

            <p>${error.defaultMessage}</p>

        </c:forEach>
</div>
<form class="form" method = "POST" action ="/custompizzaconfirmation">
<div class = "customsize">
<label for="customsize" >Size:</label>
<select name="size" id="customsize" class="customheader">
  <option value="Small">Small</option>
  <option value="Medium">Medium</option>
  <option value="Large">Large</option>
</select>
</div>
<br>
<div class="customtoppings"> 
<label for="toppings">Toppings (between 0-10):</label>
<input type="number" id="toppings" name="toppings" min="0" max="10" value=0>
</div>
<br>
<div class="customcrust">
<input type="checkbox" id="gluten-freecrust" name="specialCrust" value="true">
<label for="gluten-freecrust">Gluten-free Crust? ($2.00 extra)</label><br>
</div>
<br>
<div class="specialinstructions">

  Special Instructions:
<br>
<textarea name="specialInstructions" placeholder="Enter text here..."></textarea>
<br>
<label for="submit"></label><br>
  <input type="submit" id="submit" name="submit" ><br>
</div>
</form>
</body>
</html>