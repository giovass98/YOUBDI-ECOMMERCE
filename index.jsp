<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*,model.*, java.sql.SQLException, java.io.IOException, java.util.ArrayList"%>
    
<!DOCTYPE html>
<html>
<head>
<title>YouBdi Video</title>
<meta charset="ISO-8859-1">
  	<link rel="stylesheet" type="text/css" href="css/youbdi.css">
	<link rel="stylesheet" type="text/css" href="css/responsive.css"> 
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>   
</head>
<body>
<%@ include file="header.jsp" %>

<div id="videoSection">

		<h1>Film disponibili oggi: </h1>
		<%
		ArrayList<Film> films=(ArrayList<Film>)request.getAttribute("film");
		int i=0;
		%>
		<% if(i%5==0){ %>
		<div class="row">
		<%} %>
		
		
		<%
   		for(Film c : films)
  		{
		%>
				<a href="VisualizzaProdotto?codice_film=<%=c.getCodiceFilm() %>" class="videoButton">
					<img class="ciccio" src="<%=c.getImmagine()%>">
				</a>		
		<%
    	i++;}
		%>
		</div>
			
			
			
			
		<h1>Serie disponibili oggi: </h1>
		<%
		ArrayList<Film> serie=(ArrayList<Film>)request.getAttribute("serie");
		i=0;
		%>
		<% if(i%5==0){ %>
		<div class="row">
		<%} %>
		
		
		<%
   		for(Film c : serie)
  		{
		%>
				<a href="VisualizzaProdotto?codice_film=<%=c.getCodiceFilm() %>" class="videoButton">
					<img class="ciccio" src="<%=c.getImmagine()%>">
				</a>		
		<%
    	i++;}
		%>
		</div>
		
		
		<h1>Merchandise disponibile oggi: </h1>
		<div>
 		<ul id="merch" >
 		<%
		ArrayList<Film> merch=(ArrayList<Film>)request.getAttribute("merch");
   		for(Film c : merch)
  		{
		%>
 		<li>
 		<p style="color:#efc10a;font-family:arial;font-size:100%"><%=c.getNome()%></p>
 				<img src="<%=c.getImmagine()%>" width="20%" height="20%">
 		<a href="VisualizzaProdotto?codice_film=<%=c.getCodiceFilm() %>" class="myButton3">Compra Ora <%=c.getPrezzo() %> &euro;</a>
		</li>
		<%}%>
		</ul>
 		</div>			
</div>
<script>
$('.ciccio').mouseenter(function() 
       {
       
          $(this).css("cursor","pointer");
           $(this).animate({width: "80%", height: "80%"}, 'slow');


       });
    
    $('.ciccio').mouseleave(function()
      {   
          $(this).animate({width: "60%", height: "60%"}, 'slow');
   });
</script>


<%@ include file="footer.jsp" %>


</body>
</html>