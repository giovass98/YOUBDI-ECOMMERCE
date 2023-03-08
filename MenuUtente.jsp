<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import="model.*"
    %>

<html>
<head>
<meta charset="ISO-8859-1">
<title>YouBdi Video</title>

<link rel="stylesheet" type="text/css" href="css/youbdi.css">

</head>
<body>

<%@ include file="header.jsp" %>

<h1>Il mio account</h1>

 
  <% Utente currentUser = (Utente ) session.getAttribute("utente"); %>
  
  
     <h2>   Username <%= currentUser.getUsername()   %></h2> 
     
     <h2>   Nome: <%= currentUser.getNome()   %></h2> 
   
	 <h2>   Cognome: <%= currentUser.getCognome()   %></h2> 
	
     <h2>   Codice fiscale: <%= currentUser.getCodiceFiscale()   %></h2> 

	 <h2>   Email: <%= currentUser.getEmail()   %></h2>

     <h2>   Telefono: <%= currentUser.getTelefono()   %></h2>
     
	 <h2>   Nazionalità: <%= currentUser.getNazionalità()   %></h2>
   
     <h2>   Provincia: <%= currentUser.getProvincia()   %></h2>
 
     <h2>   Indirizzo: <%= currentUser.getIndirizzo()   %></h2>

     <h2>   Numero Civico: <%= currentUser.getNumeroCivico()   %></h2>

     <h2>   Cap: <%= currentUser.getCap()   %></h2>
     
     <h2>   Data di nascita: <%= currentUser.getDataNascita()   %></h2>

     <h2>   Luogo di nascita: <%= currentUser.getLuogoNascita()   %></h2>
     
     
 <%@ include file="footer.jsp" %>

</body>
</html>