<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*,model.* "%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Elenco fatture</title>
</head>
<body>

<%@ include file="header.jsp" %>

<h1> Fatture </h1>

<table>
<tr>
<th>Id-fattura</th>
<th>Numero carta</th>
<th>Quantità</th>
<th>Iva</th>
<th>Totale</th>
<th>Data acquisto</th>
<th></th>
</tr>
<% ArrayList<Fattura> fatture=(ArrayList<Fattura>)request.getAttribute("fatture");
   for(Fattura c : fatture)
   {
%>
    <tr>
    <td><%=c.getIdFattura() %></td>
    <td><%=c.getNumeroCarta() %></td>
    <td><%=c.getQuantità() %></td>
    <td><%=c.getIva() %></td>
    <td><%=c.getTotale() %></td>
    <td><%=c.getDataAcquisto() %></td>
    <td><a href="VisualizzaProdottiFattura?id_fattura=<%=c.getIdFattura() %>" >Visualizza fattura</a></td>
    </tr>
<%
    } 
%>
</table>

<%@ include file="footer.jsp" %>

</body>
</html>