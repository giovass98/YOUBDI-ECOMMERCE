<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*,model.* "%>    
    
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"  type="text/css" href="css/youbdi.css">

<script src="script/jquery.js" ></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<body>

<%@ include file="header.jsp" %>



<%
Film film= (Film) session.getAttribute("prodotto");

%>
    <h1 style="font-size:150%;"><%=film.getNome()%></h1> 

	<div class="row">
				<a class="videoButton">
					<img class="ciccio" src="<%=film.getImmagine()%>">
				</a>		
		</div>

	<br>
	<a href="AddCarrello?codice_prodotto=<%=film.getCodiceFilm()%>" class="myButton">Aggiungi al Carrello: <%=film.getPrezzo()%>&euro;</a>
	<div class="trama">
	<h3>DESCRIZIONE:</h3> <p><%=film.getDescrizione()%></p>
	</div>


<%@ include file="footer.jsp" %>


</body>
</html>