<%@ page import="java.util.*,model.*"%>

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

	
	<%
	ArrayList<Film> films=(ArrayList<Film>) request.getAttribute("film");
	int i=0;
	if(!request.getAttribute("tipo").equals("Merch")){	
	%>
		
		<h1><%=request.getAttribute("tipo")%> disponibili oggi: </h1>
		
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
	<%
	}
	else{	
	%>	
			<h1>Merchandise disponibile oggi: </h1>
	
			<div>
 			<ul id="merch" >
 			<%
   			for(Film c : films)
  			{
			%>
 			<li>
 				<p style="color:#efc10a;font-family:arial;font-size:100%"><%=c.getNome()%></p>
 					<img src="<%=c.getImmagine()%>" width="20%" height="20%">
 				<a href="VisualizzaProdotto?codice_film=<%=c.getCodiceFilm() %>" class="myButton3">Compra Ora <%=c.getPrezzo() %> &euro;</a>
			</li>
 			<%
    		i++;}
			%>
 			</ul>
 			</div>
	<%}%>
		
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
 <script  src="script/animation.js"></script>

</body>
</html>
