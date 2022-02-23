<%-- 
    Document   : exit
    Created on : 23 февр. 2022 г., 23:56:00
    Author     : LT.Mark
--%>

<%@page import="kz.iitu.baurcalculator.Calculator" %>
<%
float res = 0;
Calculator cal = (Calculator)request.getSession().getAttribute("Calcul");
String operacion = cal.getOperacion();
if(operacion.equals("plus")){
    res = (cal.getValor1() + cal.getValor2());
}
else if(operacion.equals("minus")){
    res = cal.getValor1() - cal.getValor2();
}
else if(operacion.equals("multiplicacion")){
    res = cal.getValor1() * cal.getValor2();
}
else if(operacion.equals("division")){
    res = cal.getValor1() / cal.getValor2();
}
else if(operacion.equals("razdel")){
    res = cal.getValor1() % cal.getValor2();
}
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.bundle.min.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <title>Calculo exitoso</title>
    </head>
    <body>
        <div class="container py-5 text-center">
            <h3 class="text-center">El resultado de la <%= operacion %> es: <%= res %></h3>
            <a href="index.jsp">Volver</a>
        </div>
    </body>
</html>