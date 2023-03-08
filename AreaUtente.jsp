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

<%  if (session.getAttribute("utente") != null) { %>
					<div> <a href="MenuUtente.jsp">Menu Utente</a> </div>
					<div> <a href="VisualizzaFattureUtente">Storico acquisti</a> </div>
					<div> <a href="MostraCarte">Carte di credito</a> </div>
					<div> <a href="EliminaRegistrazione">Cancellare registrazione</a> </div>
					<div> <a href="Logout">Logout</a> </div>     			
					<% } else {   %>
                            <li>Se hai un account, effettua il <a href="login.jsp">login</a>!</li>
							<li>Altrimenti, <a href="registrazione.jsp">registrati</a>!</li>
     			<% } %>	

 <%@ include file="footer.jsp" %>
 
 
 
</body>
</html>