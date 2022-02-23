<%-- 
    Document   : index
    Created on : 23 февр. 2022 г., 23:55:50
    Author     : LT.Mark
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.bundle.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <title>Calculadora</title>
</head>
<body>
<div class="container py-5">
    <form method="POST" action="calcular.do">
        <div class="form-row">
            <div class="col-6">
                <div class="form-group">
                    <label for="valor1">Valor 1:</label>
                    <input class="form-control" type="number" name="valor1" id="valor1"
                           placeholder="Ejemplo: 3.0"
                           required/>
                </div>
            </div>
            <div class="col-6">
                <div class="form-group">
                    <input type="hidden" name="operacion" id="operacion"/>
                    <label for="valor2">Valor 2:</label>
                    <input class="form-control" type="number" name="valor2" id="valor2"
                           placeholder="Ejemplo: 5.0"
                           required/>
                </div>
            </div>
        </div>
        <div class="form-row">
            <div class="col-2">
                <button data-destino="multiplication" class="btn btn-primary btn-block">multiplication&oacute;n</button>
            </div>
            <div class="col-2">
                <button data-destino="division" class="btn btn-primary btn-block">Division&oacute;n</button>
            </div>
            <div class="col-2">
                <button data-destino="resta" class="btn btn-primary btn-block">minus</button>
            </div>
            <div class="col-2">
                <button data-destino="suma" class="btn btn-primary btn-block">plus</button>
            </div>
            <div class="col-2">
                <button data-destino="residuo" class="btn btn-primary btn-block">razdel</button>
            </div>
        </div>
    </form>
</div>
</body>
</html>
