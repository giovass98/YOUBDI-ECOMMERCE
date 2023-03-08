<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import="model.*"
    %>

<html>
<head>
  	<link rel="stylesheet" type="text/css" href="css/youbdi.css">
	<link rel="stylesheet" type="text/css" href="css/responsive.css"> 
 	<script src="script/jquery.js" ></script>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

 <nav>
       <div>
           <h1><a href="TuttiProdotti"><img id="logo" src="logo_vassa.png" alt="logo"> </a></h1>
       </div>
       
       <ul>
            <li><a href="SezioneTipoProdotto?tipo=Film">Film</a></li>
            <li><a href="SezioneTipoProdotto?tipo=Serie">Serie Tv</a></li>
            <li><a href="SezioneTipoProdotto?tipo=Merch">Merch</a></li>
            <li><a href="Carrello">Carrello</a></li>
            <li><a href="AreaUtente.jsp">Area Utente</a></li>
        </ul>
       
 </nav>
	
	<div>
 
 <%  if (session.getAttribute("utente") != null) { %>
           <% Cliente currentUser = (Cliente) session.getAttribute("utente"); %>
		  <h1>   Benvenuto <%= currentUser.getNome()  %>!</h1>
 <% }%>

	</div>
	
</body>
</html>