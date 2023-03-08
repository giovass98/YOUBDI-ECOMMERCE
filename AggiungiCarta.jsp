<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Aggiungi carta di credito</title>
</head>
<body>


<h1>Aggiungi carta di credito</h1>

<form action="AggiungiCarta" method="post" name="aggiungiCarta">
<p> Numero carta: <input type="text" name="numero_carta" oninput="controlloNumero()"> </p>
<p> Data di scadenza: <input type="number" name="anno" min="2018" max="2030" placeholder="anno"
                      oninput="controlloAnno()">    
                      <input type="number" name="mese" min="1" max="12" placeholder="mese"
                      oninput="controlloMese()">  
                      <input type="number" name="giorno" min="1" max="31" placeholder="giorno"
                      oninput="controlloGiorno()"> 
</p>
<p> Circuito: <select name="circuito">
<option value="Visa">Visa</option>
<option value="Mastercard">Mastercard</option>
</select> </p>
</select>
<p> Intestatario: <input type="text" name ="intestatario" oninput="controlloIntestatario()"> </p>
<p> <input type="submit" value="Aggiungi" name="invia" onclick="validazione()">
    <input type="reset" value="Cancella" name="reset">
</p>
</form>

<script src="script/ValidazioneAddCarta.js"></script>
</body>
</html>