<%-- 
    Document   : CambioContraseña
    Created on : 8/03/2024, 3:31:33 p. m.
    Author     : OTEROTKD
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
 <%@page import="Controller.CambioContraseña" %>
 
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cambiar Contraseña</title>
    </head>
    <body>
       
        <h1>Para Cambiar su Contraseña Ingrese los datos Acá</h1>
        <form action="CambioContraseña" method="post">
            <input type="text"placeholder="Contraseña Antigua"name="contraseña"/>
            <input type="text"placeholder="Nueva Contraseña" name="nuevaContraseña"/>
                      
            <input type="submit" value="Cambiar Contraseña" />
        </form>
    </body>
</html>
