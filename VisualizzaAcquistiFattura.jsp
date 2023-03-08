<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*,model.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Fattura <%=request.getParameter("id_fattura") %></title>
</head>
<body>

<%@ include file="header.jsp" %>


<h1> Fattura <%=request.getParameter("id_fattura") %> </h1>

<table>
<tr>
<th>Codice Prodotto</th>
<th>Id-fattura</th>
<th>Costo prodotto</th>
<th></th>
</tr>
<% ArrayList<Acquisto> acquisti=(ArrayList<Acquisto>)request.getAttribute("acquisti");
   double costo_totale=0.0;
   double iva=0.0;
   for(Acquisto c : acquisti)
   {
	   costo_totale=costo_totale+c.getCosto();
%>
    <tr>
    <td><%=c.getCodiceProdotto() %> </td>
    <td><%=c.getCodiceFattura() %> </td>
    <td><%=c.getCosto() %> </td>
    </tr>

<%
    } 
   iva=costo_totale/100*22;
   iva=iva*100;
   iva = Math.round(iva);
   iva=iva/100;
%>
</table>



<table>
    <tr>
    <th>Iva</th>
    <th>Costo totale</th>
    </tr>
    <tr>
    <td><%=iva %></td>
    <td><%=costo_totale %></td>
    </tr>
</table>


<%@ include file="footer.jsp" %>

</body>
</html>