<%-- 
    Document   : capturaBorrado
    Created on : 17/02/2024, 4:35:23 p. m.
    Author     : OTEROTKD
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Borrar Usuario</title>
    </head>
    <body>
        <%@page import="Controller.borraUsuario" %>
        <h1>Ingrese la Cedula del usuario  a Borrar</h1>
        <form action="borraUsuario" method="post">
            <table border="0">
                <thead>
                    <tr>
                        <th>CEDULA</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td><input type="text" name="cedula"></td>
                    </tr>
                </tbody>
            </table>
            <input type="reset" value="BORRAR">
            <input type="submit" value="BORRAR USUARIO">
        </form>
        <form action="inicioSistema.jsp">
            <input type="submit" value="Regresar"/>
        </form>
        
        
    </body>
</html>
