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

<h1> Elenco films</h1>

<table>
<tr>
<th>Codice film</th>
<th>Nome</th>
<th>Prezzo</th>
<th>Descrizione</th>
</tr>

<%
@SuppressWarnings("unchecked")
ArrayList<Film> films=(ArrayList<Film>)session.getAttribute("films");
   for(Film c : films)
   {
%>
    <tr class="elencofilmsAdmin">
    <td><%=c.getCodiceFilm() %></td>
    <td><%=c.getNome() %></td>
    <td><%=c.getPrezzo() %></td>
    <td><%=c.getDescrizione() %></td>
    </tr>
<%
    } 
%>
</table>

<form action="AddFilm" method="post" name="addFilm">
  <div class="signlog">
    <h1>Aggiungi film</h1>
    <hr>	
 	<label for="codice"><b>Codice  </b></label> 	
    <input type="text"  placeholder="Inserisci Codice" name="codice" required>
	
	<label for="nome"><b>Nome </b></label>
    <input type="text" placeholder="Inserisci Nome" name="nome" required>
	
	<label for="prezzo"><b>Prezzo  </b></label>
    <input type="text" placeholder="Inserisci Prezzo" name="prezzo" required>
	
	<label for="descrizione"><b>Descrizione  </b></label>
    <input type="text" placeholder="Inserisci Descrizione" name="descrizione" required>
	
	<label for="immagine"><b>Poster  </b></label>
    <input type="text" placeholder="Inserisci URL Immagine" name="immagine" required>
	
	<p> Tipo: <select name="tipo">
	<option value="Film">Film</option>
	<option value="Serie">Serie Tv</option>
	<option value="Merch">Merch</option>
	</select> </p>
	
    <button type="submit" value="aggiungi" name="invio" class="registerbtn">Invio</button>
    
    <input type="reset" value="reset" name="reset" class="resetbtn">
  </div>

<p>
</form>



<a href="LogoutAdmin">Logout</a>

<%@ include file="footer.jsp" %>

<script src="script/ValidazioneAddfilm.js"></script>

</body>
</html>