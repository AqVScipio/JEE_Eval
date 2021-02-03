<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Articles</title>
	<%@include file="commons/header.jsp" %>
</head>
<body>
<div class="container">
	<%@include file="commons/menu.jsp" %>
  
  	<h1>Liste des articles</h1>
  	
  	<table>
        <tr style="font-weight:bold; background-color:lightblue;">
            <th scope="col">Nom</th>
            <th scope="col">Prix</th>
        </tr>
 			<c:forEach items="${articles}" var="item">
		<tr>
			<td><c:out value="${item.nom}"/></td>
			<td><c:out value="${item.prix}"/></td>
		<tr>
		</c:forEach>
	</table>
  
	<a class="btn btn-primary" style="float:right;" href="articles?action=create">Ajouter un article</a>
</div>
</body>
</html>