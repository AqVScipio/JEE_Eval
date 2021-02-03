<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Nouvel article</title>
	<%@include file="commons/header.jsp" %>
</head>
<body>
<div class="container">
	<%@include file="commons/menu.jsp" %>
  
  	<h1>Nouvel article</h1>
  	
  	<form action="articles" method="post">
		<label for="nomArticle">Nom de l'article :</label> <input type="text"  name="nomArticle">
		<label for="prixArticle">Prix unitaire :</label> <input type="text"  name="prixArticle">
		
		<input type="submit" value="Valider" />
	</form>
</div>
</body>
</html>