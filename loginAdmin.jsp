<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"  type="text/css" href="css/youbdi.css">

<script src="script/jquery.js" ></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login admin</title>
</head>
<body>

<%@ include file="header.jsp" %>

<h1>Effettuare l'accesso da amministratore</h1>

<form action="LoginAdmin" method="post" name="login">
  <div class="signlog">
    <h1>Login</h1>
    <hr>	
 	<label for="username"><b>Username Admin</b></label>
    <input type="text" placeholder="Inserisci Username" name="username" required>
	
	<label for="password"><b>Password</b></label>
    <input type="password" placeholder="Inserisci Password" name="password" required>
	
    
    <button type="submit" value="Login" name="invio" class="registerbtn">Accedi come Admin</button>
    
    <input type="reset" value="reset" name="reset" class="resetbtn">
  </div>

<p>
</form>
















<%@ include file="footer.jsp" %>

<script src="JS/ValidazioneLogin.js"></script>

</body>
</html>