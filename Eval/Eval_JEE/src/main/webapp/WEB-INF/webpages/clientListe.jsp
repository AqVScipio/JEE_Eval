<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Clients</title>
	<%@include file="commons/header.jsp" %>
</head>
<body>
<div class="container">
	<%@include file="commons/menu.jsp" %>
  
	<h1>Liste des clients</h1>
	
	<table>
        <tr style="font-weight:bold; background-color:lightblue;">
            <th scope="col">Nom</th>
            <th scope="col">Adresse</th>
        </tr>
 			<c:forEach items="${clients}" var="item">
		<tr>
			<td><c:out value="${item.nom}"/></td>
			<td><c:out value="${item.adresse}"/></td>
		<tr>
		</c:forEach>
	</table>
  
	<a class="btn btn-primary" style="float:right;" href="clients?action=create">Ajouter un client</a>

</div>
</body>
</html>