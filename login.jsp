<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <link rel="stylesheet" type="text/css" href="css/youbdi.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<title>Login</title>
</head>
<body>

<%@include file="header.jsp" %>	

<h1>Effettuare l'accesso</h1>

<form action="Login" method="post" name="login">
  <div class="signlog">
    <h1>Login</h1>
    <hr>	
 	<label for="username"><b>Username</b></label>
    <input type="text" placeholder="Inserisci Username" name="username" required oninput ="controlloUsername()">
	
	<label for="password"><b>Password</b></label>
    <input type="password" placeholder="Inserisci Password" name="password" required oninput="controlloPassword()">
	
    <button type="submit" value="Registrati" name="invio" class="registerbtn">Accedi</button>
    
    <input type="reset" value="reset" name="reset" class="resetbtn">
  </div>

<p>
</form>


<script>
$( "input" ).focus(function() {
	 $("input").focus(function(){
	        $(this).css("background-color", "#cc6699");
	    });
	    $("input").blur(function(){
	        $(this).css("background-color", "#ffffff");
	    });
});
</script>


<%@include file="footer.jsp" %>	
<script src="script/ValidazioneLogin.js"></script>
	


</body>
</html>