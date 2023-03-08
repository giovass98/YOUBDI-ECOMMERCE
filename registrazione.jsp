<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <link rel="stylesheet" type="text/css" href="css/youbdi.css">
    <link rel="stylesheet" type="text/css" href="/css/responsive.css">   
	<title>Registrazione</title>
</head>
<body>

<%@include file="header.jsp" %>	
<h1 id="scritta">Registrazione</h1>
	
<form action="Registrazione" method="post" name="registrazione" id="form">
  <div id="signlog">
    <p>Compila il form per creare un account.</p>

    <label for="username"><b>Username</b></label>
    <input type="text" placeholder="Username" name="username" required oninput ="controlloUsername()"  id="uno">

	<label for="nome"><b>Nome</b></label>
    <input type="text" placeholder="Nome" name="nome" required oninput="controlloNome()" id="due">
	
	<label for="cognome"><b>Cognome</b></label>
    <input type="text" placeholder="Cognome" name="cognome" required oninput="controlloCognome()" id="tre">

	<label for="codice"><b>Codice fiscale</b></label>
    <input type="text" placeholder="Codice fiscale" name="codice" required oninput="controlloCodice()" id="quattro">
	
	<label for="password"><b>Password</b></label>
    <input type="password" placeholder="Inserisci Password" name="password" required oninput="controlloPassword()" id="cinque">
	
    <label for="email"><b>Email</b></label>
    <input type="text" placeholder="Email" name="email" required oninput="controlloEmail()" id="sei">

    <label for="telefono"><b>Telefono</b></label>
    <input type="text" placeholder="Telefono" name="telefono" required oninput="controlloTelefono()" id="sette">
    
    <label for="nazionalita"><b>Nazionalita</b></label>
    <input type="text" placeholder="Nazionalita" name="nazionalita" required oninput="controlloNazione()" id="otto">

	<label for="provincia"><b>Provincia</b></label>
    <input type="text" placeholder="Provincia" name="provincia" required oninput="controlloProvincia()" id="nove">

	<label for="indirizzo"><b>Indirizzo</b></label>
    <input type="text" placeholder="Indirizzo" name="indirizzo" required oninput="controlloIndirizzo()" id="dieci">

 	<label for="n_civico"><b>Numero Civico</b></label>
    <input type="text" placeholder="Numero Civico" name="n_civico" required oninput=" controlloNumero()" id="unidici">

	<label for="cap"><b>Cap</b></label>
    <input type="text" placeholder="Cap" name="cap" required oninput="controlloCap()"  id="dodici">

	<label><b>Data di nascita</b></label>
    <input type="number" name="anno" min="1900" max="2018" placeholder="anno" oninput="controlloAnno()"  id="tredici">    
	<input type="number" name="mese" min="1" max="12" placeholder="mese" oninput="controlloMese()" id="quattordici">  
	<input type="number" name="giorno" min="1" max="31" placeholder="giorno" oninput="controlloGiorno()" id="quindici">
	<br>
	
	<label for="luogo_nascita"><b>Luogo di nascita</b></label>
    <input type="text" placeholder="Luogo di nascita" name="luogo_nascita" required oninput="controlloLuogo()" id="sedici">
		
	
    <input type="button" value="Registrati" name="invio" class="registerbtn" onclick="validazione();">
  </div>


  
  <div class="signlog signin">
    <p>Hai gi&agrave un account? <a href="login.jsp">Entra</a>.</p>
  </div>

</form>


 <%@ include file="footer.jsp" %>
<script src="script/jquery.js"></script>
<script src="script/Validazione.js"></script>
</body>
</html>