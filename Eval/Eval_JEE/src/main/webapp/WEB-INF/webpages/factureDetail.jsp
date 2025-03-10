<%@page import="fr.epsi.entite.Facture"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Facture ${facture.numero}</title>
	<%@include file="commons/header.jsp" %>
</head>
<body>
<div class="container">
	<%@include file="commons/menu.jsp" %>
  
  	
  	<h1>Facture n� <% 
		Facture f = (Facture) request.getAttribute("facture");
  		if(f != null) out.println(f.getNumero());
  	%></h1>
  	
  	<div style="float:left;">
  		<p>Date de Facturation : <% if(f != null) out.print(f.getDate()); %></p>
  		<p>Num�ro de Facture : <% if(f != null) out.print(f.getNumero()); %></p>
  	</div>
  	<div style="float:right;">
  		<p><% if(f != null) out.print(f.getClient().getNom()); %></p>
  		<p><% if(f != null) out.print(f.getClient().getAdresse()); %></p>  		
  	</div>
  	
  	<table>
        <tr style="font-weight:bold; background-color:lightblue;">
            <th scope="col">Article</th>
            <th scope="col">Quantit�</th>
            <th scope="col">Prix</th>
        </tr>
 			<c:forEach items="${facture.ligneFactures}" var="lf">
		<tr>
			<td><c:out value="${lf.article.nom}"/></td>
			<td><c:out value="${lf.qte}"/></td>
			<td><c:out value="${lf.prix}"/></td>
		<tr>
		</c:forEach>
		<tr>
			<td></td>
			<td>Total</td>
			<td>${facture.prix}</td>
		</tr>
	</table>
</div>
</body>
</html>