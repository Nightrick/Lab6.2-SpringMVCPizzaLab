<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
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
  	<a href="/specialtypizza/?name=Hawaiian Pizza&price=$19.59">Hawaiian Pizza</a>
  	<a href="/specialtypizza/?name=The Brush Special&price=$19.91">The Brush Special</a>
  	<a href="/specialtypizza/?name=Pandemic Pizza&price=$20.20">Pandemic Pizza</a>
  	<a href="/custompizza">Custom Pizza</a>
  	<a class="active" href="/review">Review Us</a>  
  </div>
</div>
<br><br><br>
<div class = "reviewdetails">
	<c:forEach var="error" items="${errors}">

            <p>${error.defaultMessage}</p>

        </c:forEach>
</div>
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