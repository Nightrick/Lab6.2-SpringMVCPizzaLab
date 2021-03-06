<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Specialty Pizza</title>
<link rel="stylesheet" href = "/style.css" />
</head>
<body>
<div class="header">
  <h1> ${name}!</h1>
  <div class="topnav">
  	<a href="/">Home</a>
  	<c:if test = "${name == 'Hawaiian Pizza'}">
         <a class = "active" href = "/specialtypizza/?name=Hawaiian Pizza&price=$19.59">Hawaiian Pizza</a>
         <a href = "/specialtypizza/?name=The Brush Special&price=$19.91">The Brush Special</a>
         <a href = "/specialtypizza/?name=Pandemic Pizza&price=$20.20">Pandemic Pizza</a>
      </c:if>
      <c:if test = "${name == 'The Brush Special'}">
         <a href = "/specialtypizza/?name=Hawaiian Pizza&price=$19.59">Hawaiian Pizza</a>
         <a class = "active" href = "/specialtypizza/?name=The Brush Special&price=$19.91">The Brush Special</a>
         <a href = "/specialtypizza/?name=Pandemic Pizza&price=$20.20">Pandemic Pizza</a>
      </c:if>
      <c:if test = "${name == 'Pandemic Pizza'}">
         <a href = "/specialtypizza/?name=Hawaiian Pizza&price=$19.59">Hawaiian Pizza</a>
         <a href = "/specialtypizza/?name=The Brush Special&price=$19.91">The Brush Special</a>
         <a class = "active" href = "/specialtypizza/?name=Pandemic Pizza&price=$20.20">Pandemic Pizza</a>
      </c:if>
  	<a href="/custompizza">Custom Pizza</a>
  	<a href="/review">Review Us</a>  
  </div>
</div>
<div class="specialtypizzainfo">
	
<c:choose>
         
         <c:when test = "${name == 'Hawaiian Pizza'}">
            <img src="../hawaiianpizza.jpg" alt="Hawaiian Pizza" width="350" height="250" class="pizzaimages">
         </c:when>
         <c:when test = "${name == 'Pandemic Pizza'}">
            <img src="../pandemicpizza.png" alt="Pandemic Pizza" width="350" height="250" class="pizzaimages">
         </c:when>
          <c:when test = "${name == 'The Brush Special'}">
            <img src="../thebrushspecial.jpg" alt="The Brush Special" width="350" height="250" class="pizzaimages">
         </c:when>
        
      </c:choose>
	
    <p>Name: ${name}</p>
    <p>Price: ${price}</p> 
</div>

</body>
</html>