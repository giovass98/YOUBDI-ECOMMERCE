<%@ page import="java.util.*,model.* "%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>YouBdi Video</title>

  <link rel="stylesheet" type="text/css" href="css/youbdi.css">
    
 <script src="script/jquery.js" ></script>
</head>

<body>

<%@ include file="header.jsp" %>

<h1> Carrello </h1>

<table>
<tr>
<th>Codice prodotto</th>
<th>Nome</th>
<th>Prezzo</th>
<th>Descrizione</th>
<th></th>
</tr>

<% ArrayList<Film> films=(ArrayList<Film>)session.getAttribute("carrello");
   if(films!=null)
   {
   for(Film c : films)
   {
%>
    <tr>
    <td><%=c.getCodiceFilm() %></td>
    <td><%=c.getNome() %></td>
    <td><%=c.getPrezzo() %></td>
    <td><%=c.getDescrizione() %></td>
    <td><a href="RimuoviCarrello?codice_prodotto=<%=c.getCodiceFilm() %>">Rimuovi dal carrello</a></td>
    </tr>
<%
    } 
    }
%>
</table>


<form action="Acquista" method="post">
<%
   ArrayList<Carta> carte=(ArrayList<Carta>) session.getAttribute("carte");
   if(!carte.isEmpty())
   {
%>
	   <p> Seleziona carta: <select name="numero_carta">
<%
	   for(Carta c : carte)
       {
%>
            <option value="<%=c.getNumeroCarta()%>"> <%=c.getNumeroCarta() %> </option>
<% 
       }
%>
       </select> </p> 
<%
   }
   if(films!=null && !carte.isEmpty())
   {
%>
    <input type="submit" value="Acquista">
<%
   }
%>

</form>



<a href="MostraCarte">Aggiungi carta</a>
 <%@ include file="footer.jsp" %>
 <script  src="script/animation.js"></script>

</body>
</html>